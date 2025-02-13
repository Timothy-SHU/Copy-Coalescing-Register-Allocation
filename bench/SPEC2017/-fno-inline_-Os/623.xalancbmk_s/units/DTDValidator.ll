; ModuleID = 'DTDValidator.cpp'
source_filename = "DTDValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRefInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::NameIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::NameIdPoolEnumerator.1" = type { %"class.xercesc_2_7::XMLEnumerator.2", i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.2" = type { ptr }
%"class.xercesc_2_7::DTDValidator" = type { %"class.xercesc_2_7::XMLValidator", ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::NameIdPool.3" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>

$_ZN11xercesc_2_710XMLRefInfoD2Ev = comdat any

$_ZN11xercesc_2_710XMLRefInfoD0Ev = comdat any

$_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE = comdat any

$_ZNK11xercesc_2_712DTDValidator10getGrammarEv = comdat any

$_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE = comdat any

$_ZNK11xercesc_2_712DTDValidator10handlesDTDEv = comdat any

$_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712XMLValidatorD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidator10getScannerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPt = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_712ArrayJanitorItE3getEv = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZN11xercesc_2_712XMLValidator12getReaderMgrEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt = comdat any

$_ZNK11xercesc_2_79XMLReader10isNameCharEt = comdat any

$_ZN11xercesc_2_710XMLScanner12getIDRefListEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv = comdat any

$_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv = comdat any

$_ZN11xercesc_2_710XMLRefInfoC2EPKtbbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_ = comdat any

$_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv = comdat any

$_ZN11xercesc_2_710XMLRefInfo11setDeclaredEb = comdat any

$_ZN11xercesc_2_710XMLRefInfo7setUsedEb = comdat any

$_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv = comdat any

$_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv = comdat any

$_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZTVN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XMLRefInfoE, ptr @_ZN11xercesc_2_710XMLRefInfoD2Ev, ptr @_ZN11xercesc_2_710XMLRefInfoD0Ev, ptr @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv, ptr @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710XMLRefInfoE\00", comdat, align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XMLRefInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712DTDValidatorE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DTDValidatorE, ptr @_ZN11xercesc_2_712DTDValidatorD2Ev, ptr @_ZN11xercesc_2_712DTDValidatorD0Ev, ptr @_ZN11xercesc_2_712DTDValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_712DTDValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_712DTDValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_712DTDValidator19postParseValidationEv, ptr @_ZN11xercesc_2_712DTDValidator5resetEv, ptr @_ZNK11xercesc_2_712DTDValidator18requiresNamespacesEv, ptr @_ZN11xercesc_2_712DTDValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_712DTDValidator10getGrammarEv, ptr @_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE, ptr @_ZNK11xercesc_2_712DTDValidator10handlesDTDEv, ptr @_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv] }, align 8
@_ZTSN11xercesc_2_712DTDValidatorE = dso_local constant [30 x i8] c"N11xercesc_2_712DTDValidatorE\00", align 1
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712DTDValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DTDValidatorE, ptr @_ZTIN11xercesc_2_712XMLValidatorE }, align 8
@.str = private unnamed_addr constant [17 x i8] c"DTDValidator.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [59 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE
@_ZN11xercesc_2_712DTDValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DTDValidatorD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #11
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712DTDValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DTDValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %9 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %8) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 117, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %41

13:                                               ; preds = %4
  %14 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #11
  switch i32 %14, label %17 [
    i32 0, label %15
    i32 1, label %38
  ]

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %38, label %39

17:                                               ; preds = %13
  %18 = and i32 %14, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(33) %1) #11
  %25 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %26 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %25) #11
  %27 = load ptr, ptr %24, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %2, i32 noundef %3, i32 noundef %26) #11
  br label %39

31:                                               ; preds = %17
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %33 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %34 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %33) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 21, ptr noundef %34) #11
          to label %35 unwind label %36

35:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %41

38:                                               ; preds = %13, %15
  br label %39

39:                                               ; preds = %15, %38, %20
  %40 = phi i32 [ -1, %38 ], [ %30, %20 ], [ 0, %15 ]
  ret i32 %40

41:                                               ; preds = %36, %11
  %42 = phi ptr [ %32, %36 ], [ %7, %11 ]
  %43 = phi { ptr, i32 } [ %37, %36 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %42) #14
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DTDValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #2 align 2 !prof !48 {
  %4 = load ptr, ptr %2, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(56) %2) #11
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #11
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #11
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %1, i32 noundef 0, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef null, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator20preContentValidationEbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  call void @_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(61) %7) #11
  %8 = load ptr, ptr %6, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 19
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(61) %8, i1 noundef zeroext true) #11
          to label %12 unwind label %21

12:                                               ; preds = %3
  %13 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br i1 %13, label %14, label %119

14:                                               ; preds = %12, %117
  %15 = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
          to label %16 unwind label %23

16:                                               ; preds = %14
  %17 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
  switch i32 %17, label %34 [
    i32 3, label %27
    i32 2, label %18
  ]

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %20 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
          to label %30 unwind label %25

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %148

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %148

25:                                               ; preds = %30, %27, %18
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %148

27:                                               ; preds = %16
  %28 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %29 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
          to label %30 unwind label %25

30:                                               ; preds = %18, %27
  %31 = phi ptr [ %28, %27 ], [ %19, %18 ]
  %32 = phi i32 [ 5, %27 ], [ 6, %18 ]
  %33 = phi ptr [ %29, %27 ], [ %20, %18 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %31, i32 noundef %32, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null) #11
          to label %34 unwind label %25

34:                                               ; preds = %30, %16
  %35 = load ptr, ptr %15, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef nonnull align 8 dereferenceable(16) ptr %37(ptr noundef nonnull align 8 dereferenceable(80) %15) #11
          to label %39 unwind label %52

39:                                               ; preds = %34
  %40 = call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %15) #11
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %115, %39
  %43 = phi i8 [ 0, %39 ], [ %105, %115 ]
  %44 = phi i8 [ 0, %39 ], [ %106, %115 ]
  %45 = phi i32 [ 0, %39 ], [ %116, %115 ]
  %46 = load ptr, ptr %38, align 8, !tbaa !49
  %47 = getelementptr inbounds ptr, ptr %46, i64 13
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(16) %38) #11
          to label %50 unwind label %54

50:                                               ; preds = %42
  %51 = icmp ult i32 %45, %49
  br i1 %51, label %56, label %117

52:                                               ; preds = %34
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %148

54:                                               ; preds = %42
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %148

56:                                               ; preds = %50
  %57 = load ptr, ptr %38, align 8, !tbaa !49
  %58 = getelementptr inbounds ptr, ptr %57, i64 14
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(56) ptr %59(ptr noundef nonnull align 8 dereferenceable(16) %38, i32 noundef %45) #11
          to label %61 unwind label %73

61:                                               ; preds = %56
  %62 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = and i8 %44, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %64
  %68 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
          to label %69 unwind label %75

69:                                               ; preds = %67, %88, %83
  %70 = phi i32 [ 111, %83 ], [ 109, %88 ], [ 11, %67 ]
  %71 = phi ptr [ %84, %83 ], [ %87, %88 ], [ %68, %67 ]
  %72 = phi ptr [ null, %83 ], [ %92, %88 ], [ null, %67 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef null, ptr noundef null) #11
          to label %117 unwind label %75

73:                                               ; preds = %56, %96, %103, %110
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %148

75:                                               ; preds = %69, %67, %83, %86, %88
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %148

77:                                               ; preds = %61
  %78 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = and i8 %43, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
          to label %69 unwind label %75

85:                                               ; preds = %80
  br i1 %41, label %86, label %93

86:                                               ; preds = %85
  %87 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #11
          to label %88 unwind label %75

88:                                               ; preds = %86
  %89 = load ptr, ptr %60, align 8, !tbaa !49
  %90 = getelementptr inbounds ptr, ptr %89, i64 5
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
          to label %69 unwind label %75

93:                                               ; preds = %85
  %94 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %60, i1 noundef zeroext true) #11
          to label %104 unwind label %73

97:                                               ; preds = %77
  %98 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %99 = icmp eq i32 %98, 9
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %60, i1 noundef zeroext false) #11
          to label %104 unwind label %73

104:                                              ; preds = %64, %96, %93, %100, %103, %97
  %105 = phi i8 [ 1, %96 ], [ 1, %93 ], [ %43, %103 ], [ %43, %100 ], [ %43, %97 ], [ %43, %64 ]
  %106 = phi i8 [ %44, %96 ], [ %44, %93 ], [ %44, %103 ], [ %44, %100 ], [ %44, %97 ], [ 1, %64 ]
  br i1 %2, label %107, label %115

107:                                              ; preds = %104
  %108 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #11
  %112 = load ptr, ptr %0, align 8, !tbaa !49
  %113 = getelementptr inbounds ptr, ptr %112, i64 8
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %60, ptr noundef %111, i1 noundef zeroext true, ptr noundef nonnull %15) #11
          to label %115 unwind label %73

115:                                              ; preds = %110, %107, %104
  %116 = add nuw i32 %45, 1
  br label %42, !llvm.loop !62

117:                                              ; preds = %50, %69
  %118 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br i1 %118, label %14, label %119, !llvm.loop !64

119:                                              ; preds = %117, %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %120 = load ptr, ptr %6, align 8, !tbaa !59
  invoke void @_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator.1") align 8 %5, ptr noundef nonnull align 8 dereferenceable(61) %120) #11
          to label %121 unwind label %128

121:                                              ; preds = %119
  %122 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  br i1 %122, label %123, label %145

123:                                              ; preds = %121, %143
  %124 = invoke noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
          to label %125 unwind label %130

125:                                              ; preds = %123
  %126 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #11
  %127 = icmp eq ptr %126, null
  br i1 %127, label %143, label %132, !llvm.loop !65

128:                                              ; preds = %119
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %146

130:                                              ; preds = %141, %132, %123
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br label %146

132:                                              ; preds = %125
  %133 = load ptr, ptr %6, align 8, !tbaa !59
  %134 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #11
  %135 = load ptr, ptr %133, align 8, !tbaa !49
  %136 = getelementptr inbounds ptr, ptr %135, i64 15
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(61) %133, ptr noundef %134) #11
          to label %139 unwind label %130

139:                                              ; preds = %132
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #11
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 4, ptr noundef %142, ptr noundef null, ptr noundef null, ptr noundef null) #11
          to label %143 unwind label %130

143:                                              ; preds = %139, %141, %125
  %144 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  br i1 %144, label %123, label %145

145:                                              ; preds = %143, %121
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void

146:                                              ; preds = %130, %128
  %147 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %148

148:                                              ; preds = %73, %75, %23, %52, %54, %25, %146, %21
  %149 = phi { ptr, i32 } [ %147, %146 ], [ %22, %21 ], [ %24, %23 ], [ %26, %25 ], [ %53, %52 ], [ %55, %54 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator19postParseValidationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator5resetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator18requiresNamespacesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !48 {
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %6 = alloca [100 x i16], align 16
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %10 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %15 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %16 = icmp ne i32 %9, 1
  %17 = or i1 %16, %3
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %10) #11
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 26, ptr noundef %14, ptr noundef %2, ptr noundef %10, ptr noundef null) #11
  br label %21

21:                                               ; preds = %5, %18, %20
  %22 = icmp eq i32 %8, 0
  br i1 %22, label %153, label %23

23:                                               ; preds = %21
  %24 = load i16, ptr %2, align 2, !tbaa !67
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 9, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #11
  br label %153

27:                                               ; preds = %23
  %28 = icmp ult i32 %8, 10
  %29 = trunc i32 %8 to i10
  %30 = lshr i10 -88, %29
  %31 = and i10 %30, 1
  %32 = icmp ne i10 %31, 0
  %33 = select i1 %28, i1 %32, i1 false
  %34 = icmp eq i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #11
  %35 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %2) #11
  %36 = icmp ult i32 %35, 100
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %6, ptr noundef nonnull %2) #11
          to label %49 unwind label %38

38:                                               ; preds = %44, %40, %37
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %154

40:                                               ; preds = %27
  %41 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %42 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %41) #11
  %43 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %42) #11
          to label %44 unwind label %38

44:                                               ; preds = %40
  %45 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %46 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #11
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %43, ptr noundef %46) #11
          to label %47 unwind label %38

47:                                               ; preds = %44
  %48 = call noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  br label %49

49:                                               ; preds = %37, %47
  %50 = phi ptr [ %48, %47 ], [ %6, %37 ]
  %51 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %52 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %51) #11
  %53 = icmp ult i32 %8, 4
  br label %54

54:                                               ; preds = %147, %49
  %55 = phi ptr [ %50, %49 ], [ %151, %147 ]
  %56 = phi i8 [ 0, %49 ], [ %93, %147 ]
  switch i32 %8, label %71 [
    i32 8, label %57
    i32 5, label %57
    i32 4, label %57
    i32 3, label %57
    i32 2, label %57
    i32 1, label %57
    i32 0, label %57
  ]

57:                                               ; preds = %54, %54, %54, %54, %54, %54, %54
  %58 = call noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %59 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %58) #11
  %60 = load i16, ptr %55, align 2, !tbaa !67
  %61 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %59, i16 noundef zeroext %60) #11
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %55, ptr noundef %14, ptr noundef null, ptr noundef null) #11
          to label %69 unwind label %65

63:                                               ; preds = %82
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %154

65:                                               ; preds = %146, %143, %62
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %154

67:                                               ; preds = %88, %77
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %154

69:                                               ; preds = %62, %57
  %70 = getelementptr inbounds i16, ptr %55, i64 1
  br label %71

71:                                               ; preds = %54, %69
  %72 = phi ptr [ %55, %54 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %89
  %74 = phi ptr [ %90, %89 ], [ %72, %71 ]
  %75 = load i16, ptr %74, align 2, !tbaa !67
  switch i16 %75, label %78 [
    i16 0, label %91
    i16 32, label %76
  ]

76:                                               ; preds = %73
  br i1 %33, label %91, label %77

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 25, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #11
          to label %152 unwind label %67

78:                                               ; preds = %73
  %79 = icmp eq i16 %75, 58
  %80 = and i1 %52, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  switch i32 %8, label %83 [
    i32 8, label %82
    i32 5, label %82
    i32 4, label %82
    i32 3, label %82
    i32 2, label %82
    i32 1, label %82
    i32 0, label %82
  ]

82:                                               ; preds = %81, %81, %81, %81, %81, %81, %81
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 20) #11
          to label %83 unwind label %63

83:                                               ; preds = %81, %82, %78
  %84 = call noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %85 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #11
  %86 = load i16, ptr %74, align 2, !tbaa !67
  %87 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %85, i16 noundef zeroext %86) #11
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %74, ptr noundef %14, ptr noundef null, ptr noundef null) #11
          to label %152 unwind label %67

89:                                               ; preds = %83
  %90 = getelementptr inbounds i16, ptr %74, i64 1
  br label %73, !llvm.loop !69

91:                                               ; preds = %73, %76
  %92 = icmp eq i16 %75, 0
  %93 = select i1 %92, i8 1, i8 %56
  store i16 0, ptr %74, align 2, !tbaa !67
  br i1 %53, label %94, label %127

94:                                               ; preds = %91
  %95 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %96 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %95) #11
          to label %97 unwind label %105

97:                                               ; preds = %94
  %98 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef %55) #11
          to label %99 unwind label %105

99:                                               ; preds = %97
  %100 = icmp eq ptr %98, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %98) #11
  %103 = and i1 %34, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 12, ptr noundef %55, ptr noundef null, ptr noundef null, ptr noundef null) #11
          to label %123 unwind label %105

105:                                              ; preds = %117, %114, %107, %104, %97, %94
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %154

107:                                              ; preds = %99
  %108 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %109 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %108) #11
  %110 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %109) #11
          to label %111 unwind label %105

111:                                              ; preds = %107
  %112 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %113 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %112) #11
  invoke void @_ZN11xercesc_2_710XMLRefInfoC2EPKtbbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %110, ptr noundef %55, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %113) #11
          to label %114 unwind label %119

114:                                              ; preds = %111
  %115 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %116 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %115) #11
          to label %117 unwind label %105

117:                                              ; preds = %114
  %118 = call noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %110) #11
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef %118, ptr noundef nonnull %110) #11
          to label %121 unwind label %105

119:                                              ; preds = %111
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %110, ptr noundef %109) #12
  br label %154

121:                                              ; preds = %117, %101
  %122 = phi ptr [ %98, %101 ], [ %110, %117 ]
  br i1 %34, label %123, label %125

123:                                              ; preds = %104, %121
  %124 = phi ptr [ %122, %121 ], [ %98, %104 ]
  call void @_ZN11xercesc_2_710XMLRefInfo11setDeclaredEb(ptr noundef nonnull align 8 dereferenceable(32) %124, i1 noundef zeroext true) #11
  br label %147

125:                                              ; preds = %121
  br i1 %3, label %147, label %126

126:                                              ; preds = %125
  call void @_ZN11xercesc_2_710XMLRefInfo7setUsedEb(ptr noundef nonnull align 8 dereferenceable(32) %122, i1 noundef zeroext true) #11
  br label %147

127:                                              ; preds = %91
  %128 = and i32 %8, -2
  switch i32 %128, label %147 [
    i32 4, label %129
    i32 8, label %143
  ]

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !59
  %132 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %131, ptr noundef %55) #11
          to label %133 unwind label %137

133:                                              ; preds = %129
  %134 = icmp eq ptr %132, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %132) #11
  br i1 %136, label %147, label %139

137:                                              ; preds = %139, %129
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %154

139:                                              ; preds = %135, %133
  %140 = phi i32 [ 19, %133 ], [ 18, %135 ]
  %141 = phi ptr [ %14, %133 ], [ %55, %135 ]
  %142 = phi ptr [ %55, %133 ], [ %14, %135 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef null, ptr noundef null) #11
          to label %147 unwind label %137

143:                                              ; preds = %127
  %144 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %55, ptr noundef %15) #11
          to label %145 unwind label %65

145:                                              ; preds = %143
  br i1 %144, label %147, label %146

146:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 23, ptr noundef %55, ptr noundef %14, ptr noundef null, ptr noundef null) #11
          to label %147 unwind label %65

147:                                              ; preds = %139, %127, %135, %123, %126, %125, %145, %146
  %148 = and i8 %93, 1
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %33, i1 %149, i1 false
  %151 = getelementptr inbounds i16, ptr %74, i64 1
  br i1 %150, label %54, label %152, !llvm.loop !70

152:                                              ; preds = %147, %88, %77
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #14
  br label %153

153:                                              ; preds = %21, %152, %26
  ret void

154:                                              ; preds = %63, %67, %65, %137, %119, %105, %38
  %155 = phi { ptr, i32 } [ %39, %38 ], [ %138, %137 ], [ %106, %105 ], [ %120, %119 ], [ %64, %63 ], [ %66, %65 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #14
  resume { ptr, i32 } %155
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DTDValidator10getGrammarEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator10handlesDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !73 {
  ret i1 false
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #11
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DTDValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !90
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
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
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %8 = zext i1 %6 to i8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %2, i32 noundef %1) #11
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3) #11
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %11, align 4, !tbaa !103
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %8, ptr %12, align 8, !tbaa !104
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %5, ptr %13, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !112
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !114
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !116 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !117

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !67
  %8 = load i16, ptr %1, align 2, !tbaa !67
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !118

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !119

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !67
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !120

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !121

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !67
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !122

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !123

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !67
  %28 = load i16, ptr %26, align 2, !tbaa !67
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !124, !llvm.loop !125

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !126 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !127
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !131

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !132

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !133, !llvm.loop !134

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
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %4 = load ptr, ptr %0, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #11
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #16
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !127
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !135 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !136

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #11
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !137 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !139, !range !140, !noundef !141
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !153
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !153
  %8 = and i8 %7, 4
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !156
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !158, !range !140, !noundef !141
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoC2EPKtbbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %6 = zext i1 %2 to i8
  %7 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  store i8 %6, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 2
  store i8 %7, ptr %9, align 1, !tbaa !159
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !52
  %12 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #11
          to label %13 unwind label %14

13:                                               ; preds = %5
  store ptr %12, ptr %10, align 8, !tbaa !58
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !160
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !162
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !163, !range !140, !noundef !141
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !156
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(32) %21) #12
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !156
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !164
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !165
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #11
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !166
  %37 = load i32, ptr %4, align 4, !tbaa !167
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !168
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #11
  %41 = load ptr, ptr %35, align 8, !tbaa !166
  %42 = load i32, ptr %4, align 4, !tbaa !167
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !168
  %45 = load i32, ptr %9, align 8, !tbaa !162
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !162
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfo11setDeclaredEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfo7setUsedEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 1, !tbaa !159
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !168
  %4 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1) #11
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #11
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
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !175 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !160
  %8 = load ptr, ptr %0, align 8, !tbaa !165
  %9 = load ptr, ptr %5, align 8, !tbaa !49
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #11
  store i32 %11, ptr %2, align 4, !tbaa !167
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !176
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = load ptr, ptr %20, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #11
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !177

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !178 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !160
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !165
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !165
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #11
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !160
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  store ptr %22, ptr %20, align 8, !tbaa !166
  store i32 %5, ptr %3, align 8, !tbaa !160
  %23 = load ptr, ptr %0, align 8, !tbaa !165
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #11
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !166
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !168
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !180
  %38 = load ptr, ptr %18, align 8, !tbaa !176
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !164
  %41 = load ptr, ptr %0, align 8, !tbaa !165
  %42 = load ptr, ptr %38, align 8, !tbaa !49
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #11
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !168
  store ptr %48, ptr %36, align 8, !tbaa !180
  store ptr %35, ptr %47, align 8, !tbaa !168
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !181

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !160
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !182

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !48 {
  store ptr %2, ptr %0, align 8, !tbaa !156
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !180
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !183
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  store ptr null, ptr %0, align 8, !tbaa !183
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #11
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #11
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !183
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !186
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !188 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !189
  %6 = load ptr, ptr %0, align 8, !tbaa !191
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #11
  store i32 %7, ptr %2, align 4, !tbaa !167
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !193

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #11
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #11
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !168
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !194, !llvm.loop !195

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !196 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !197

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !67
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !198

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !67
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !199

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
  %23 = load i16, ptr %22, align 2, !tbaa !67
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !200, !llvm.loop !201

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !174 {
  %3 = load ptr, ptr %0, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !203

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !204

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #11
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !127
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(61) %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !207
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !211
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !207
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !211
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14) #11
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !214
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !207
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !215
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
  %6 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %7 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %6) #11
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %9 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  %10 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %9) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %8, ptr noundef %10) #11
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %50, %3
  %13 = phi ptr [ %8, %3 ], [ %23, %50 ]
  %14 = phi i8 [ 0, %3 ], [ %24, %50 ]
  br label %15

15:                                               ; preds = %18, %12
  %16 = phi ptr [ %13, %12 ], [ %19, %18 ]
  %17 = load i16, ptr %16, align 2, !tbaa !67
  switch i16 %17, label %18 [
    i16 0, label %22
    i16 32, label %20
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  br label %15, !llvm.loop !218

20:                                               ; preds = %15
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 0, ptr %16, align 2, !tbaa !67
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %24 = phi i8 [ %14, %20 ], [ 1, %15 ]
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %13, ptr noundef nonnull %23) #11
          to label %26 unwind label %33

26:                                               ; preds = %22
  br i1 %25, label %27, label %35

27:                                               ; preds = %26
  %28 = load ptr, ptr %1, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
          to label %32 unwind label %33

32:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 112, ptr noundef %31, ptr noundef %13, ptr noundef null, ptr noundef null) #11
          to label %35 unwind label %33

33:                                               ; preds = %49, %44, %36, %32, %27, %22
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  resume { ptr, i32 } %34

35:                                               ; preds = %32, %26
  br i1 %2, label %36, label %50

36:                                               ; preds = %35
  %37 = load ptr, ptr %11, align 8, !tbaa !59
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds ptr, ptr %38, i64 15
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(61) %37, ptr noundef %13) #11
          to label %42 unwind label %33

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = load ptr, ptr %1, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(56) %1) #11
          to label %49 unwind label %33

49:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 14, ptr noundef %48, ptr noundef %13, ptr noundef null, ptr noundef null) #11
          to label %50 unwind label %33

50:                                               ; preds = %49, %42, %35
  %51 = and i8 %24, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %12, label %53, !llvm.loop !219

53:                                               ; preds = %50
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(61) %1) local_unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !220
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !224
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !220
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !224
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14) #11
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !226
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !220
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !207
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !210
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !213
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !211
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !220
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !223
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !225
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !224
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.1", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !227 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !129
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!47}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !{ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_712DTDValidatorD2Ev, ptr @_ZN11xercesc_2_712XMLValidatorD2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!39 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!41 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!42 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!44 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!45 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!46 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !57, i64 24}
!53 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !54, i64 0, !55, i64 8, !55, i64 9, !57, i64 16, !57, i64 24}
!54 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!55 = !{!"bool", !56, i64 0}
!56 = !{!"omnipotent char", !51, i64 0}
!57 = !{!"any pointer", !56, i64 0}
!58 = !{!53, !57, i64 16}
!59 = !{!60, !57, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712DTDValidatorE", !61, i64 0, !57, i64 40}
!61 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = !{!"function_entry_count", i64 6}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !56, i64 0}
!69 = distinct !{!69, !63}
!70 = distinct !{!70, !63}
!71 = !{!"function_entry_count", i64 552}
!72 = !{!"function_entry_count", i64 549}
!73 = !{!"function_entry_count", i64 1}
!74 = !{!"function_entry_count", i64 3}
!75 = !{!"function_entry_count", i64 1081787}
!76 = !{!61, !57, i64 32}
!77 = !{!78, !57, i64 360}
!78 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !79, i64 0, !80, i64 8, !55, i64 16, !55, i64 17, !55, i64 18, !55, i64 19, !55, i64 20, !55, i64 21, !55, i64 22, !55, i64 23, !55, i64 24, !55, i64 25, !55, i64 26, !55, i64 27, !55, i64 28, !55, i64 29, !55, i64 30, !55, i64 31, !55, i64 32, !55, i64 33, !55, i64 34, !55, i64 35, !55, i64 36, !55, i64 37, !55, i64 38, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !81, i64 56, !81, i64 60, !81, i64 64, !81, i64 68, !57, i64 72, !81, i64 80, !81, i64 84, !81, i64 88, !81, i64 92, !81, i64 96, !57, i64 104, !57, i64 112, !57, i64 120, !57, i64 128, !57, i64 136, !57, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !55, i64 176, !82, i64 184, !57, i64 264, !85, i64 272, !57, i64 280, !57, i64 288, !57, i64 296, !57, i64 304, !57, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !84, i64 352, !57, i64 360, !86, i64 368, !87, i64 392, !87, i64 432, !87, i64 472, !87, i64 512, !87, i64 552, !87, i64 592, !87, i64 632, !88, i64 672}
!79 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!80 = !{!"long", !56, i64 0}
!81 = !{!"int", !56, i64 0}
!82 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !83, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !81, i64 40, !57, i64 48, !55, i64 56, !84, i64 60, !55, i64 64, !57, i64 72}
!83 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!84 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !56, i64 0}
!85 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !56, i64 0}
!86 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !81, i64 0, !57, i64 8, !57, i64 16}
!87 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !81, i64 0, !81, i64 4, !81, i64 8, !55, i64 12, !57, i64 16, !57, i64 24, !57, i64 32}
!88 = !{!"_ZTSN11xercesc_2_79ElemStackE", !81, i64 0, !81, i64 4, !89, i64 8, !57, i64 48, !81, i64 56, !81, i64 60, !81, i64 64, !81, i64 68, !81, i64 72, !81, i64 76, !81, i64 80, !57, i64 88, !57, i64 96}
!89 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !54, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !81, i64 32, !81, i64 36}
!90 = !{!91, !94, i64 36}
!91 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !92, i64 0, !94, i64 36, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72}
!92 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !54, i64 0, !57, i64 8, !57, i64 16, !93, i64 24, !81, i64 28, !55, i64 32}
!93 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !56, i64 0}
!94 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !56, i64 0}
!95 = !{!"function_entry_count", i64 344419}
!96 = !{!78, !81, i64 52}
!97 = !{!98, !57, i64 40}
!98 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !99, i64 8, !57, i64 16, !81, i64 24, !57, i64 32, !57, i64 40}
!99 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
!100 = !{!101, !57, i64 24}
!101 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !55, i64 0, !102, i64 4, !81, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !55, i64 48}
!102 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !56, i64 0}
!103 = !{!101, !102, i64 4}
!104 = !{!101, !55, i64 48}
!105 = !{!101, !57, i64 40}
!106 = !{!"function_entry_count", i64 19496}
!107 = !{!108, !57, i64 32}
!108 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !54, i64 0, !109, i64 8, !102, i64 12, !110, i64 16, !55, i64 20, !55, i64 21, !81, i64 24, !57, i64 32, !57, i64 40, !57, i64 48}
!109 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !56, i64 0}
!110 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !56, i64 0}
!111 = !{!"function_entry_count", i64 593014}
!112 = !{!108, !102, i64 12}
!113 = !{!"function_entry_count", i64 401820}
!114 = !{!108, !109, i64 8}
!115 = !{!108, !57, i64 40}
!116 = !{!"function_entry_count", i64 1231717351}
!117 = !{!"branch_weights", i32 621, i32 -1469098093}
!118 = !{!"branch_weights", i32 408901017, i32 1}
!119 = !{!"branch_weights", i32 267, i32 4}
!120 = !{!"branch_weights", i32 1, i32 4}
!121 = !{!"branch_weights", i32 156, i32 112}
!122 = !{!"branch_weights", i32 1, i32 112}
!123 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!124 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!125 = distinct !{!125, !63}
!126 = !{!"function_entry_count", i64 191815}
!127 = !{!128, !57, i64 0}
!128 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !57, i64 0, !57, i64 8}
!129 = !{!128, !57, i64 8}
!130 = !{!"function_entry_count", i64 2453164456}
!131 = !{!"branch_weights", i32 1, i32 -1841802839}
!132 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!133 = !{!"branch_weights", i32 408669070, i32 -279908792}
!134 = distinct !{!134, !63}
!135 = !{!"function_entry_count", i64 558789}
!136 = !{!"branch_weights", i32 158605, i32 400186}
!137 = !{!"function_entry_count", i64 4}
!138 = !{!"function_entry_count", i64 1666453}
!139 = !{!78, !55, i64 18}
!140 = !{i8 0, i8 2}
!141 = !{}
!142 = !{!"function_entry_count", i64 311300}
!143 = !{!61, !57, i64 24}
!144 = !{!"function_entry_count", i64 7478295}
!145 = !{!82, !57, i64 16}
!146 = !{!"function_entry_count", i64 612}
!147 = !{!148, !57, i64 163968}
!148 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !81, i64 0, !56, i64 4, !81, i64 32772, !56, i64 32776, !56, i64 49160, !80, i64 114696, !80, i64 114704, !149, i64 114712, !57, i64 114720, !55, i64 114728, !55, i64 114729, !57, i64 114736, !81, i64 114744, !56, i64 114748, !81, i64 163900, !81, i64 163904, !150, i64 163908, !55, i64 163912, !151, i64 163916, !81, i64 163920, !55, i64 163924, !55, i64 163925, !57, i64 163928, !57, i64 163936, !55, i64 163944, !55, i64 163945, !57, i64 163952, !152, i64 163960, !57, i64 163968, !55, i64 163976, !84, i64 163980, !57, i64 163984}
!149 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !56, i64 0}
!150 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !56, i64 0}
!151 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !56, i64 0}
!152 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !56, i64 0}
!153 = !{!56, !56, i64 0}
!154 = !{!"function_entry_count", i64 4147}
!155 = !{!78, !57, i64 168}
!156 = !{!157, !57, i64 0}
!157 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!158 = !{!53, !55, i64 8}
!159 = !{!53, !55, i64 9}
!160 = !{!161, !81, i64 24}
!161 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !57, i64 0, !55, i64 8, !57, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !57, i64 40}
!162 = !{!161, !81, i64 32}
!163 = !{!161, !55, i64 8}
!164 = !{!157, !57, i64 16}
!165 = !{!161, !57, i64 0}
!166 = !{!161, !57, i64 16}
!167 = !{!81, !81, i64 0}
!168 = !{!57, !57, i64 0}
!169 = !{!170, !57, i64 32}
!170 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !171, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !81, i64 56, !55, i64 60}
!171 = !{!"_ZTSN11xercesc_2_77GrammarE", !54, i64 0}
!172 = !{!173, !57, i64 32}
!173 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !54, i64 0, !81, i64 8, !81, i64 12, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64}
!174 = !{!"function_entry_count", i64 243874}
!175 = !{!"function_entry_count", i64 5836268}
!176 = !{!161, !57, i64 40}
!177 = distinct !{!177, !63}
!178 = !{!"function_entry_count", i64 1068727}
!179 = !{!"function_entry_count", i64 1069174}
!180 = !{!157, !57, i64 8}
!181 = distinct !{!181, !63}
!182 = distinct !{!182, !63}
!183 = !{!184, !57, i64 0}
!184 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEE", !57, i64 0, !57, i64 8}
!185 = !{!184, !57, i64 8}
!186 = !{!187, !57, i64 0}
!187 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !57, i64 0, !57, i64 8}
!188 = !{!"function_entry_count", i64 5}
!189 = !{!190, !81, i64 32}
!190 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !57, i64 0, !57, i64 8, !57, i64 16, !81, i64 24, !81, i64 28, !81, i64 32}
!191 = !{!190, !57, i64 0}
!192 = !{!190, !57, i64 8}
!193 = !{!"branch_weights", i32 5, i32 1}
!194 = !{!"branch_weights", i32 1, i32 0}
!195 = distinct !{!195, !63}
!196 = !{!"function_entry_count", i64 4646679}
!197 = !{!"branch_weights", i32 1, i32 4646680}
!198 = !{!"branch_weights", i32 1216534, i32 3430147}
!199 = !{!"branch_weights", i32 1, i32 3430146}
!200 = !{!"branch_weights", i32 3430146, i32 42249130}
!201 = distinct !{!201, !63}
!202 = !{!173, !57, i64 24}
!203 = !{!"branch_weights", i32 191816, i32 52060}
!204 = !{!"branch_weights", i32 1, i32 52060}
!205 = !{!170, !57, i64 16}
!206 = !{!170, !57, i64 8}
!207 = !{!208, !81, i64 8}
!208 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE", !209, i64 0, !81, i64 8, !57, i64 16, !57, i64 24}
!209 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE"}
!210 = !{!208, !57, i64 16}
!211 = !{!212, !81, i64 28}
!212 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !57, i64 0, !57, i64 8, !57, i64 16, !81, i64 24, !81, i64 28, !81, i64 32}
!213 = !{!208, !57, i64 24}
!214 = !{!212, !57, i64 16}
!215 = !{!92, !93, i64 24}
!216 = !{!"function_entry_count", i64 1668291}
!217 = !{!92, !57, i64 16}
!218 = distinct !{!218, !63}
!219 = distinct !{!219, !63}
!220 = !{!221, !81, i64 8}
!221 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE", !222, i64 0, !81, i64 8, !57, i64 16, !57, i64 24}
!222 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE"}
!223 = !{!221, !57, i64 16}
!224 = !{!190, !81, i64 28}
!225 = !{!221, !57, i64 24}
!226 = !{!190, !57, i64 16}
!227 = !{!"function_entry_count", i64 52059}
