; ModuleID = 'SchemaGrammar.cpp'
source_filename = "SchemaGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
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

$_ZN11xercesc_2_77GrammarC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

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

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

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
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_713SchemaGrammarE = dso_local constant [31 x i8] c"N11xercesc_2_713SchemaGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_713SchemaGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713SchemaGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
@_ZTVN11xercesc_2_77GrammarE = external unnamed_addr constant { [25 x ptr] }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1

@_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713SchemaGrammarD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !114
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %10, i8 0, i64 17, i1 false)
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %1) #14
          to label %13 unwind label %52

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv to i64), i64 0) #14
  %14 = load ptr, ptr %9, align 8, !tbaa !114
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %14) #14
          to label %16 unwind label %56

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef %17) #14
          to label %18 unwind label %60

18:                                               ; preds = %16
  store ptr %15, ptr %5, align 8, !tbaa !122
  %19 = load ptr, ptr %9, align 8, !tbaa !114
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %19) #14
          to label %21 unwind label %64

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %20, i32 noundef 109, i1 noundef zeroext false, i32 noundef 128, ptr noundef %22) #14
          to label %23 unwind label %66

23:                                               ; preds = %21
  store ptr %20, ptr %6, align 8, !tbaa !123
  %24 = load ptr, ptr %9, align 8, !tbaa !114
  %25 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %24) #14
          to label %26 unwind label %64

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %25, i32 noundef 109, i32 noundef 128, ptr noundef %27) #14
          to label %28 unwind label %68

28:                                               ; preds = %26
  store ptr %25, ptr %7, align 8, !tbaa !124
  %29 = load ptr, ptr %9, align 8, !tbaa !114
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %29) #14
          to label %31 unwind label %64

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %32) #14
          to label %33 unwind label %70

33:                                               ; preds = %31
  store ptr %30, ptr %8, align 8, !tbaa !125
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #14
          to label %34 unwind label %64

34:                                               ; preds = %33
  %35 = load ptr, ptr %9, align 8, !tbaa !114
  %36 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %35) #14
          to label %37 unwind label %64

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %36, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %38) #14
          to label %39 unwind label %72

39:                                               ; preds = %37
  store ptr %36, ptr %10, align 8, !tbaa !126
  %40 = load ptr, ptr %9, align 8, !tbaa !114
  %41 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %40) #14
          to label %42 unwind label %64

42:                                               ; preds = %39
  %43 = load ptr, ptr %9, align 8, !tbaa !114
  %44 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %43) #14
          to label %45 unwind label %74

45:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #14
          to label %46 unwind label %76

46:                                               ; preds = %45
  %47 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull %44, ptr noundef %47) #14
          to label %48 unwind label %74

48:                                               ; preds = %46
  store ptr %41, ptr %11, align 8, !tbaa !127
  %49 = load ptr, ptr %0, align 8, !tbaa !111
  %50 = getelementptr inbounds ptr, ptr %49, i64 20
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(160) %0) #14
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #15
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #15
  br label %80

68:                                               ; preds = %26
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #15
  br label %80

70:                                               ; preds = %31
  %71 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #15
  br label %80

72:                                               ; preds = %37
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #15
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #15
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi { ptr, i32 } [ %75, %74 ], [ %77, %76 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #15
  br label %80

80:                                               ; preds = %78, %72, %70, %68, %66, %64
  %81 = phi { ptr, i32 } [ %65, %64 ], [ %79, %78 ], [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ]
  %82 = extractvalue { ptr, i32 } %81, 0
  %83 = extractvalue { ptr, i32 } %81, 1
  %84 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = call ptr @__cxa_begin_catch(ptr %82) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
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
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void

94:                                               ; preds = %90, %80, %60, %56
  %95 = phi i32 [ %91, %90 ], [ %83, %80 ], [ %63, %60 ], [ %59, %56 ]
  %96 = phi ptr [ %92, %90 ], [ %82, %80 ], [ %62, %60 ], [ %58, %56 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #15
  br label %97

97:                                               ; preds = %94, %52
  %98 = phi i32 [ %95, %94 ], [ %55, %52 ]
  %99 = phi ptr [ %96, %94 ], [ %54, %52 ]
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %100 = insertvalue { ptr, i32 } poison, ptr %99, 0
  %101 = insertvalue { ptr, i32 } %100, i32 %98, 1
  resume { ptr, i32 } %101

102:                                              ; preds = %88
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #13
  unreachable

105:                                              ; preds = %86
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_77GrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) #3 align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !130

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %23, align 8, !tbaa !111
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %25) #14
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %30) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %30) #15
  br label %33

33:                                               ; preds = %32, %21
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !133
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %35) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %35) #15
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %40) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %40) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !135
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %45) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #15
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !136
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %50) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %50) #15
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !137
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %55) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %55) #15
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !125
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 8, !tbaa !111
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(16) %60) #15
  br label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !126
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !111
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(16) %68) #15
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %76 = load ptr, ptr %75, align 8, !tbaa !127
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %76) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %76) #15
  br label %79

79:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #6 comdat align 2 !prof !110 {
  store ptr %1, ptr %0, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !140
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !142
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !145
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !146
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !147
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !148
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !149
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !142
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #14
          to label %15 unwind label %19

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !150
  %16 = load i32, ptr %11, align 8, !tbaa !148
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !151

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !148
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 256, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %0, align 8, !tbaa !142
  %25 = zext i32 %22 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %24, align 8, !tbaa !111
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26) #14
  store ptr %30, ptr %23, align 8, !tbaa !152
  store ptr null, ptr %30, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !154
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !157
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !158
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !159

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !154
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 68, ptr noundef %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #12
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !111
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #14
  store ptr %22, ptr %5, align 8, !tbaa !160
  %23 = load i32, ptr %8, align 8, !tbaa !158
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !161

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !156
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !159

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !160
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !153
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !162, !llvm.loop !163

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !156
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !154
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !111
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #14
  store ptr %46, ptr %39, align 8, !tbaa !165
  store ptr null, ptr %46, align 8, !tbaa !153
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 !prof !110 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !166
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !168
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !169
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !170
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !171
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !172
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  store ptr %3, ptr %12, align 8, !tbaa !173
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !130

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !140
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !140
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !111
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !174
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(160) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !175 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #14
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 {
  tail call void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %8 = load ptr, ptr %0, align 8, !tbaa !111
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %15) #14
  %17 = load ptr, ptr %14, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %16, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %17) #14
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !114
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %23) #14
  %25 = load ptr, ptr %14, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %24, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %25) #14
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !129
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #15
  br label %38

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #15
  br label %38

31:                                               ; preds = %26, %18
  %32 = phi ptr [ %24, %26 ], [ %20, %18 ]
  %33 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %16) #14
  %34 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef %33, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %16) #14
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %16, i32 noundef %34) #14
  br label %35

35:                                               ; preds = %7, %31
  %36 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %37 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %36, ptr %6, align 1, !tbaa !177
  ret ptr %37

38:                                               ; preds = %29, %27
  %39 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 !prof !178 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !179

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !145, !range !180, !noundef !174
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !181
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !111
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #15
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !181
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !183
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !184
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !185
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !142
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = load i32, ptr %6, align 4, !tbaa !186
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !153
  call void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %35) #14
  %36 = load ptr, ptr %30, align 8, !tbaa !146
  %37 = load i32, ptr %6, align 4, !tbaa !186
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !153
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !149
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !148
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47, !prof !187

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  br label %73

50:                                               ; preds = %40
  %51 = uitofp i32 %43 to double
  %52 = fmul double %51, 1.500000e+00
  %53 = fptoui double %52 to i32
  %54 = load ptr, ptr %0, align 8, !tbaa !142
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !111
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56) #14
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !152
  %63 = load i32, ptr %44, align 8, !tbaa !148
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !142
  %67 = load ptr, ptr %61, align 8, !tbaa !152
  %68 = load ptr, ptr %66, align 8, !tbaa !111
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67) #14
  store ptr %60, ptr %61, align 8, !tbaa !152
  store i32 %53, ptr %44, align 8, !tbaa !148
  %71 = load i32, ptr %41, align 4, !tbaa !149
  %72 = add i32 %71, 1
  br label %73

73:                                               ; preds = %47, %50
  %74 = phi i32 [ %43, %47 ], [ %72, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %60, %50 ]
  store i32 %74, ptr %41, align 4, !tbaa !149
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %4, ptr %77, align 8, !tbaa !153
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %4, i32 noundef %74) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !192 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !193
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %9) #14
  %11 = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %10, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %11) #14
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !114
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %18) #14
  %20 = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %19, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %20) #14
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !129
  br label %29

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #15
  br label %33

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #15
  br label %33

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %13, %21, %26
  %30 = phi ptr [ %28, %26 ], [ %19, %21 ], [ %15, %13 ]
  %31 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %10) #14
  %32 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef %31, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %10) #14
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %10, i32 noundef %32) #14
  ret ptr %10

33:                                               ; preds = %24, %22
  %34 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !130

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %14) #14
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 0, ptr %15, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !196

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !149
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !146
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !197

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !198
  %21 = load i8, ptr %7, align 8, !tbaa !145, !range !180, !noundef !174
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !187

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !181
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !111
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #15
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !142
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #14
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !199, !llvm.loop !200

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !146
  %38 = load i32, ptr %2, align 8, !tbaa !147
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !153
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !201, !llvm.loop !202
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !158
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !203

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !157
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !160
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !204

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = load ptr, ptr %17, align 8, !tbaa !207
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !111
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %20) #15
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !154
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #14
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !208, !llvm.loop !209

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !160
  %34 = load i32, ptr %2, align 8, !tbaa !158
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !153
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !210, !llvm.loop !211
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !212 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !213

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !170
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !172
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !169
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !214
  %23 = load i8, ptr %9, align 8, !tbaa !168, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !216
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !111
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(80) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !166
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !217

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !169
  %40 = load i32, ptr %4, align 8, !tbaa !170
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !218

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !142
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  %6 = load ptr, ptr %3, align 8, !tbaa !111
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !142
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = load ptr, ptr %10, align 8, !tbaa !111
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #14
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !111
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !154
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  %13 = load ptr, ptr %10, align 8, !tbaa !111
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #14
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %3, align 8, !tbaa !111
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !111
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !176 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !111
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #15
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !126
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13putAnnotationEPvPNS_12XSAnnotationE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !170
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !172
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !168, !range !180, !noundef !174
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !216
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !111
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(80) %21) #15
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !216
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !223
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !166
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  %37 = load i32, ptr %4, align 4, !tbaa !186
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !153
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #14
  %41 = load ptr, ptr %35, align 8, !tbaa !169
  %42 = load i32, ptr %4, align 4, !tbaa !186
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !153
  %45 = load i32, ptr %9, align 8, !tbaa !172
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !172
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13addAnnotationEPNS_12XSAnnotationE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %1) #14
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %0, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !216
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0) #14
  invoke void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %0) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !176 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713SchemaGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_713SchemaGrammar18classSchemaGrammarE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  br i1 %3, label %6, label %30

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !122
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !135
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %25, i32 noundef 0, i1 noundef zeroext false) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %27 = load i8, ptr %26, align 8, !tbaa !194, !range !180, !noundef !174
  %28 = icmp ne i8 %27, 0
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %28) #14
  br label %42

30:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %31, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %32, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %33, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %34, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %35, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %36, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %37, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %38, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %39) #14
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %41 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %40) #14
  br label %42

42:                                               ; preds = %30, %6
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = load ptr, ptr %44, align 8, !tbaa !111
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #6 comdat align 2 !prof !176 {
  %2 = load i16, ptr %0, align 8, !tbaa !224
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 !prof !228 {
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !194, !range !180, !noundef !174
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 !prof !176 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !186
  br label %20

17:                                               ; preds = %10, %5
  %18 = phi ptr [ %8, %5 ], [ %13, %10 ]
  %19 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %18) #14
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ %16, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 !prof !176 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  br label %21

21:                                               ; preds = %10, %15, %19, %5
  %22 = phi ptr [ %8, %5 ], [ %13, %10 ], [ %20, %19 ], [ null, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 !prof !230 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21, !prof !231

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !232

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !232

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %2, i32 noundef %1, i32 noundef %4) #14
  br label %21

21:                                               ; preds = %10, %15, %19, %5
  %22 = phi ptr [ %8, %5 ], [ %13, %10 ], [ %20, %19 ], [ null, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1) #14
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1) #14
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !178 {
  br i1 %2, label %4, label %16, !prof !187

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10) #14
  %12 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !129
  br label %19

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  br label %19

19:                                               ; preds = %4, %13, %16
  %20 = phi ptr [ %18, %16 ], [ %11, %13 ], [ %6, %4 ]
  %21 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %22 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %23 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #14
  %24 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef nonnull %1) #14
  ret i32 %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #14
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SchemaGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 !prof !110 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 !prof !233 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !234 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !235 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !236 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 !prof !239 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %6 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !240

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #6 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !193
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 comdat align 2 !prof !241 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !147
  %10 = load ptr, ptr %0, align 8, !tbaa !142
  %11 = load ptr, ptr %7, align 8, !tbaa !111
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10) #14
  store i32 %13, ptr %4, align 4, !tbaa !186
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !146
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !242

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !184
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !243

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !185
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !244

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !150
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !183
  %33 = load ptr, ptr %30, align 8, !tbaa !111
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32) #14
  br i1 %36, label %41, label %37, !prof !245

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !153
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !246, !llvm.loop !247

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ null, %37 ], [ %21, %29 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !142
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 67, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  ret ptr %19
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !176 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !248
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !207
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !158
  %6 = load ptr, ptr %0, align 8, !tbaa !154
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #14
  store i32 %7, ptr %2, align 4, !tbaa !186
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !153
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !207
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %16) #14
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #14
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !251

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !252 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !253

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !254
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !255

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !254
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !256

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
  %23 = load i16, ptr %22, align 2, !tbaa !254
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !257, !llvm.loop !258

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !259 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !260

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !254
  %8 = load i16, ptr %1, align 2, !tbaa !254
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !261

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !262

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !254
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !263

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !264

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !254
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !265

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !266

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !254
  %28 = load i16, ptr %26, align 2, !tbaa !254
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !267, !llvm.loop !268

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !178 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !271 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !272
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !279
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !154
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !154
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = load i32, ptr %3, align 4, !tbaa !186
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #14
  %26 = load ptr, ptr %20, align 8, !tbaa !160
  %27 = load i32, ptr %3, align 4, !tbaa !186
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !153
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !157
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !156
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !165
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !154
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !111
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #14
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !165
  %52 = load i32, ptr %33, align 8, !tbaa !156
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !154
  %56 = load ptr, ptr %50, align 8, !tbaa !165
  %57 = load ptr, ptr %55, align 8, !tbaa !111
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #14
  store ptr %49, ptr %50, align 8, !tbaa !165
  store i32 %42, ptr %33, align 8, !tbaa !156
  %60 = load i32, ptr %30, align 4, !tbaa !157
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !157
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !153
  call void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %63) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !176 {
  store ptr %1, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !176 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !280
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = load ptr, ptr %0, align 8, !tbaa !166
  %9 = load ptr, ptr %5, align 8, !tbaa !111
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !186
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !169
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !173
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !223
  %23 = load ptr, ptr %20, align 8, !tbaa !111
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !153
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !281

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !151

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !142
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !142
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !147
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !111
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !146
  %21 = load i32, ptr %12, align 8, !tbaa !147
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !203

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !146
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !153
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !282, !llvm.loop !283
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 comdat align 2 !prof !178 {
  store ptr %4, ptr %0, align 8, !tbaa !181
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !198
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !183
  %9 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 8, !tbaa !184
  %10 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !284

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !166
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !166
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !170
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !111
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !169
  %21 = load i32, ptr %12, align 8, !tbaa !170
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !196

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !169
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !153
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !285, !llvm.loop !286
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !172
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !289
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !130

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !291
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !292
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !289
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.4", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !293
  %23 = load i8, ptr %9, align 8, !tbaa !295, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !296
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !111
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !287
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !297

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !289
  %40 = load i32, ptr %4, align 8, !tbaa !291
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !298

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !292
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !301
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !301
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !302
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !284

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !303
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !196

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !304
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !301
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !305

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.5", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !306
  %23 = load i8, ptr %9, align 8, !tbaa !308, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !309

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !310
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !111
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !299
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !311, !llvm.loop !312

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !301
  %40 = load i32, ptr %4, align 8, !tbaa !303
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !313, !llvm.loop !314

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !304
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !315
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !317
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !317
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !130

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !319
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !320
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !317
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !321
  %23 = load i8, ptr %9, align 8, !tbaa !323, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !324
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !111
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !315
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !325

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !317
  %40 = load i32, ptr %4, align 8, !tbaa !319
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !326

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !320
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !329
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !330
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !130

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !331
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !332
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !329
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.7", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !333
  %23 = load i8, ptr %9, align 8, !tbaa !335, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !336
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !111
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !327
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !337

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !329
  %40 = load i32, ptr %4, align 8, !tbaa !331
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !153
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !338

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !332
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br i1 %2, label %45, label %3, !prof !130

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !339
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !340
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !221
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !341
  %23 = load i8, ptr %9, align 8, !tbaa !343, !range !180, !noundef !174
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !344
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !219
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !345

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !221
  %37 = load i32, ptr %4, align 8, !tbaa !339
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !153
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !346

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !340
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !349
  %6 = load ptr, ptr %3, align 8, !tbaa !111
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !166
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = load ptr, ptr %2, align 8, !tbaa !111
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !169
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !170
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !166
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !111
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !170
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !169
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !169
  store i32 %5, ptr %3, align 8, !tbaa !170
  %23 = load ptr, ptr %0, align 8, !tbaa !166
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !169
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !153
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !214
  %38 = load ptr, ptr %18, align 8, !tbaa !173
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !223
  %41 = load ptr, ptr %0, align 8, !tbaa !166
  %42 = load ptr, ptr %38, align 8, !tbaa !111
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !153
  store ptr %48, ptr %36, align 8, !tbaa !214
  store ptr %35, ptr %47, align 8, !tbaa !153
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !350

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !170
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !351

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !176 {
  store ptr %2, ptr %0, align 8, !tbaa !216
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !214
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !176 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !354
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !176 {
  %2 = load ptr, ptr %0, align 8, !tbaa !352
  store ptr null, ptr %0, align 8, !tbaa !352
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %3 = load ptr, ptr %0, align 8, !tbaa !352
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !354
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !111
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !352
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !354
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!109}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!35 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77GrammarC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 7}
!39 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 4}
!49 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!50 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, i64 2}
!51 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!52 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev, i64 1}
!54 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, i64 1}
!55 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, i64 1}
!56 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev, i64 1}
!57 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714NamespaceScopeD1Ev, i64 1}
!58 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, i64 1}
!59 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev, i64 1}
!60 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 5}
!61 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!62 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!63 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!64 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!65 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!66 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!67 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!68 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj, i64 1}
!69 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev, i64 1}
!71 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!73 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_, i64 78}
!74 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 79}
!75 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!76 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 2}
!77 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 1}
!78 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv, i64 2}
!80 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!81 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!82 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, i64 1}
!83 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, i64 1}
!84 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, i64 1}
!85 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, i64 1}
!86 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, i64 1}
!87 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, i64 1}
!88 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, i64 1992716}
!89 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 79}
!90 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, i64 79}
!91 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv, i64 79}
!92 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, i64 79}
!93 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 1992715}
!94 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!95 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!96 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!97 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, i64 1}
!98 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv, i64 1}
!99 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!100 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv, i64 1}
!101 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!102 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv, i64 1}
!103 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, i64 1}
!104 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv, i64 1}
!105 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv, i64 1}
!106 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev, i64 52}
!107 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 52}
!108 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!110 = !{!"function_entry_count", i64 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !113, i64 0}
!113 = !{!"Simple C++ TBAA"}
!114 = !{!115, !118, i64 104}
!115 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !116, i64 0, !118, i64 8, !118, i64 16, !118, i64 24, !118, i64 32, !118, i64 40, !118, i64 48, !118, i64 56, !118, i64 64, !118, i64 72, !118, i64 80, !118, i64 88, !118, i64 96, !118, i64 104, !118, i64 112, !118, i64 120, !120, i64 128, !121, i64 136}
!116 = !{!"_ZTSN11xercesc_2_77GrammarE", !117, i64 0}
!117 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!118 = !{!"any pointer", !119, i64 0}
!119 = !{!"omnipotent char", !113, i64 0}
!120 = !{!"bool", !119, i64 0}
!121 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !117, i64 0, !118, i64 8, !118, i64 16}
!122 = !{!115, !118, i64 16}
!123 = !{!115, !118, i64 32}
!124 = !{!115, !118, i64 40}
!125 = !{!115, !118, i64 96}
!126 = !{!115, !118, i64 112}
!127 = !{!115, !118, i64 120}
!128 = !{!"function_entry_count", i64 4}
!129 = !{!115, !118, i64 24}
!130 = !{!"branch_weights", i32 2, i32 1}
!131 = !{!115, !118, i64 8}
!132 = !{!115, !118, i64 48}
!133 = !{!115, !118, i64 56}
!134 = !{!115, !118, i64 64}
!135 = !{!115, !118, i64 72}
!136 = !{!115, !118, i64 80}
!137 = !{!115, !118, i64 88}
!138 = !{!139, !118, i64 0}
!139 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEE", !118, i64 0, !119, i64 8}
!140 = !{!139, !119, i64 8}
!141 = !{!"function_entry_count", i64 5}
!142 = !{!143, !118, i64 0}
!143 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !118, i64 32, !118, i64 40, !144, i64 48, !144, i64 52}
!144 = !{!"int", !119, i64 0}
!145 = !{!143, !120, i64 8}
!146 = !{!143, !118, i64 16}
!147 = !{!143, !144, i64 24}
!148 = !{!143, !144, i64 48}
!149 = !{!143, !144, i64 52}
!150 = !{!143, !118, i64 32}
!151 = !{!"branch_weights", i32 1, i32 6}
!152 = !{!143, !118, i64 40}
!153 = !{!118, !118, i64 0}
!154 = !{!155, !118, i64 0}
!155 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !118, i64 0, !118, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32}
!156 = !{!155, !144, i64 24}
!157 = !{!155, !144, i64 28}
!158 = !{!155, !144, i64 32}
!159 = !{!"branch_weights", i32 1, i32 5}
!160 = !{!155, !118, i64 8}
!161 = !{!"branch_weights", i32 1, i32 159}
!162 = !{!"branch_weights", i32 159, i32 13825}
!163 = distinct !{!163, !164}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{!155, !118, i64 16}
!166 = !{!167, !118, i64 0}
!167 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32, !118, i64 40}
!168 = !{!167, !120, i64 8}
!169 = !{!167, !118, i64 16}
!170 = !{!167, !144, i64 24}
!171 = !{!167, !144, i64 28}
!172 = !{!167, !144, i64 32}
!173 = !{!167, !118, i64 40}
!174 = !{}
!175 = !{!"function_entry_count", i64 1069174}
!176 = !{!"function_entry_count", i64 0}
!177 = !{!120, !120, i64 0}
!178 = !{!"function_entry_count", i64 79}
!179 = !{!"branch_weights", i32 80, i32 1}
!180 = !{i8 0, i8 2}
!181 = !{!182, !118, i64 0}
!182 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !118, i64 0, !118, i64 8, !118, i64 16, !144, i64 24, !144, i64 28}
!183 = !{!182, !118, i64 16}
!184 = !{!182, !144, i64 24}
!185 = !{!182, !144, i64 28}
!186 = !{!144, !144, i64 0}
!187 = !{!"branch_weights", i32 1, i32 80}
!188 = !{!"function_entry_count", i64 95}
!189 = !{!190, !118, i64 16}
!190 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !117, i64 0, !118, i64 8, !118, i64 16, !191, i64 24, !144, i64 28, !120, i64 32}
!191 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !119, i64 0}
!192 = !{!"function_entry_count", i64 173}
!193 = !{!190, !144, i64 28}
!194 = !{!115, !120, i64 128}
!195 = !{!"function_entry_count", i64 7}
!196 = !{!"branch_weights", i32 1, i32 127}
!197 = !{!"branch_weights", i32 444, i32 80}
!198 = !{!182, !118, i64 8}
!199 = !{!"branch_weights", i32 80, i32 0}
!200 = distinct !{!200, !164}
!201 = !{!"branch_weights", i32 8257, i32 127}
!202 = distinct !{!202, !164}
!203 = !{!"branch_weights", i32 1, i32 191}
!204 = !{!"branch_weights", i32 545, i32 1}
!205 = !{!206, !118, i64 8}
!206 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !118, i64 0, !118, i64 8}
!207 = !{!206, !118, i64 0}
!208 = !{!"branch_weights", i32 1, i32 0}
!209 = distinct !{!209, !164}
!210 = !{!"branch_weights", i32 17281, i32 191}
!211 = distinct !{!211, !164}
!212 = !{!"function_entry_count", i64 2}
!213 = !{!"branch_weights", i32 3, i32 1}
!214 = !{!215, !118, i64 8}
!215 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !118, i64 0, !118, i64 8, !118, i64 16}
!216 = !{!215, !118, i64 0}
!217 = distinct !{!217, !164}
!218 = distinct !{!218, !164}
!219 = !{!220, !118, i64 0}
!220 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !118, i64 32}
!221 = !{!220, !118, i64 16}
!222 = !{!220, !118, i64 32}
!223 = !{!215, !118, i64 16}
!224 = !{!225, !226, i64 0}
!225 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !226, i64 0, !226, i64 2, !118, i64 8, !118, i64 16, !118, i64 24, !227, i64 32, !227, i64 40, !118, i64 48, !118, i64 56, !118, i64 64, !118, i64 72, !118, i64 80, !118, i64 88, !144, i64 96}
!226 = !{!"short", !119, i64 0}
!227 = !{!"long", !119, i64 0}
!228 = !{!"function_entry_count", i64 3673500}
!229 = !{!"function_entry_count", i64 579754}
!230 = !{!"function_entry_count", i64 1412839}
!231 = !{!"branch_weights", i32 579877, i32 832964}
!232 = !{!"branch_weights", i32 579877, i32 1}
!233 = !{!"function_entry_count", i64 3}
!234 = !{!"function_entry_count", i64 1068727}
!235 = !{!"function_entry_count", i64 5836268}
!236 = !{!"function_entry_count", i64 2192223}
!237 = !{!238, !118, i64 32}
!238 = !{!"_ZTSN11xercesc_2_75QNameE", !117, i64 0, !144, i64 8, !144, i64 12, !144, i64 16, !144, i64 20, !118, i64 24, !118, i64 32, !118, i64 40, !118, i64 48}
!239 = !{!"function_entry_count", i64 1992715}
!240 = !{!"branch_weights", i32 1159753, i32 832964}
!241 = !{!"function_entry_count", i64 1992794}
!242 = !{!"branch_weights", i32 1, i32 1159831}
!243 = !{!"branch_weights", i32 2435527, i32 1}
!244 = !{!"branch_weights", i32 1030785, i32 1404743}
!245 = !{!"branch_weights", i32 832964, i32 197822}
!246 = !{!"branch_weights", i32 1159831, i32 1275696}
!247 = distinct !{!247, !164}
!248 = !{!249, !118, i64 40}
!249 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !250, i64 8, !118, i64 16, !144, i64 24, !118, i64 32, !118, i64 40}
!250 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !119, i64 0}
!251 = distinct !{!251, !164}
!252 = !{!"function_entry_count", i64 4646679}
!253 = !{!"branch_weights", i32 1, i32 4646680}
!254 = !{!226, !226, i64 0}
!255 = !{!"branch_weights", i32 1216534, i32 3430147}
!256 = !{!"branch_weights", i32 1, i32 3430146}
!257 = !{!"branch_weights", i32 3430146, i32 42249130}
!258 = distinct !{!258, !164}
!259 = !{!"function_entry_count", i64 1231717351}
!260 = !{!"branch_weights", i32 621, i32 -1469098093}
!261 = !{!"branch_weights", i32 408901017, i32 1}
!262 = !{!"branch_weights", i32 267, i32 4}
!263 = !{!"branch_weights", i32 1, i32 4}
!264 = !{!"branch_weights", i32 156, i32 112}
!265 = !{!"branch_weights", i32 1, i32 112}
!266 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!267 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!268 = distinct !{!268, !164}
!269 = !{!270, !118, i64 16}
!270 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !117, i64 0, !144, i64 8, !144, i64 12, !118, i64 16, !118, i64 24, !118, i64 32, !118, i64 40, !118, i64 48}
!271 = !{!"function_entry_count", i64 157}
!272 = !{!273, !144, i64 52}
!273 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !190, i64 0, !274, i64 36, !275, i64 40, !276, i64 44, !277, i64 48, !144, i64 52, !144, i64 56, !144, i64 60, !144, i64 64, !118, i64 72, !118, i64 80, !118, i64 88, !118, i64 96, !118, i64 104, !118, i64 112, !118, i64 120, !118, i64 128, !118, i64 136, !120, i64 144, !120, i64 145, !120, i64 146}
!274 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !119, i64 0}
!275 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !119, i64 0}
!276 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !119, i64 0}
!277 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !119, i64 0}
!278 = !{!"function_entry_count", i64 6553673}
!279 = !{!238, !144, i64 20}
!280 = !{!270, !144, i64 8}
!281 = distinct !{!281, !164}
!282 = !{!"branch_weights", i32 191, i32 9601}
!283 = distinct !{!283, !164}
!284 = !{!"branch_weights", i32 1, i32 2}
!285 = !{!"branch_weights", i32 127, i32 1793}
!286 = distinct !{!286, !164}
!287 = !{!288, !118, i64 0}
!288 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32, !118, i64 40}
!289 = !{!288, !118, i64 16}
!290 = !{!288, !118, i64 40}
!291 = !{!288, !144, i64 24}
!292 = !{!288, !144, i64 32}
!293 = !{!294, !118, i64 8}
!294 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !118, i64 0, !118, i64 8, !118, i64 16}
!295 = !{!288, !120, i64 8}
!296 = !{!294, !118, i64 0}
!297 = distinct !{!297, !164}
!298 = distinct !{!298, !164}
!299 = !{!300, !118, i64 0}
!300 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32, !118, i64 40}
!301 = !{!300, !118, i64 16}
!302 = !{!300, !118, i64 40}
!303 = !{!300, !144, i64 24}
!304 = !{!300, !144, i64 32}
!305 = !{!"branch_weights", i32 28, i32 31}
!306 = !{!307, !118, i64 8}
!307 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !118, i64 0, !118, i64 8, !118, i64 16}
!308 = !{!300, !120, i64 8}
!309 = !{!"branch_weights", i32 1, i32 31}
!310 = !{!307, !118, i64 0}
!311 = !{!"branch_weights", i32 31, i32 0}
!312 = distinct !{!312, !164}
!313 = !{!"branch_weights", i32 3649, i32 127}
!314 = distinct !{!314, !164}
!315 = !{!316, !118, i64 0}
!316 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32, !118, i64 40}
!317 = !{!316, !118, i64 16}
!318 = !{!316, !118, i64 40}
!319 = !{!316, !144, i64 24}
!320 = !{!316, !144, i64 32}
!321 = !{!322, !118, i64 8}
!322 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !118, i64 0, !118, i64 8, !118, i64 16}
!323 = !{!316, !120, i64 8}
!324 = !{!322, !118, i64 0}
!325 = distinct !{!325, !164}
!326 = distinct !{!326, !164}
!327 = !{!328, !118, i64 0}
!328 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEEE", !118, i64 0, !120, i64 8, !118, i64 16, !144, i64 24, !144, i64 28, !144, i64 32, !118, i64 40}
!329 = !{!328, !118, i64 16}
!330 = !{!328, !118, i64 40}
!331 = !{!328, !144, i64 24}
!332 = !{!328, !144, i64 32}
!333 = !{!334, !118, i64 8}
!334 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_18XercesAttGroupInfoEEE", !118, i64 0, !118, i64 8, !118, i64 16}
!335 = !{!328, !120, i64 8}
!336 = !{!334, !118, i64 0}
!337 = distinct !{!337, !164}
!338 = distinct !{!338, !164}
!339 = !{!220, !144, i64 24}
!340 = !{!220, !144, i64 28}
!341 = !{!342, !118, i64 8}
!342 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !118, i64 0, !118, i64 8, !118, i64 16, !144, i64 24}
!343 = !{!220, !120, i64 8}
!344 = !{!342, !118, i64 0}
!345 = distinct !{!345, !164}
!346 = distinct !{!346, !164}
!347 = !{!348, !118, i64 24}
!348 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !120, i64 0, !144, i64 4, !144, i64 8, !118, i64 16, !118, i64 24}
!349 = !{!348, !118, i64 16}
!350 = distinct !{!350, !164}
!351 = distinct !{!351, !164}
!352 = !{!353, !118, i64 0}
!353 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEE", !118, i64 0, !118, i64 8}
!354 = !{!353, !118, i64 8}
