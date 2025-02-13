; ModuleID = 'DTDValidator.cpp'
source_filename = "DTDValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRefInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DTDValidator" = type { %"class.xercesc_2_7::XMLValidator", ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
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
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::NameIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::NameIdPoolEnumerator.0" = type { %"class.xercesc_2_7::XMLEnumerator.1", i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.1" = type { ptr }
%"class.xercesc_2_7::NameIdPool.2" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.4" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710XMLRefInfoD0Ev = comdat any

$_ZN11xercesc_2_710XMLRefInfoD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidatorD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidator10getScannerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

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

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE = comdat any

$_ZNK11xercesc_2_712DTDValidator10getGrammarEv = comdat any

$_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE = comdat any

$_ZNK11xercesc_2_712DTDValidator10handlesDTDEv = comdat any

$_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZTVN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XMLRefInfoE, ptr @_ZN11xercesc_2_710XMLRefInfoD2Ev, ptr @_ZN11xercesc_2_710XMLRefInfoD0Ev, ptr @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv, ptr @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_712DTDValidatorE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DTDValidatorE, ptr @_ZN11xercesc_2_712DTDValidatorD2Ev, ptr @_ZN11xercesc_2_712DTDValidatorD0Ev, ptr @_ZN11xercesc_2_712DTDValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_712DTDValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_712DTDValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_712DTDValidator19postParseValidationEv, ptr @_ZN11xercesc_2_712DTDValidator5resetEv, ptr @_ZNK11xercesc_2_712DTDValidator18requiresNamespacesEv, ptr @_ZN11xercesc_2_712DTDValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_712DTDValidator10getGrammarEv, ptr @_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE, ptr @_ZNK11xercesc_2_712DTDValidator10handlesDTDEv, ptr @_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv] }, align 8
@.str = private unnamed_addr constant [17 x i8] c"DTDValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710XMLRefInfoE\00", comdat, align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XMLRefInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_712DTDValidatorE = dso_local constant [30 x i8] c"N11xercesc_2_712DTDValidatorE\00", align 1
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712DTDValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DTDValidatorE, ptr @_ZTIN11xercesc_2_712XMLValidatorE }, align 8
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
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [59 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE
@_ZN11xercesc_2_712DTDValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DTDValidatorD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  tail call void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #14
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DTDValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_712DTDValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DTDValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %9 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %8) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 117, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %41

13:                                               ; preds = %4
  %14 = tail call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #14
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
  %21 = load ptr, ptr %1, align 8, !tbaa !48
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(33) %1) #14
  %25 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %26 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %25) #14
  %27 = load ptr, ptr %24, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %2, i32 noundef %3, i32 noundef %26) #14
  br label %39

31:                                               ; preds = %17
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %33 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %34 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %33) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 21, ptr noundef %34) #14
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
  tail call void @__cxa_free_exception(ptr %42) #11
  resume { ptr, i32 } %43
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !78
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DTDValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #4 align 2 !prof !47 {
  %4 = load ptr, ptr %2, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %1, i32 noundef 0, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef null, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %8 = zext i1 %6 to i8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %2, i32 noundef %1) #14
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %11, align 4, !tbaa !88
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %8, ptr %12, align 8, !tbaa !89
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %5, ptr %13, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !97
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator5resetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !62 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator18requiresNamespacesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !47 {
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %6 = alloca [100 x i16], align 16
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %10 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %11 = load ptr, ptr %1, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %15 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %16 = icmp ne i32 %9, 1
  %17 = or i1 %16, %3
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %10) #14
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 26, ptr noundef %14, ptr noundef %2, ptr noundef %10, ptr noundef null) #14
  br label %21

21:                                               ; preds = %5, %18, %20
  %22 = icmp eq i32 %8, 0
  br i1 %22, label %153, label %23

23:                                               ; preds = %21
  %24 = load i16, ptr %2, align 2, !tbaa !98
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 9, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %153

27:                                               ; preds = %23
  %28 = icmp ult i32 %8, 10
  %29 = trunc i32 %8 to i10
  %30 = lshr i10 -88, %29
  %31 = and i10 %30, 1
  %32 = icmp ne i10 %31, 0
  %33 = select i1 %28, i1 %32, i1 false
  %34 = icmp eq i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #14
  %35 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %2) #14
  %36 = icmp ult i32 %35, 100
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %6, ptr noundef nonnull %2) #14
          to label %49 unwind label %38

38:                                               ; preds = %44, %40, %37
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %154

40:                                               ; preds = %27
  %41 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %42 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %41) #14
  %43 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %42) #14
          to label %44 unwind label %38

44:                                               ; preds = %40
  %45 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %46 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #14
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %43, ptr noundef %46) #14
          to label %47 unwind label %38

47:                                               ; preds = %44
  %48 = call noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  br label %49

49:                                               ; preds = %37, %47
  %50 = phi ptr [ %48, %47 ], [ %6, %37 ]
  %51 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %52 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %51) #14
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
  %58 = call noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %59 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %58) #14
  %60 = load i16, ptr %55, align 2, !tbaa !98
  %61 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %59, i16 noundef zeroext %60) #14
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %55, ptr noundef %14, ptr noundef null, ptr noundef null) #14
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
  %75 = load i16, ptr %74, align 2, !tbaa !98
  switch i16 %75, label %78 [
    i16 0, label %91
    i16 32, label %76
  ]

76:                                               ; preds = %73
  br i1 %33, label %91, label %77

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 25, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #14
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
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 20) #14
          to label %83 unwind label %63

83:                                               ; preds = %81, %82, %78
  %84 = call noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %85 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #14
  %86 = load i16, ptr %74, align 2, !tbaa !98
  %87 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %85, i16 noundef zeroext %86) #14
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %74, ptr noundef %14, ptr noundef null, ptr noundef null) #14
          to label %152 unwind label %67

89:                                               ; preds = %83
  %90 = getelementptr inbounds i16, ptr %74, i64 1
  br label %73, !llvm.loop !100

91:                                               ; preds = %73, %76
  %92 = icmp eq i16 %75, 0
  %93 = select i1 %92, i8 1, i8 %56
  store i16 0, ptr %74, align 2, !tbaa !98
  br i1 %53, label %94, label %127

94:                                               ; preds = %91
  %95 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %96 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %95) #14
          to label %97 unwind label %105

97:                                               ; preds = %94
  %98 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef %55) #14
          to label %99 unwind label %105

99:                                               ; preds = %97
  %100 = icmp eq ptr %98, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %98) #14
  %103 = and i1 %34, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 12, ptr noundef %55, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %123 unwind label %105

105:                                              ; preds = %117, %114, %107, %104, %97, %94
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %154

107:                                              ; preds = %99
  %108 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %109 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %108) #14
  %110 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %109) #14
          to label %111 unwind label %105

111:                                              ; preds = %107
  %112 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %113 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %112) #14
  invoke void @_ZN11xercesc_2_710XMLRefInfoC2EPKtbbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %110, ptr noundef %55, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %113) #14
          to label %114 unwind label %119

114:                                              ; preds = %111
  %115 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %116 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %115) #14
          to label %117 unwind label %105

117:                                              ; preds = %114
  %118 = call noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %110) #14
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef %118, ptr noundef nonnull %110) #14
          to label %121 unwind label %105

119:                                              ; preds = %111
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %110, ptr noundef %109) #13
  br label %154

121:                                              ; preds = %117, %101
  %122 = phi ptr [ %98, %101 ], [ %110, %117 ]
  br i1 %34, label %123, label %125

123:                                              ; preds = %104, %121
  %124 = phi ptr [ %122, %121 ], [ %98, %104 ]
  call void @_ZN11xercesc_2_710XMLRefInfo11setDeclaredEb(ptr noundef nonnull align 8 dereferenceable(32) %124, i1 noundef zeroext true) #14
  br label %147

125:                                              ; preds = %121
  br i1 %3, label %147, label %126

126:                                              ; preds = %125
  call void @_ZN11xercesc_2_710XMLRefInfo7setUsedEb(ptr noundef nonnull align 8 dereferenceable(32) %122, i1 noundef zeroext true) #14
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
  %132 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %131, ptr noundef %55) #14
          to label %133 unwind label %137

133:                                              ; preds = %129
  %134 = icmp eq ptr %132, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %132) #14
  br i1 %136, label %147, label %139

137:                                              ; preds = %139, %129
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %154

139:                                              ; preds = %135, %133
  %140 = phi i32 [ 19, %133 ], [ 18, %135 ]
  %141 = phi ptr [ %14, %133 ], [ %55, %135 ]
  %142 = phi ptr [ %55, %133 ], [ %14, %135 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef null, ptr noundef null) #14
          to label %147 unwind label %137

143:                                              ; preds = %127
  %144 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %55, ptr noundef %15) #14
          to label %145 unwind label %65

145:                                              ; preds = %143
  br i1 %144, label %147, label %146

146:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 23, ptr noundef %55, ptr noundef %14, ptr noundef null, ptr noundef null) #14
          to label %147 unwind label %65

147:                                              ; preds = %139, %127, %135, %123, %126, %125, %145, %146
  %148 = and i8 %93, 1
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %33, i1 %149, i1 false
  %151 = getelementptr inbounds i16, ptr %74, i64 1
  br i1 %150, label %54, label %152, !llvm.loop !102

152:                                              ; preds = %147, %88, %77
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #11
  br label %153

153:                                              ; preds = %21, %152, %26
  ret void

154:                                              ; preds = %63, %67, %65, %137, %119, %105, %38
  %155 = phi { ptr, i32 } [ %39, %38 ], [ %138, %137 ], [ %106, %105 ], [ %120, %119 ], [ %64, %63 ], [ %66, %65 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #11
  resume { ptr, i32 } %155
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !104
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !106 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !107

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !98
  %8 = load i16, ptr %1, align 2, !tbaa !98
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !108

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !109

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !98
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !110

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !111

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !98
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !112

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !113

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !98
  %28 = load i16, ptr %26, align 2, !tbaa !98
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !114, !llvm.loop !115

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !116 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !120 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !121

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !98
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !122

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !98
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !123, !llvm.loop !124

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
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %0, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #14
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #16
  br label %15

15:                                               ; preds = %10, %14, %3
  store ptr %1, ptr %0, align 8, !tbaa !117
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !125 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !126

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712ArrayJanitorItE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !129, !range !130, !noundef !131
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !136 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !143
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !143
  %8 = and i8 %7, 4
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getIDRefListEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !146
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo11getDeclaredEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !148, !range !130, !noundef !131
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoC2EPKtbbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %6 = zext i1 %2 to i8
  %7 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  store i8 %6, ptr %8, align 8, !tbaa !148
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 2
  store i8 %7, ptr %9, align 1, !tbaa !149
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !51
  %12 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #14
          to label %13 unwind label %14

13:                                               ; preds = %5
  store ptr %12, ptr %10, align 8, !tbaa !57
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %15
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !150
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !152
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !153, !range !130, !noundef !131
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !146
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(32) %21) #13
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !146
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !154
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !155
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !156
  %37 = load i32, ptr %4, align 4, !tbaa !157
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !158
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #14
  %41 = load ptr, ptr %35, align 8, !tbaa !156
  %42 = load i32, ptr %4, align 4, !tbaa !157
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !158
  %45 = load i32, ptr %9, align 8, !tbaa !152
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !152
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLRefInfo10getRefNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfo11setDeclaredEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfo7setUsedEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 1, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !158
  %4 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !164 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator20preContentValidationEbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  call void @_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(61) %7) #14
  %8 = load ptr, ptr %6, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 19
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(61) %8, i1 noundef zeroext true) #14
          to label %12 unwind label %21

12:                                               ; preds = %3
  %13 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  br i1 %13, label %14, label %119

14:                                               ; preds = %12, %117
  %15 = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
          to label %16 unwind label %23

16:                                               ; preds = %14
  %17 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
  switch i32 %17, label %34 [
    i32 3, label %27
    i32 2, label %18
  ]

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %20 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
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
  %28 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %29 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
          to label %30 unwind label %25

30:                                               ; preds = %18, %27
  %31 = phi ptr [ %28, %27 ], [ %19, %18 ]
  %32 = phi i32 [ 5, %27 ], [ 6, %18 ]
  %33 = phi ptr [ %29, %27 ], [ %20, %18 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %31, i32 noundef %32, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %34 unwind label %25

34:                                               ; preds = %30, %16
  %35 = load ptr, ptr %15, align 8, !tbaa !48
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef nonnull align 8 dereferenceable(16) ptr %37(ptr noundef nonnull align 8 dereferenceable(80) %15) #14
          to label %39 unwind label %52

39:                                               ; preds = %34
  %40 = call noundef i32 @_ZNK11xercesc_2_714DTDElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %15) #14
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %115, %39
  %43 = phi i8 [ 0, %39 ], [ %105, %115 ]
  %44 = phi i8 [ 0, %39 ], [ %106, %115 ]
  %45 = phi i32 [ 0, %39 ], [ %116, %115 ]
  %46 = load ptr, ptr %38, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 13
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(16) %38) #14
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
  %57 = load ptr, ptr %38, align 8, !tbaa !48
  %58 = getelementptr inbounds ptr, ptr %57, i64 14
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(56) ptr %59(ptr noundef nonnull align 8 dereferenceable(16) %38, i32 noundef %45) #14
          to label %61 unwind label %73

61:                                               ; preds = %56
  %62 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = and i8 %44, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %64
  %68 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
          to label %69 unwind label %75

69:                                               ; preds = %67, %88, %83
  %70 = phi i32 [ 111, %83 ], [ 109, %88 ], [ 11, %67 ]
  %71 = phi ptr [ %84, %83 ], [ %87, %88 ], [ %68, %67 ]
  %72 = phi ptr [ null, %83 ], [ %92, %88 ], [ null, %67 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef null, ptr noundef null) #14
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
  %78 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = and i8 %43, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
          to label %69 unwind label %75

85:                                               ; preds = %80
  br i1 %41, label %86, label %93

86:                                               ; preds = %85
  %87 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %15) #14
          to label %88 unwind label %75

88:                                               ; preds = %86
  %89 = load ptr, ptr %60, align 8, !tbaa !48
  %90 = getelementptr inbounds ptr, ptr %89, i64 5
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
          to label %69 unwind label %75

93:                                               ; preds = %85
  %94 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %60, i1 noundef zeroext true) #14
          to label %104 unwind label %73

97:                                               ; preds = %77
  %98 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %99 = icmp eq i32 %98, 9
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %60, i1 noundef zeroext false) #14
          to label %104 unwind label %73

104:                                              ; preds = %64, %96, %93, %100, %103, %97
  %105 = phi i8 [ 1, %96 ], [ 1, %93 ], [ %43, %103 ], [ %43, %100 ], [ %43, %97 ], [ %43, %64 ]
  %106 = phi i8 [ %44, %96 ], [ %44, %93 ], [ %44, %103 ], [ %44, %100 ], [ %44, %97 ], [ 1, %64 ]
  br i1 %2, label %107, label %115

107:                                              ; preds = %104
  %108 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #14
  %112 = load ptr, ptr %0, align 8, !tbaa !48
  %113 = getelementptr inbounds ptr, ptr %112, i64 8
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %60, ptr noundef %111, i1 noundef zeroext true, ptr noundef nonnull %15) #14
          to label %115 unwind label %73

115:                                              ; preds = %110, %107, %104
  %116 = add nuw i32 %45, 1
  br label %42, !llvm.loop !165

117:                                              ; preds = %50, %69
  %118 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  br i1 %118, label %14, label %119, !llvm.loop !166

119:                                              ; preds = %117, %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %120 = load ptr, ptr %6, align 8, !tbaa !59
  invoke void @_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(61) %120) #14
          to label %121 unwind label %128

121:                                              ; preds = %119
  %122 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  br i1 %122, label %123, label %145

123:                                              ; preds = %121, %143
  %124 = invoke noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %125 unwind label %130

125:                                              ; preds = %123
  %126 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #14
  %127 = icmp eq ptr %126, null
  br i1 %127, label %143, label %132, !llvm.loop !167

128:                                              ; preds = %119
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %146

130:                                              ; preds = %141, %132, %123
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  br label %146

132:                                              ; preds = %125
  %133 = load ptr, ptr %6, align 8, !tbaa !59
  %134 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #14
  %135 = load ptr, ptr %133, align 8, !tbaa !48
  %136 = getelementptr inbounds ptr, ptr %135, i64 15
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(61) %133, ptr noundef %134) #14
          to label %139 unwind label %130

139:                                              ; preds = %132
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %124) #14
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 4, ptr noundef %142, ptr noundef null, ptr noundef null, ptr noundef null) #14
          to label %143 unwind label %130

143:                                              ; preds = %139, %141, %125
  %144 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  br i1 %144, label %123, label %145

145:                                              ; preds = %143, %121
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void

146:                                              ; preds = %130, %128
  %147 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %148

148:                                              ; preds = %73, %75, %23, %52, %54, %25, %146, %21
  %149 = phi { ptr, i32 } [ %147, %146 ], [ %22, %21 ], [ %24, %23 ], [ %26, %25 ], [ %53, %52 ], [ %55, %54 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(61) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %6) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !170
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !174
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !170
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !174
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !176
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #11
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !177
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !170
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !136 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !178
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %6 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %6) #14
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %9 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  %10 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %9) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %8, ptr noundef %10) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %50, %3
  %13 = phi ptr [ %8, %3 ], [ %23, %50 ]
  %14 = phi i8 [ 0, %3 ], [ %24, %50 ]
  br label %15

15:                                               ; preds = %18, %12
  %16 = phi ptr [ %13, %12 ], [ %19, %18 ]
  %17 = load i16, ptr %16, align 2, !tbaa !98
  switch i16 %17, label %18 [
    i16 0, label %22
    i16 32, label %20
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  br label %15, !llvm.loop !181

20:                                               ; preds = %15
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 0, ptr %16, align 2, !tbaa !98
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %24 = phi i8 [ %14, %20 ], [ 1, %15 ]
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %13, ptr noundef nonnull %23) #14
          to label %26 unwind label %33

26:                                               ; preds = %22
  br i1 %25, label %27, label %35

27:                                               ; preds = %26
  %28 = load ptr, ptr %1, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
          to label %32 unwind label %33

32:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 112, ptr noundef %31, ptr noundef %13, ptr noundef null, ptr noundef null) #14
          to label %35 unwind label %33

33:                                               ; preds = %49, %44, %36, %32, %27, %22
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  resume { ptr, i32 } %34

35:                                               ; preds = %32, %26
  br i1 %2, label %36, label %50

36:                                               ; preds = %35
  %37 = load ptr, ptr %11, align 8, !tbaa !59
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 15
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(61) %37, ptr noundef %13) #14
          to label %42 unwind label %33

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = load ptr, ptr %1, align 8, !tbaa !48
  %46 = getelementptr inbounds ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(56) %1) #14
          to label %49 unwind label %33

49:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 14, ptr noundef %48, ptr noundef %13, ptr noundef null, ptr noundef null) #14
          to label %50 unwind label %33

50:                                               ; preds = %49, %42, %35
  %51 = and i8 %24, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %12, label %53, !llvm.loop !182

53:                                               ; preds = %50
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(61) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %6) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !187
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !187
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #11
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !183
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator19postParseValidationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !191 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !119
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DTDValidator10getGrammarEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !192 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator10handlesDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !193 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !194 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !198 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !200 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !201
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !203 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !204
  %6 = load ptr, ptr %0, align 8, !tbaa !205
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #14
  store i32 %7, ptr %2, align 4, !tbaa !157
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !158
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !207

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !201
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #14
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !158
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !208, !llvm.loop !209

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !210 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !211

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !98
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !212

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !98
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !213

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
  %23 = load i16, ptr %22, align 2, !tbaa !98
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !214, !llvm.loop !215

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !173
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !176
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !174
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !183
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !186
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !189
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !187
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !164 {
  %3 = load ptr, ptr %0, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !217

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !218

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !117
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !119
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = load ptr, ptr %0, align 8, !tbaa !155
  %9 = load ptr, ptr %5, align 8, !tbaa !48
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !157
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !219
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !154
  %23 = load ptr, ptr %20, align 8, !tbaa !48
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !158
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !220

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !150
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !155
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !155
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !150
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !156
  store i32 %5, ptr %3, align 8, !tbaa !150
  %23 = load ptr, ptr %0, align 8, !tbaa !155
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !156
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !158
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !221
  %38 = load ptr, ptr %18, align 8, !tbaa !219
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !154
  %41 = load ptr, ptr %0, align 8, !tbaa !155
  %42 = load ptr, ptr %38, align 8, !tbaa !48
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !158
  store ptr %48, ptr %36, align 8, !tbaa !221
  store ptr %35, ptr %47, align 8, !tbaa !158
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !222

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !150
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !223

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !47 {
  store ptr %2, ptr %0, align 8, !tbaa !146
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !224
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
  store ptr null, ptr %0, align 8, !tbaa !224
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !224
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !226
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !224
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_712DTDValidatorD2Ev, ptr @_ZN11xercesc_2_712XMLValidatorD2Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPt, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 191815}
!38 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!40 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!42 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!43 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!45 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !56, i64 24}
!52 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !53, i64 0, !54, i64 8, !54, i64 9, !56, i64 16, !56, i64 24}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"bool", !55, i64 0}
!55 = !{!"omnipotent char", !50, i64 0}
!56 = !{!"any pointer", !55, i64 0}
!57 = !{!52, !56, i64 16}
!58 = !{!"function_entry_count", i64 3}
!59 = !{!60, !56, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712DTDValidatorE", !61, i64 0, !56, i64 40}
!61 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!62 = !{!"function_entry_count", i64 6}
!63 = !{!"function_entry_count", i64 1081787}
!64 = !{!61, !56, i64 32}
!65 = !{!66, !56, i64 360}
!66 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !67, i64 0, !68, i64 8, !54, i64 16, !54, i64 17, !54, i64 18, !54, i64 19, !54, i64 20, !54, i64 21, !54, i64 22, !54, i64 23, !54, i64 24, !54, i64 25, !54, i64 26, !54, i64 27, !54, i64 28, !54, i64 29, !54, i64 30, !54, i64 31, !54, i64 32, !54, i64 33, !54, i64 34, !54, i64 35, !54, i64 36, !54, i64 37, !54, i64 38, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !56, i64 72, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !54, i64 176, !70, i64 184, !56, i64 264, !73, i64 272, !56, i64 280, !56, i64 288, !56, i64 296, !56, i64 304, !56, i64 312, !56, i64 320, !56, i64 328, !56, i64 336, !56, i64 344, !72, i64 352, !56, i64 360, !74, i64 368, !75, i64 392, !75, i64 432, !75, i64 472, !75, i64 512, !75, i64 552, !75, i64 592, !75, i64 632, !76, i64 672}
!67 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!68 = !{!"long", !55, i64 0}
!69 = !{!"int", !55, i64 0}
!70 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !71, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !69, i64 40, !56, i64 48, !54, i64 56, !72, i64 60, !54, i64 64, !56, i64 72}
!71 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!72 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !55, i64 0}
!73 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !55, i64 0}
!74 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !69, i64 0, !56, i64 8, !56, i64 16}
!75 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !69, i64 0, !69, i64 4, !69, i64 8, !54, i64 12, !56, i64 16, !56, i64 24, !56, i64 32}
!76 = !{!"_ZTSN11xercesc_2_79ElemStackE", !69, i64 0, !69, i64 4, !77, i64 8, !56, i64 48, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !69, i64 72, !69, i64 76, !69, i64 80, !56, i64 88, !56, i64 96}
!77 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !53, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !69, i64 32, !69, i64 36}
!78 = !{!79, !82, i64 36}
!79 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !80, i64 0, !82, i64 36, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72}
!80 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !53, i64 0, !56, i64 8, !56, i64 16, !81, i64 24, !69, i64 28, !54, i64 32}
!81 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !55, i64 0}
!82 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !55, i64 0}
!83 = !{!"function_entry_count", i64 344419}
!84 = !{!66, !69, i64 52}
!85 = !{!86, !56, i64 24}
!86 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !54, i64 0, !87, i64 4, !69, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !54, i64 48}
!87 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !55, i64 0}
!88 = !{!86, !87, i64 4}
!89 = !{!86, !54, i64 48}
!90 = !{!86, !56, i64 40}
!91 = !{!"function_entry_count", i64 19496}
!92 = !{!93, !56, i64 32}
!93 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !53, i64 0, !94, i64 8, !87, i64 12, !95, i64 16, !54, i64 20, !54, i64 21, !69, i64 24, !56, i64 32, !56, i64 40, !56, i64 48}
!94 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !55, i64 0}
!95 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !55, i64 0}
!96 = !{!"function_entry_count", i64 593014}
!97 = !{!93, !87, i64 12}
!98 = !{!99, !99, i64 0}
!99 = !{!"short", !55, i64 0}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = distinct !{!102, !101}
!103 = !{!"function_entry_count", i64 401820}
!104 = !{!93, !94, i64 8}
!105 = !{!93, !56, i64 40}
!106 = !{!"function_entry_count", i64 1231717351}
!107 = !{!"branch_weights", i32 621, i32 -1469098093}
!108 = !{!"branch_weights", i32 408901017, i32 1}
!109 = !{!"branch_weights", i32 267, i32 4}
!110 = !{!"branch_weights", i32 1, i32 4}
!111 = !{!"branch_weights", i32 156, i32 112}
!112 = !{!"branch_weights", i32 1, i32 112}
!113 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!114 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!115 = distinct !{!115, !101}
!116 = !{!"function_entry_count", i64 191815}
!117 = !{!118, !56, i64 0}
!118 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !56, i64 0, !56, i64 8}
!119 = !{!118, !56, i64 8}
!120 = !{!"function_entry_count", i64 2453164456}
!121 = !{!"branch_weights", i32 1, i32 -1841802839}
!122 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!123 = !{!"branch_weights", i32 408669070, i32 -279908794}
!124 = distinct !{!124, !101}
!125 = !{!"function_entry_count", i64 558789}
!126 = !{!"branch_weights", i32 158605, i32 400186}
!127 = !{!"function_entry_count", i64 4}
!128 = !{!"function_entry_count", i64 1666453}
!129 = !{!66, !54, i64 18}
!130 = !{i8 0, i8 2}
!131 = !{}
!132 = !{!"function_entry_count", i64 311300}
!133 = !{!61, !56, i64 24}
!134 = !{!"function_entry_count", i64 7478295}
!135 = !{!70, !56, i64 16}
!136 = !{!"function_entry_count", i64 612}
!137 = !{!138, !56, i64 163968}
!138 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !69, i64 0, !55, i64 4, !69, i64 32772, !55, i64 32776, !55, i64 49160, !68, i64 114696, !68, i64 114704, !139, i64 114712, !56, i64 114720, !54, i64 114728, !54, i64 114729, !56, i64 114736, !69, i64 114744, !55, i64 114748, !69, i64 163900, !69, i64 163904, !140, i64 163908, !54, i64 163912, !141, i64 163916, !69, i64 163920, !54, i64 163924, !54, i64 163925, !56, i64 163928, !56, i64 163936, !54, i64 163944, !54, i64 163945, !56, i64 163952, !142, i64 163960, !56, i64 163968, !54, i64 163976, !72, i64 163980, !56, i64 163984}
!139 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !55, i64 0}
!140 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !55, i64 0}
!141 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !55, i64 0}
!142 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !55, i64 0}
!143 = !{!55, !55, i64 0}
!144 = !{!"function_entry_count", i64 4147}
!145 = !{!66, !56, i64 168}
!146 = !{!147, !56, i64 0}
!147 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !56, i64 0, !56, i64 8, !56, i64 16}
!148 = !{!52, !54, i64 8}
!149 = !{!52, !54, i64 9}
!150 = !{!151, !69, i64 24}
!151 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !56, i64 0, !54, i64 8, !56, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !56, i64 40}
!152 = !{!151, !69, i64 32}
!153 = !{!151, !54, i64 8}
!154 = !{!147, !56, i64 16}
!155 = !{!151, !56, i64 0}
!156 = !{!151, !56, i64 16}
!157 = !{!69, !69, i64 0}
!158 = !{!56, !56, i64 0}
!159 = !{!160, !56, i64 32}
!160 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !161, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !69, i64 56, !54, i64 60}
!161 = !{!"_ZTSN11xercesc_2_77GrammarE", !53, i64 0}
!162 = !{!163, !56, i64 32}
!163 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !53, i64 0, !69, i64 8, !69, i64 12, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64}
!164 = !{!"function_entry_count", i64 243874}
!165 = distinct !{!165, !101}
!166 = distinct !{!166, !101}
!167 = distinct !{!167, !101}
!168 = !{!160, !56, i64 16}
!169 = !{!160, !56, i64 8}
!170 = !{!171, !69, i64 8}
!171 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE", !172, i64 0, !69, i64 8, !56, i64 16, !56, i64 24}
!172 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE"}
!173 = !{!171, !56, i64 16}
!174 = !{!175, !69, i64 28}
!175 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !56, i64 0, !56, i64 8, !56, i64 16, !69, i64 24, !69, i64 28, !69, i64 32}
!176 = !{!171, !56, i64 24}
!177 = !{!175, !56, i64 16}
!178 = !{!80, !81, i64 24}
!179 = !{!"function_entry_count", i64 1668291}
!180 = !{!80, !56, i64 16}
!181 = distinct !{!181, !101}
!182 = distinct !{!182, !101}
!183 = !{!184, !69, i64 8}
!184 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE", !185, i64 0, !69, i64 8, !56, i64 16, !56, i64 24}
!185 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE"}
!186 = !{!184, !56, i64 16}
!187 = !{!188, !69, i64 28}
!188 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !56, i64 0, !56, i64 8, !56, i64 16, !69, i64 24, !69, i64 28, !69, i64 32}
!189 = !{!184, !56, i64 24}
!190 = !{!188, !56, i64 16}
!191 = !{!"function_entry_count", i64 52059}
!192 = !{!"function_entry_count", i64 552}
!193 = !{!"function_entry_count", i64 549}
!194 = !{!"function_entry_count", i64 1}
!195 = !{!196, !56, i64 40}
!196 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !197, i64 8, !56, i64 16, !69, i64 24, !56, i64 32, !56, i64 40}
!197 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!198 = !{!"function_entry_count", i64 1068727}
!199 = !{!"function_entry_count", i64 5836268}
!200 = !{!"function_entry_count", i64 1069174}
!201 = !{!202, !56, i64 0}
!202 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !56, i64 0, !56, i64 8}
!203 = !{!"function_entry_count", i64 5}
!204 = !{!188, !69, i64 32}
!205 = !{!188, !56, i64 0}
!206 = !{!188, !56, i64 8}
!207 = !{!"branch_weights", i32 5, i32 1}
!208 = !{!"branch_weights", i32 1, i32 0}
!209 = distinct !{!209, !101}
!210 = !{!"function_entry_count", i64 4646679}
!211 = !{!"branch_weights", i32 1, i32 4646680}
!212 = !{!"branch_weights", i32 1216534, i32 3430147}
!213 = !{!"branch_weights", i32 1, i32 3430146}
!214 = !{!"branch_weights", i32 3430146, i32 42249130}
!215 = distinct !{!215, !101}
!216 = !{!163, !56, i64 24}
!217 = !{!"branch_weights", i32 191816, i32 52060}
!218 = !{!"branch_weights", i32 1, i32 52060}
!219 = !{!151, !56, i64 40}
!220 = distinct !{!220, !101}
!221 = !{!147, !56, i64 8}
!222 = distinct !{!222, !101}
!223 = distinct !{!223, !101}
!224 = !{!225, !56, i64 0}
!225 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEE", !56, i64 0, !56, i64 8}
!226 = !{!225, !56, i64 8}
