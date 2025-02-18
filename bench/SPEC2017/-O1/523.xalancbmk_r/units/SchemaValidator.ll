; ModuleID = 'SchemaValidator.cpp'
source_filename = "SchemaValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.11" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator.1", i8, i32, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XMLEnumerator.1" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.2" = type { %"class.xercesc_2_7::XMLEnumerator.3", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.3" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.4" = type { %"class.xercesc_2_7::XMLEnumerator.5", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.5" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf.12" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::RefHashTableOf.15" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.6" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.7" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::ArrayJanitor.8" = type { ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.10" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHashTableBucketElem.13" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.14" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv = comdat any

$_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIbED2Ev = comdat any

$_ZNK11xercesc_2_715SchemaValidator10getGrammarEv = comdat any

$_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE = comdat any

$_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_715SchemaValidatorE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715SchemaValidatorE, ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_715SchemaValidatorD0Ev, ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715SchemaValidator19postParseValidationEv, ptr @_ZN11xercesc_2_715SchemaValidator5resetEv, ptr @_ZNK11xercesc_2_715SchemaValidator18requiresNamespacesEv, ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_715SchemaValidator10getGrammarEv, ptr @_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE, ptr @_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv, ptr @_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv] }, align 8
@.str = private unnamed_addr constant [20 x i8] c"SchemaValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_715SchemaValidatorE = dso_local constant [33 x i8] c"N11xercesc_2_715SchemaValidatorE\00", align 1
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715SchemaValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715SchemaValidatorE, ptr @_ZTIN11xercesc_2_712XMLValidatorE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev, ptr @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [71 x i8] c"N11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_713XMLEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8

@_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE
@_ZN11xercesc_2_715SchemaValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !62 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !67, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !79

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !64
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #18, !prof !80
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !81, !range !75, !noundef !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !82

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !84

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #18, !prof !85
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !87

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #18, !prof !88
  br label %33

33:                                               ; preds = %25, %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !67, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !64
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #18
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !81, !range !75, !noundef !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #18
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #18
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_715SchemaValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store i32 1023, ptr %7, align 4, !tbaa !95
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 2
  store i32 0, ptr %8, align 8, !tbaa !96
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 3
  store i8 0, ptr %9, align 4, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 4
  store ptr %2, ptr %10, align 8, !tbaa !98
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2048), !prof !99
  store ptr %16, ptr %12, align 8, !tbaa !100
  store i16 0, ptr %16, align 2, !tbaa !101
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %18, align 1, !tbaa !104
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  invoke void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef null)
          to label %20 unwind label %39, !prof !105

20:                                               ; preds = %3
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %21, i8 0, i64 18, i1 false)
  %22 = load ptr, ptr %4, align 8, !tbaa !90
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22)
          to label %24 unwind label %41, !prof !105

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !tbaa !90
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1
  store i8 0, ptr %26, align 8, !tbaa !106
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 1
  store i32 0, ptr %27, align 4, !tbaa !108
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 2
  store i32 8, ptr %28, align 8, !tbaa !109
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 3
  store ptr null, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 4
  store ptr %25, ptr %30, align 8, !tbaa !111
  %31 = load ptr, ptr %25, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 64)
          to label %35 unwind label %43, !prof !99

35:                                               ; preds = %24
  store ptr %34, ptr %29, align 8, !tbaa !110
  %36 = load i32, ptr %28, align 8, !tbaa !109
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %38, i1 false), !prof !112
  store ptr %23, ptr %21, align 8, !tbaa !113
  ret void

39:                                               ; preds = %3
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %45

41:                                               ; preds = %20
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %24
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #18
  br label %45

45:                                               ; preds = %41, %43, %39
  %46 = phi { ptr, i32 } [ %40, %39 ], [ %44, %43 ], [ %42, %41 ]
  %47 = load ptr, ptr %10, align 8, !tbaa !98
  %48 = load ptr, ptr %12, align 8, !tbaa !100
  %49 = load ptr, ptr %47, align 8, !tbaa !64
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %48)
          to label %55 unwind label %52

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #19
  unreachable

55:                                               ; preds = %45
  resume { ptr, i32 } %46
}

declare void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_715SchemaValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !105

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !64
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !115

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %11, i64 0, i32 1, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %11, i64 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = load ptr, ptr %15, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17)
          to label %24 unwind label %21, !prof !116

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #19
  unreachable

24:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #18
  br label %25

25:                                               ; preds = %24, %9
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29, !prof !105

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %27, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %27, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = load ptr, ptr %31, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33)
          to label %40 unwind label %37

37:                                               ; preds = %29
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #19
  unreachable

40:                                               ; preds = %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #18
  br label %41

41:                                               ; preds = %40, %25
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  %46 = load ptr, ptr %43, align 8, !tbaa !64
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %45)
          to label %52 unwind label %49, !prof !116

49:                                               ; preds = %41
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #19
  unreachable

52:                                               ; preds = %41
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #5 align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_715SchemaValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca i32, align 4
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 17
  store i8 0, ptr %8, align 1, !tbaa !120
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %17, !prof !121

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 358, i32 noundef 117, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #18
  br label %504

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %19)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !122

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %20, i64 0, i32 10
  br label %31

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %26, i64 0, i32 10
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 2
  %30 = select i1 %27, ptr %29, ptr %28, !prof !131
  br label %31

31:                                               ; preds = %24, %22
  %32 = phi ptr [ %23, %22 ], [ %30, %24 ]
  %33 = load i32, ptr %32, align 4, !tbaa !132
  switch i32 %33, label %107 [
    i32 0, label %34
    i32 4, label %37
    i32 3, label %37
    i32 2, label %37
  ], !prof !133

34:                                               ; preds = %31
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %498, label %36, !prof !134

36:                                               ; preds = %34
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %502

37:                                               ; preds = %31, %31, %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %39 = load i8, ptr %38, align 8, !tbaa !135, !range !75, !noundef !76
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %73, label %41, !prof !136

41:                                               ; preds = %37
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %45 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !100
  %47 = load i32, ptr %44, align 8, !tbaa !137
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %46, i64 %48
  store i16 0, ptr %49, align 2, !tbaa !101
  %50 = icmp eq ptr %46, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i16, ptr %46, align 2, !tbaa !101
  %53 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %54 = icmp eq i16 %52, %53
  br i1 %54, label %58, label %69

55:                                               ; preds = %43
  %56 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %498, label %69

58:                                               ; preds = %51, %63
  %59 = phi i16 [ %66, %63 ], [ %52, %51 ]
  %60 = phi ptr [ %65, %63 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %51 ]
  %61 = phi ptr [ %64, %63 ], [ %46, %51 ]
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %498, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %61, i64 1
  %65 = getelementptr inbounds i16, ptr %60, i64 1
  %66 = load i16, ptr %64, align 2, !tbaa !101
  %67 = load i16, ptr %65, align 2, !tbaa !101
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !llvm.loop !138

69:                                               ; preds = %63, %51, %55, %41
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !141
  %72 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %71)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 75, ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %498

73:                                               ; preds = %37
  %74 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %20, i64 0, i32 25
  %75 = load ptr, ptr %74, align 8, !tbaa !142
  %76 = icmp ne ptr %75, null
  %77 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %20, i64 0, i32 20
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  %80 = select i1 %76, i1 true, i1 %79, !prof !136
  br i1 %80, label %83, label %81, !prof !136

81:                                               ; preds = %73
  %82 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %20, i1 noundef zeroext false)
  store ptr %82, ptr %74, align 8, !tbaa !142
  br label %83

83:                                               ; preds = %73, %81
  %84 = load ptr, ptr %74, align 8, !tbaa !142
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !144
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %86, i64 0, i32 28
  %88 = load i32, ptr %87, align 4, !tbaa !145
  %89 = load ptr, ptr %84, align 8, !tbaa !64
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %2, i32 noundef %3, i32 noundef %88), !prof !156
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %103, label %94, !prof !136

94:                                               ; preds = %83
  %95 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !157
  %97 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !158
  %99 = load ptr, ptr %84, align 8, !tbaa !64
  %100 = getelementptr inbounds ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef i32 %101(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %2, i32 noundef %3, i32 noundef %88, ptr noundef nonnull %96, ptr noundef %98)
  br label %103

103:                                              ; preds = %94, %83
  %104 = phi i32 [ %102, %94 ], [ -1, %83 ]
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %502, label %106, !prof !136

106:                                              ; preds = %103
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %502

107:                                              ; preds = %31
  %108 = icmp eq i32 %33, 5
  switch i32 %33, label %491 [
    i32 5, label %109
    i32 1, label %109
  ], !prof !160

109:                                              ; preds = %107, %107
  %110 = icmp ne i32 %3, 0
  %111 = and i1 %110, %108
  br i1 %111, label %112, label %116, !prof !161

112:                                              ; preds = %109
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !141
  %115 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %114)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 70, ptr noundef %115, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %498

116:                                              ; preds = %109
  %117 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %118 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !100
  %120 = load i32, ptr %117, align 8, !tbaa !137
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i16, ptr %119, i64 %121
  store i16 0, ptr %122, align 2, !tbaa !101
  %123 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !162
  %125 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !163
  %127 = icmp eq ptr %126, null
  br i1 %127, label %439, label %128, !prof !161

128:                                              ; preds = %116
  %129 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %130 = load i8, ptr %129, align 8, !tbaa !135, !range !75, !noundef !76
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %160, label %132, !prof !131

132:                                              ; preds = %128
  %133 = icmp eq ptr %119, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %132
  %135 = load i16, ptr %119, align 2, !tbaa !101
  %136 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %137 = icmp eq i16 %135, %136
  br i1 %137, label %141, label %152

138:                                              ; preds = %132
  %139 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %140 = icmp eq i16 %139, 0
  br label %152

141:                                              ; preds = %134, %146
  %142 = phi i16 [ %149, %146 ], [ %135, %134 ]
  %143 = phi ptr [ %148, %146 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %134 ]
  %144 = phi ptr [ %147, %146 ], [ %119, %134 ]
  %145 = icmp eq i16 %142, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds i16, ptr %144, i64 1
  %148 = getelementptr inbounds i16, ptr %143, i64 1
  %149 = load i16, ptr %147, align 2, !tbaa !101
  %150 = load i16, ptr %148, align 2, !tbaa !101
  %151 = icmp eq i16 %149, %150
  br i1 %151, label %141, label %152, !llvm.loop !138

152:                                              ; preds = %141, %146, %134, %138
  %153 = phi i1 [ %140, %138 ], [ false, %134 ], [ %145, %146 ], [ %145, %141 ]
  %154 = icmp eq ptr %124, null
  %155 = and i1 %154, %153
  br i1 %155, label %498, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !141
  %159 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %158)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 75, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %498

160:                                              ; preds = %128
  %161 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %126, i64 0, i32 9
  %162 = load i32, ptr %161, align 4, !tbaa !164
  %163 = icmp eq i32 %162, 23
  br i1 %163, label %164, label %221, !prof !161

164:                                              ; preds = %160
  %165 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 8
  %166 = load ptr, ptr %165, align 8, !tbaa !117
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !90
  %171 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %170)
  %172 = load ptr, ptr %169, align 8, !tbaa !90
  store i32 0, ptr %171, align 8, !tbaa !137
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 1
  store i32 1023, ptr %173, align 4, !tbaa !95
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 2
  store i32 0, ptr %174, align 8, !tbaa !96
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 3
  store i8 0, ptr %175, align 4, !tbaa !97
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 4
  store ptr %172, ptr %176, align 8, !tbaa !98
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %177, i8 0, i64 16, i1 false)
  %178 = load ptr, ptr %172, align 8, !tbaa !64
  %179 = getelementptr inbounds ptr, ptr %178, i64 2
  %180 = load ptr, ptr %179, align 8
  %181 = invoke noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %172, i64 noundef 2048)
          to label %182 unwind label %184

182:                                              ; preds = %168
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %171, i64 0, i32 6
  store ptr %181, ptr %183, align 8, !tbaa !100
  store i16 0, ptr %181, align 2, !tbaa !101
  store ptr %171, ptr %165, align 8, !tbaa !117
  br label %186

184:                                              ; preds = %168
  %185 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %171, ptr noundef %170) #18
  br label %504

186:                                              ; preds = %182, %164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 -1, ptr %5, align 4, !tbaa !168
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %188 = load ptr, ptr %187, align 8, !tbaa !144
  %189 = load ptr, ptr %165, align 8, !tbaa !117
  %190 = load ptr, ptr %188, align 8, !tbaa !64
  %191 = getelementptr inbounds ptr, ptr %190, i64 7
  %192 = load ptr, ptr %191, align 8
  %193 = call noundef i32 %192(ptr noundef nonnull align 8 dereferenceable(776) %188, ptr noundef %119, ptr noundef nonnull align 8 dereferenceable(40) %189, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %194 = load ptr, ptr %165, align 8, !tbaa !117
  %195 = load ptr, ptr %187, align 8, !tbaa !144
  %196 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %195, i32 noundef %193)
  store i32 0, ptr %194, align 8, !tbaa !137
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %194, ptr noundef %196)
  %197 = load ptr, ptr %165, align 8, !tbaa !117
  %198 = load i32, ptr %197, align 8, !tbaa !137
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %197, i64 0, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !95
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %186
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %197, i32 noundef 1)
  br label %203

203:                                              ; preds = %186, %202
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %197, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !100
  %206 = load i32, ptr %197, align 8, !tbaa !137
  %207 = add i32 %206, 1
  store i32 %207, ptr %197, align 8, !tbaa !137
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i16, ptr %205, i64 %208
  store i16 58, ptr %209, align 2, !tbaa !101
  %210 = load ptr, ptr %165, align 8, !tbaa !117
  %211 = load i32, ptr %5, align 4, !tbaa !168
  %212 = sext i32 %211 to i64
  %213 = getelementptr i16, ptr %119, i64 %212
  %214 = getelementptr i16, ptr %213, i64 1
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %210, ptr noundef %214)
  %215 = load ptr, ptr %165, align 8, !tbaa !117
  %216 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %215, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !100
  %218 = load i32, ptr %215, align 8, !tbaa !137
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i16, ptr %217, i64 %219
  store i16 0, ptr %220, align 2, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %221

221:                                              ; preds = %203, %160
  %222 = phi ptr [ %217, %203 ], [ %119, %160 ]
  %223 = icmp eq ptr %124, null
  %224 = icmp eq ptr %222, null
  br i1 %223, label %306, label %225, !prof !131

225:                                              ; preds = %221
  br i1 %224, label %230, label %226

226:                                              ; preds = %225
  %227 = load i16, ptr %222, align 2, !tbaa !101
  %228 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %229 = icmp eq i16 %227, %228
  br i1 %229, label %233, label %288

230:                                              ; preds = %225
  %231 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %244, label %288

233:                                              ; preds = %226, %238
  %234 = phi i16 [ %241, %238 ], [ %227, %226 ]
  %235 = phi ptr [ %240, %238 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %226 ]
  %236 = phi ptr [ %239, %238 ], [ %222, %226 ]
  %237 = icmp eq i16 %234, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds i16, ptr %236, i64 1
  %240 = getelementptr inbounds i16, ptr %235, i64 1
  %241 = load i16, ptr %239, align 2, !tbaa !101
  %242 = load i16, ptr %240, align 2, !tbaa !101
  %243 = icmp eq i16 %241, %242
  br i1 %243, label %233, label %288, !llvm.loop !138

244:                                              ; preds = %233, %230
  store i8 1, ptr %8, align 1, !tbaa !120
  %245 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !144
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %246, i64 0, i32 41
  %248 = load ptr, ptr %247, align 8, !tbaa !169
  %249 = icmp eq ptr %248, null
  br i1 %249, label %269, label %250

250:                                              ; preds = %244
  %251 = load i16, ptr %124, align 2, !tbaa !101
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %250, %253
  %254 = phi ptr [ %255, %253 ], [ %124, %250 ]
  %255 = getelementptr inbounds i16, ptr %254, i64 1
  %256 = load i16, ptr %255, align 2, !tbaa !101
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %253, !llvm.loop !170

258:                                              ; preds = %253
  %259 = ptrtoint ptr %255 to i64
  %260 = ptrtoint ptr %124 to i64
  %261 = sub i64 %259, %260
  %262 = lshr exact i64 %261, 1
  %263 = trunc i64 %262 to i32
  br label %264

264:                                              ; preds = %250, %258
  %265 = phi i32 [ %263, %258 ], [ 0, %250 ]
  %266 = load ptr, ptr %248, align 8, !tbaa !64
  %267 = getelementptr inbounds ptr, ptr %266, i64 2
  %268 = load ptr, ptr %267, align 8
  call void %268(ptr noundef nonnull align 8 dereferenceable(8) %248, ptr noundef nonnull %124, i32 noundef %265, i1 noundef zeroext false)
  br label %269

269:                                              ; preds = %264, %244
  %270 = load ptr, ptr %125, align 8, !tbaa !163
  %271 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 19
  %272 = load ptr, ptr %271, align 8, !tbaa !171
  %273 = icmp eq ptr %270, %272
  br i1 %273, label %287, label %274

274:                                              ; preds = %269
  %275 = load ptr, ptr %18, align 8, !tbaa !113
  %276 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %275)
  %277 = load ptr, ptr %276, align 8, !tbaa !172
  %278 = icmp eq ptr %277, null
  br i1 %278, label %331, label %279

279:                                              ; preds = %274
  %280 = load ptr, ptr %125, align 8, !tbaa !163
  %281 = load ptr, ptr %18, align 8, !tbaa !113
  %282 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %281)
  %283 = load ptr, ptr %282, align 8, !tbaa !172
  %284 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %283, i64 0, i32 18
  %285 = load ptr, ptr %284, align 8, !tbaa !173
  %286 = icmp eq ptr %280, %285
  br i1 %286, label %287, label %331

287:                                              ; preds = %279, %269
  br label %331

288:                                              ; preds = %238, %226, %230
  %289 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 9
  %290 = load i32, ptr %289, align 8, !tbaa !174
  %291 = and i32 %290, 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %331, label %293

293:                                              ; preds = %288
  %294 = load ptr, ptr %125, align 8, !tbaa !163
  %295 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !90
  %297 = load ptr, ptr %294, align 8, !tbaa !64
  %298 = getelementptr inbounds ptr, ptr %297, i64 10
  %299 = load ptr, ptr %298, align 8
  %300 = call noundef i32 %299(ptr noundef nonnull align 8 dereferenceable(104) %294, ptr noundef %222, ptr noundef nonnull %124, ptr noundef %296)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %331, label %302

302:                                              ; preds = %293
  %303 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !141
  %305 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %304)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 76, ptr noundef %305, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %331

306:                                              ; preds = %221
  br i1 %224, label %311, label %307, !prof !161

307:                                              ; preds = %306
  %308 = load i16, ptr %222, align 2, !tbaa !101
  %309 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %310 = icmp eq i16 %308, %309
  br i1 %310, label %314, label %331, !prof !175

311:                                              ; preds = %306
  %312 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %325, label %331

314:                                              ; preds = %307, %319
  %315 = phi i16 [ %322, %319 ], [ %308, %307 ]
  %316 = phi ptr [ %321, %319 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %307 ]
  %317 = phi ptr [ %320, %319 ], [ %222, %307 ]
  %318 = icmp eq i16 %315, 0
  br i1 %318, label %325, label %319, !prof !176

319:                                              ; preds = %314
  %320 = getelementptr inbounds i16, ptr %317, i64 1
  %321 = getelementptr inbounds i16, ptr %316, i64 1
  %322 = load i16, ptr %320, align 2, !tbaa !101
  %323 = load i16, ptr %321, align 2, !tbaa !101
  %324 = icmp eq i16 %322, %323
  br i1 %324, label %314, label %331, !prof !177, !llvm.loop !138

325:                                              ; preds = %314, %311
  %326 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 9
  %327 = load i32, ptr %326, align 8, !tbaa !174
  %328 = and i32 %327, 1
  %329 = icmp eq i32 %328, 0
  %330 = select i1 %329, ptr %222, ptr null, !prof !176
  br label %331

331:                                              ; preds = %319, %307, %325, %274, %279, %311, %287, %293, %302, %288
  %332 = phi ptr [ null, %287 ], [ %222, %302 ], [ %222, %293 ], [ %222, %288 ], [ %222, %311 ], [ %124, %279 ], [ %124, %274 ], [ %330, %325 ], [ %222, %307 ], [ %222, %319 ]
  %333 = phi i1 [ false, %287 ], [ false, %302 ], [ false, %293 ], [ false, %288 ], [ false, %311 ], [ true, %279 ], [ true, %274 ], [ false, %325 ], [ false, %307 ], [ false, %319 ]
  %334 = load i8, ptr %7, align 8, !tbaa !119, !range !75, !noundef !76
  %335 = icmp eq i8 %334, 0
  %336 = icmp ne ptr %332, null
  %337 = and i1 %336, %335
  br i1 %337, label %338, label %498, !prof !131

338:                                              ; preds = %331
  %339 = load ptr, ptr %125, align 8, !tbaa !163
  %340 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %341 = load ptr, ptr %340, align 8, !tbaa !144
  %342 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %341, i64 0, i32 48
  %343 = load i8, ptr %342, align 8, !tbaa !178, !range !75, !noundef !76
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %358, !prof !161

345:                                              ; preds = %338
  %346 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %341, i64 0, i32 47
  %347 = load ptr, ptr %346, align 8, !tbaa !179
  %348 = load ptr, ptr %341, align 8, !tbaa !64
  %349 = getelementptr inbounds ptr, ptr %348, i64 5
  %350 = load ptr, ptr %349, align 8
  %351 = invoke noundef ptr %350(ptr noundef nonnull align 8 dereferenceable(776) %341)
          to label %352 unwind label %403

352:                                              ; preds = %345
  %353 = load ptr, ptr %347, align 8, !tbaa !64
  %354 = getelementptr inbounds ptr, ptr %353, i64 9
  %355 = load ptr, ptr %354, align 8
  %356 = invoke noundef ptr %355(ptr noundef nonnull align 8 dereferenceable(16) %347, ptr noundef %351)
          to label %357 unwind label %403

357:                                              ; preds = %352
  store i8 1, ptr %342, align 8, !tbaa !178
  br label %358

358:                                              ; preds = %338, %357
  %359 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %341, i64 0, i32 47
  %360 = load ptr, ptr %359, align 8, !tbaa !179
  %361 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !90
  %363 = load ptr, ptr %339, align 8, !tbaa !64
  %364 = getelementptr inbounds ptr, ptr %363, i64 8
  %365 = load ptr, ptr %364, align 8
  invoke void %365(ptr noundef nonnull align 8 dereferenceable(104) %339, ptr noundef nonnull %332, ptr noundef %360, ptr noundef %362)
          to label %366 unwind label %403, !prof !180

366:                                              ; preds = %358
  br i1 %333, label %367, label %498, !prof !161

367:                                              ; preds = %366
  %368 = load ptr, ptr %125, align 8, !tbaa !163
  %369 = load ptr, ptr %361, align 8, !tbaa !90
  %370 = load ptr, ptr %368, align 8, !tbaa !64
  %371 = getelementptr inbounds ptr, ptr %370, i64 7
  %372 = load ptr, ptr %371, align 8
  %373 = invoke noundef ptr %372(ptr noundef nonnull align 8 dereferenceable(104) %368, ptr noundef nonnull %332, ptr noundef %369, i1 noundef zeroext false)
          to label %374 unwind label %405

374:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %375 = load ptr, ptr %361, align 8, !tbaa !90
  store ptr %373, ptr %6, align 8, !tbaa !181
  %376 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %375, ptr %376, align 8, !tbaa !183
  %377 = load ptr, ptr %125, align 8, !tbaa !163
  %378 = load ptr, ptr %340, align 8, !tbaa !144
  %379 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %378, i64 0, i32 48
  %380 = load i8, ptr %379, align 8, !tbaa !178, !range !75, !noundef !76
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %395

382:                                              ; preds = %374
  %383 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %378, i64 0, i32 47
  %384 = load ptr, ptr %383, align 8, !tbaa !179
  %385 = load ptr, ptr %378, align 8, !tbaa !64
  %386 = getelementptr inbounds ptr, ptr %385, i64 5
  %387 = load ptr, ptr %386, align 8
  %388 = invoke noundef ptr %387(ptr noundef nonnull align 8 dereferenceable(776) %378)
          to label %389 unwind label %407

389:                                              ; preds = %382
  %390 = load ptr, ptr %384, align 8, !tbaa !64
  %391 = getelementptr inbounds ptr, ptr %390, i64 9
  %392 = load ptr, ptr %391, align 8
  %393 = invoke noundef ptr %392(ptr noundef nonnull align 8 dereferenceable(16) %384, ptr noundef %388)
          to label %394 unwind label %407

394:                                              ; preds = %389
  store i8 1, ptr %379, align 8, !tbaa !178
  br label %395

395:                                              ; preds = %374, %394
  %396 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %378, i64 0, i32 47
  %397 = load ptr, ptr %396, align 8, !tbaa !179
  %398 = load ptr, ptr %361, align 8, !tbaa !90
  %399 = load ptr, ptr %377, align 8, !tbaa !64
  %400 = getelementptr inbounds ptr, ptr %399, i64 8
  %401 = load ptr, ptr %400, align 8
  invoke void %401(ptr noundef nonnull align 8 dereferenceable(104) %377, ptr noundef %373, ptr noundef %397, ptr noundef %398)
          to label %402 unwind label %407

402:                                              ; preds = %395
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %498

403:                                              ; preds = %352, %345, %358
  %404 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %409

405:                                              ; preds = %367
  %406 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %409

407:                                              ; preds = %389, %382, %395
  %408 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %409

409:                                              ; preds = %405, %407, %403
  %410 = phi { ptr, i32 } [ %404, %403 ], [ %408, %407 ], [ %406, %405 ]
  %411 = extractvalue { ptr, i32 } %410, 0
  %412 = extractvalue { ptr, i32 } %410, 1
  %413 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %409
  %416 = call ptr @__cxa_begin_catch(ptr %411) #18
  %417 = load ptr, ptr %416, align 8, !tbaa !64
  %418 = getelementptr inbounds ptr, ptr %417, i64 2
  %419 = load ptr, ptr %418, align 8
  %420 = invoke noundef ptr %419(ptr noundef nonnull align 8 dereferenceable(48) %416)
          to label %421 unwind label %437

421:                                              ; preds = %415
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %416, i64 0, i32 4
  %423 = load ptr, ptr %422, align 8, !tbaa !184
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 46, ptr noundef %420, ptr noundef %423, ptr noundef null, ptr noundef null)
          to label %424 unwind label %437

424:                                              ; preds = %421
  store i8 1, ptr %7, align 8, !tbaa !119
  call void @__cxa_end_catch()
  br label %498

425:                                              ; preds = %409
  %426 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %427 = icmp eq i32 %412, %426
  %428 = call ptr @__cxa_begin_catch(ptr %411) #18
  br i1 %427, label %429, label %430

429:                                              ; preds = %425
  invoke void @__cxa_rethrow() #20
          to label %509 unwind label %435

430:                                              ; preds = %425
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 78)
          to label %431 unwind label %433

431:                                              ; preds = %430
  invoke void @__cxa_rethrow() #20
          to label %432 unwind label %433

432:                                              ; preds = %431
  unreachable

433:                                              ; preds = %431, %430
  %434 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %504 unwind label %506

435:                                              ; preds = %429
  %436 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %504 unwind label %506

437:                                              ; preds = %421, %415
  %438 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %504 unwind label %506

439:                                              ; preds = %116
  br i1 %108, label %440, label %444

440:                                              ; preds = %439
  %441 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !141
  %443 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %442)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 71, ptr noundef %443, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %7, align 8, !tbaa !119
  br label %498

444:                                              ; preds = %439
  %445 = icmp eq ptr %124, null
  br i1 %445, label %498, label %446

446:                                              ; preds = %444
  %447 = icmp eq ptr %119, null
  br i1 %447, label %452, label %448

448:                                              ; preds = %446
  %449 = load i16, ptr %119, align 2, !tbaa !101
  %450 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %451 = icmp eq i16 %449, %450
  br i1 %451, label %455, label %498

452:                                              ; preds = %446
  %453 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !101
  %454 = icmp eq i16 %453, 0
  br i1 %454, label %466, label %498

455:                                              ; preds = %448, %460
  %456 = phi i16 [ %463, %460 ], [ %449, %448 ]
  %457 = phi ptr [ %462, %460 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %448 ]
  %458 = phi ptr [ %461, %460 ], [ %119, %448 ]
  %459 = icmp eq i16 %456, 0
  br i1 %459, label %466, label %460

460:                                              ; preds = %455
  %461 = getelementptr inbounds i16, ptr %458, i64 1
  %462 = getelementptr inbounds i16, ptr %457, i64 1
  %463 = load i16, ptr %461, align 2, !tbaa !101
  %464 = load i16, ptr %462, align 2, !tbaa !101
  %465 = icmp eq i16 %463, %464
  br i1 %465, label %455, label %498, !llvm.loop !138

466:                                              ; preds = %455, %452
  store i8 1, ptr %8, align 1, !tbaa !120
  %467 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %468 = load ptr, ptr %467, align 8, !tbaa !144
  %469 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %468, i64 0, i32 41
  %470 = load ptr, ptr %469, align 8, !tbaa !169
  %471 = icmp eq ptr %470, null
  br i1 %471, label %498, label %472

472:                                              ; preds = %466
  %473 = load i16, ptr %124, align 2, !tbaa !101
  %474 = icmp eq i16 %473, 0
  br i1 %474, label %486, label %475

475:                                              ; preds = %472, %475
  %476 = phi ptr [ %477, %475 ], [ %124, %472 ]
  %477 = getelementptr inbounds i16, ptr %476, i64 1
  %478 = load i16, ptr %477, align 2, !tbaa !101
  %479 = icmp eq i16 %478, 0
  br i1 %479, label %480, label %475, !llvm.loop !170

480:                                              ; preds = %475
  %481 = ptrtoint ptr %477 to i64
  %482 = ptrtoint ptr %124 to i64
  %483 = sub i64 %481, %482
  %484 = lshr exact i64 %483, 1
  %485 = trunc i64 %484 to i32
  br label %486

486:                                              ; preds = %472, %480
  %487 = phi i32 [ %485, %480 ], [ 0, %472 ]
  %488 = load ptr, ptr %470, align 8, !tbaa !64
  %489 = getelementptr inbounds ptr, ptr %488, i64 2
  %490 = load ptr, ptr %489, align 8
  tail call void %490(ptr noundef nonnull align 8 dereferenceable(8) %470, ptr noundef nonnull %124, i32 noundef %487, i1 noundef zeroext false)
  br label %498

491:                                              ; preds = %107
  %492 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %493 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %492, ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 21, ptr noundef %494)
          to label %495 unwind label %496

495:                                              ; preds = %491
  tail call void @__cxa_throw(ptr nonnull %492, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

496:                                              ; preds = %491
  %497 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %492) #18
  br label %504

498:                                              ; preds = %58, %460, %448, %156, %152, %444, %466, %486, %452, %440, %366, %402, %424, %331, %55, %69, %112, %34
  %499 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %499, align 8, !tbaa !135
  %500 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %500, align 8, !tbaa !103
  %501 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr null, ptr %501, align 8, !tbaa !163
  br label %502

502:                                              ; preds = %103, %106, %498, %36
  %503 = phi i32 [ 0, %36 ], [ -1, %498 ], [ %104, %106 ], [ %104, %103 ]
  ret i32 %503

504:                                              ; preds = %437, %435, %433, %496, %184, %15
  %505 = phi { ptr, i32 } [ %16, %15 ], [ %497, %496 ], [ %185, %184 ], [ %434, %433 ], [ %436, %435 ], [ %438, %437 ]
  resume { ptr, i32 } %505

506:                                              ; preds = %437, %435, %433
  %507 = landingpad { ptr, i32 }
          catch ptr null
  %508 = extractvalue { ptr, i32 } %507, 0
  call void @__clang_call_terminate(ptr %508) #19
  unreachable

509:                                              ; preds = %429
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !121

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !187

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret ptr %33
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !188 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !189

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !101
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !190

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !101
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !191, !llvm.loop !192

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !137
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !95
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !193

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = load i32, ptr %0, align 8, !tbaa !137
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !194
  %28 = load i32, ptr %0, align 8, !tbaa !137
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !137
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !196

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !197

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.4, i32 noundef 198, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !199

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !200

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !201

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %2) unnamed_addr #6 align 2 !prof !202 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %2, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !209
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !212
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !214
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %11, ptr noundef %9, i32 noundef %7)
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %13)
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 2
  store i32 %15, ptr %18, align 4, !tbaa !217
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 9
  store i8 0, ptr %19, align 8, !tbaa !218
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !219
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %2, align 8, !tbaa !103
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %3, align 1, !tbaa !104
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %5, i64 0, i32 1, i32 1
  store i32 0, ptr %6, align 4, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !105

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(56) %8) #18
  br label %14

14:                                               ; preds = %10, %1
  store ptr null, ptr %7, align 8, !tbaa !114
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr null, ptr %15, align 8, !tbaa !163
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %16, align 8, !tbaa !135
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !137
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  store i16 0, ptr %19, align 2, !tbaa !101
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %20, align 8, !tbaa !119
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18requiresNamespacesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !62 {
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %6 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %8, align 8, !tbaa !119
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %10, i64 0, i32 48
  %12 = load i8, ptr %11, align 8, !tbaa !178, !range !75, !noundef !76
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25, !prof !221

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %10, i64 0, i32 47
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = load ptr, ptr %10, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(776) %10), !prof !222
  %21 = load ptr, ptr %16, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %20), !prof !223
  store i8 1, ptr %11, align 8, !tbaa !178
  br label %25

25:                                               ; preds = %5, %14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %10, i64 0, i32 47
  %27 = load ptr, ptr %26, align 8, !tbaa !179
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(16) %27, i1 noundef zeroext true), !prof !224
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !214
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !225
  %35 = and i32 %34, -3
  %36 = icmp ne i32 %35, 1
  %37 = or i1 %36, %3
  br i1 %37, label %72, label %38, !prof !226

38:                                               ; preds = %25
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !213
  %41 = icmp eq ptr %2, null
  %42 = icmp eq ptr %40, null
  %43 = or i1 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr %2, align 2, !tbaa !101
  %46 = load i16, ptr %40, align 2, !tbaa !101
  %47 = icmp eq i16 %45, %46
  br i1 %47, label %56, label %67

48:                                               ; preds = %38
  br i1 %41, label %52, label %49

49:                                               ; preds = %48
  %50 = load i16, ptr %2, align 2, !tbaa !101
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49, %48
  br i1 %42, label %72, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %40, align 2, !tbaa !101
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %72, label %67

56:                                               ; preds = %44, %61
  %57 = phi i16 [ %64, %61 ], [ %45, %44 ]
  %58 = phi ptr [ %63, %61 ], [ %40, %44 ]
  %59 = phi ptr [ %62, %61 ], [ %2, %44 ]
  %60 = icmp eq i16 %57, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = getelementptr inbounds i16, ptr %58, i64 1
  %64 = load i16, ptr %62, align 2, !tbaa !101
  %65 = load i16, ptr %63, align 2, !tbaa !101
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %56, label %67, !llvm.loop !138

67:                                               ; preds = %61, %44, %53, %49
  %68 = load ptr, ptr %1, align 8, !tbaa !64
  %69 = getelementptr inbounds ptr, ptr %68, i64 5
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 26, ptr noundef %71, ptr noundef %2, ptr noundef %40, ptr noundef null)
  store i8 1, ptr %8, align 8, !tbaa !119
  br label %72

72:                                               ; preds = %56, %53, %52, %67, %25
  %73 = load i16, ptr %2, align 2, !tbaa !101
  %74 = icmp eq i16 %73, 0
  %75 = icmp ne i32 %32, 10
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %85, !prof !227

77:                                               ; preds = %72
  %78 = load ptr, ptr %1, align 8, !tbaa !64
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 9, ptr noundef %81, ptr noundef null, ptr noundef null, ptr noundef null)
  %82 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !172
  %83 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
  %84 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %83, ptr %84, align 8, !tbaa !228
  store i8 1, ptr %8, align 8, !tbaa !119
  br label %326

85:                                               ; preds = %72
  %86 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !229
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94, !prof !227

89:                                               ; preds = %85
  %90 = load ptr, ptr %1, align 8, !tbaa !64
  %91 = getelementptr inbounds ptr, ptr %90, i64 5
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 77, ptr noundef %93, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %8, align 8, !tbaa !119
  br label %317

94:                                               ; preds = %85
  %95 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %87, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !164
  %97 = load ptr, ptr %9, align 8, !tbaa !144
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %97, i64 0, i32 48
  %99 = load i8, ptr %98, align 8, !tbaa !178, !range !75, !noundef !76
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %112, !prof !227

101:                                              ; preds = %94
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %97, i64 0, i32 47
  %103 = load ptr, ptr %102, align 8, !tbaa !179
  %104 = load ptr, ptr %97, align 8, !tbaa !64
  %105 = getelementptr inbounds ptr, ptr %104, i64 5
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(776) %97)
  %108 = load ptr, ptr %103, align 8, !tbaa !64
  %109 = getelementptr inbounds ptr, ptr %108, i64 9
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef %107)
  store i8 1, ptr %98, align 8, !tbaa !178
  br label %112

112:                                              ; preds = %94, %101
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %97, i64 0, i32 47
  %114 = load ptr, ptr %113, align 8, !tbaa !179
  %115 = icmp eq i32 %96, 23
  br i1 %115, label %116, label %187, !prof !227

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  %117 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !90
  store i32 0, ptr %6, align 8, !tbaa !137
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 1
  store i32 1023, ptr %119, align 4, !tbaa !95
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 2
  store i32 0, ptr %120, align 8, !tbaa !96
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 3
  store i8 0, ptr %121, align 4, !tbaa !97
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 4
  store ptr %118, ptr %122, align 8, !tbaa !98
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 5
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %125 = load ptr, ptr %118, align 8, !tbaa !64
  %126 = getelementptr inbounds ptr, ptr %125, i64 2
  %127 = load ptr, ptr %126, align 8
  %128 = invoke noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(8) %118, i64 noundef 2048)
          to label %129 unwind label %173

129:                                              ; preds = %116
  store ptr %128, ptr %124, align 8, !tbaa !100
  store i16 0, ptr %128, align 2, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 -1, ptr %7, align 4, !tbaa !168
  %130 = load ptr, ptr %9, align 8, !tbaa !144
  %131 = load ptr, ptr %130, align 8, !tbaa !64
  %132 = getelementptr inbounds ptr, ptr %131, i64 7
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef i32 %133(ptr noundef nonnull align 8 dereferenceable(776) %130, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(40) %6, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %135 unwind label %175

135:                                              ; preds = %129
  %136 = load ptr, ptr %9, align 8, !tbaa !144
  %137 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %136, i32 noundef %134)
          to label %138 unwind label %175

138:                                              ; preds = %135
  store i32 0, ptr %6, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %137)
          to label %139 unwind label %175

139:                                              ; preds = %138
  %140 = load i32, ptr %6, align 8, !tbaa !137
  %141 = load i32, ptr %119, align 4, !tbaa !95
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 1)
          to label %144 unwind label %175

144:                                              ; preds = %143, %139
  %145 = load ptr, ptr %124, align 8, !tbaa !100
  %146 = load i32, ptr %6, align 8, !tbaa !137
  %147 = add i32 %146, 1
  store i32 %147, ptr %6, align 8, !tbaa !137
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  store i16 58, ptr %149, align 2, !tbaa !101
  %150 = load i32, ptr %7, align 4, !tbaa !168
  %151 = sext i32 %150 to i64
  %152 = getelementptr i16, ptr %2, i64 %151
  %153 = getelementptr i16, ptr %152, i64 1
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %153)
          to label %154 unwind label %175

154:                                              ; preds = %144
  %155 = load ptr, ptr %124, align 8, !tbaa !100
  %156 = load i32, ptr %6, align 8, !tbaa !137
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i16, ptr %155, i64 %157
  store i16 0, ptr %158, align 2, !tbaa !101
  %159 = load ptr, ptr %117, align 8, !tbaa !90
  %160 = load ptr, ptr %87, align 8, !tbaa !64
  %161 = getelementptr inbounds ptr, ptr %160, i64 8
  %162 = load ptr, ptr %161, align 8
  invoke void %162(ptr noundef nonnull align 8 dereferenceable(104) %87, ptr noundef %155, ptr noundef %114, ptr noundef %159)
          to label %163 unwind label %175

163:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %164 = load ptr, ptr %122, align 8, !tbaa !98
  %165 = load ptr, ptr %124, align 8, !tbaa !100
  %166 = load ptr, ptr %164, align 8, !tbaa !64
  %167 = getelementptr inbounds ptr, ptr %166, i64 3
  %168 = load ptr, ptr %167, align 8
  invoke void %168(ptr noundef nonnull align 8 dereferenceable(8) %164, ptr noundef %165)
          to label %172 unwind label %169

169:                                              ; preds = %163
  %170 = landingpad { ptr, i32 }
          catch ptr null
  %171 = extractvalue { ptr, i32 } %170, 0
  call void @__clang_call_terminate(ptr %171) #19
  unreachable

172:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  br label %211

173:                                              ; preds = %116
  %174 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %185

175:                                              ; preds = %143, %138, %154, %144, %135, %129
  %176 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %177 = load ptr, ptr %122, align 8, !tbaa !98
  %178 = load ptr, ptr %124, align 8, !tbaa !100
  %179 = load ptr, ptr %177, align 8, !tbaa !64
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef %178)
          to label %185 unwind label %182

182:                                              ; preds = %175
  %183 = landingpad { ptr, i32 }
          catch ptr null
  %184 = extractvalue { ptr, i32 } %183, 0
  call void @__clang_call_terminate(ptr %184) #19
  unreachable

185:                                              ; preds = %175, %173
  %186 = phi { ptr, i32 } [ %174, %173 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  br label %195

187:                                              ; preds = %112
  %188 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !90
  %190 = load ptr, ptr %87, align 8, !tbaa !64
  %191 = getelementptr inbounds ptr, ptr %190, i64 8
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(104) %87, ptr noundef nonnull %2, ptr noundef %114, ptr noundef %189)
          to label %211 unwind label %193, !prof !230

193:                                              ; preds = %187
  %194 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %195

195:                                              ; preds = %193, %185
  %196 = phi { ptr, i32 } [ %186, %185 ], [ %194, %193 ]
  %197 = extractvalue { ptr, i32 } %196, 0
  %198 = extractvalue { ptr, i32 } %196, 1
  %199 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %195
  %202 = call ptr @__cxa_begin_catch(ptr %197) #18
  store i8 1, ptr %8, align 8, !tbaa !119
  %203 = load ptr, ptr %202, align 8, !tbaa !64
  %204 = getelementptr inbounds ptr, ptr %203, i64 2
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef ptr %205(ptr noundef nonnull align 8 dereferenceable(48) %202)
          to label %207 unwind label %235

207:                                              ; preds = %201
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %202, i64 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !184
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 46, ptr noundef %206, ptr noundef %209, ptr noundef null, ptr noundef null)
          to label %210 unwind label %235

210:                                              ; preds = %207
  call void @__cxa_end_catch()
  br label %211

211:                                              ; preds = %172, %187, %210
  %212 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %87, ptr %212, align 8, !tbaa !228
  switch i32 %96, label %317 [
    i32 24, label %213
    i32 25, label %242
    i32 20, label %306
    i32 21, label %258
  ], !prof !231

213:                                              ; preds = %211
  %214 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %87)
  %215 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %214, i64 0, i32 9
  %216 = load i32, ptr %215, align 4, !tbaa !164
  %217 = icmp eq i32 %216, 21
  %218 = and i1 %217, %3
  br i1 %218, label %237, label %303

219:                                              ; preds = %195
  %220 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %221 = icmp eq i32 %198, %220
  %222 = call ptr @__cxa_begin_catch(ptr %197) #18
  br i1 %221, label %223, label %224

223:                                              ; preds = %219
  invoke void @__cxa_rethrow() #20
          to label %330 unwind label %233

224:                                              ; preds = %219
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 78)
          to label %225 unwind label %231

225:                                              ; preds = %224
  %226 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !172
  %227 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %226, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %228 unwind label %231

228:                                              ; preds = %225
  %229 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %227, ptr %229, align 8, !tbaa !228
  store i8 1, ptr %8, align 8, !tbaa !119
  invoke void @__cxa_rethrow() #20
          to label %230 unwind label %231

230:                                              ; preds = %228
  unreachable

231:                                              ; preds = %228, %225, %224
  %232 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %315 unwind label %327

233:                                              ; preds = %223
  %234 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %315 unwind label %327

235:                                              ; preds = %207, %201
  %236 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %315 unwind label %327

237:                                              ; preds = %213
  %238 = load ptr, ptr %9, align 8, !tbaa !144
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %238, i64 0, i32 48
  %240 = load i8, ptr %239, align 8, !tbaa !178, !range !75, !noundef !76
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %281, label %295

242:                                              ; preds = %211
  %243 = load ptr, ptr %114, align 8, !tbaa !64
  %244 = getelementptr inbounds ptr, ptr %243, i64 11
  %245 = load ptr, ptr %244, align 8
  %246 = call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(16) %114)
  store ptr %246, ptr %212, align 8, !tbaa !228
  %247 = icmp eq ptr %246, null
  br i1 %247, label %317, label %248

248:                                              ; preds = %242
  %249 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %246, i64 0, i32 9
  %250 = load i32, ptr %249, align 4, !tbaa !164
  %251 = icmp eq i32 %250, 21
  %252 = and i1 %251, %3
  br i1 %252, label %253, label %303

253:                                              ; preds = %248
  %254 = load ptr, ptr %9, align 8, !tbaa !144
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %254, i64 0, i32 48
  %256 = load i8, ptr %255, align 8, !tbaa !178, !range !75, !noundef !76
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %281, label %295

258:                                              ; preds = %211
  br i1 %3, label %259, label %317

259:                                              ; preds = %258
  %260 = load ptr, ptr %9, align 8, !tbaa !144
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %260, i64 0, i32 48
  %262 = load i8, ptr %261, align 8, !tbaa !178, !range !75, !noundef !76
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %259
  %265 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %260, i64 0, i32 47
  %266 = load ptr, ptr %265, align 8, !tbaa !179
  %267 = load ptr, ptr %260, align 8, !tbaa !64
  %268 = getelementptr inbounds ptr, ptr %267, i64 5
  %269 = load ptr, ptr %268, align 8
  %270 = call noundef ptr %269(ptr noundef nonnull align 8 dereferenceable(776) %260)
  %271 = load ptr, ptr %266, align 8, !tbaa !64
  %272 = getelementptr inbounds ptr, ptr %271, i64 9
  %273 = load ptr, ptr %272, align 8
  %274 = call noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(16) %266, ptr noundef %270)
  store i8 1, ptr %261, align 8, !tbaa !178
  br label %275

275:                                              ; preds = %259, %264
  %276 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %260, i64 0, i32 47
  %277 = load ptr, ptr %276, align 8, !tbaa !179
  %278 = load ptr, ptr %277, align 8, !tbaa !64
  %279 = getelementptr inbounds ptr, ptr %278, i64 7
  %280 = load ptr, ptr %279, align 8
  call void %280(ptr noundef nonnull align 8 dereferenceable(16) %277, i1 noundef zeroext false)
  br label %317

281:                                              ; preds = %253, %237
  %282 = phi ptr [ %238, %237 ], [ %254, %253 ]
  %283 = phi ptr [ %239, %237 ], [ %255, %253 ]
  %284 = phi i32 [ %216, %237 ], [ %250, %253 ]
  %285 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %282, i64 0, i32 47
  %286 = load ptr, ptr %285, align 8, !tbaa !179
  %287 = load ptr, ptr %282, align 8, !tbaa !64
  %288 = getelementptr inbounds ptr, ptr %287, i64 5
  %289 = load ptr, ptr %288, align 8
  %290 = call noundef ptr %289(ptr noundef nonnull align 8 dereferenceable(776) %282)
  %291 = load ptr, ptr %286, align 8, !tbaa !64
  %292 = getelementptr inbounds ptr, ptr %291, i64 9
  %293 = load ptr, ptr %292, align 8
  %294 = call noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(16) %286, ptr noundef %290)
  store i8 1, ptr %283, align 8, !tbaa !178
  br label %295

295:                                              ; preds = %281, %253, %237
  %296 = phi ptr [ %238, %237 ], [ %254, %253 ], [ %282, %281 ]
  %297 = phi i32 [ %216, %237 ], [ %250, %253 ], [ %284, %281 ]
  %298 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %296, i64 0, i32 47
  %299 = load ptr, ptr %298, align 8, !tbaa !179
  %300 = load ptr, ptr %299, align 8, !tbaa !64
  %301 = getelementptr inbounds ptr, ptr %300, i64 7
  %302 = load ptr, ptr %301, align 8
  call void %302(ptr noundef nonnull align 8 dereferenceable(16) %299, i1 noundef zeroext false)
  br label %303

303:                                              ; preds = %295, %248, %213
  %304 = phi i32 [ %216, %213 ], [ %250, %248 ], [ %297, %295 ]
  %305 = icmp eq i32 %304, 20
  br i1 %305, label %306, label %317

306:                                              ; preds = %211, %303
  %307 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  %308 = load i8, ptr %307, align 1, !tbaa !104, !range !75, !noundef !76
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %4, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !141
  %313 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %312)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 11, ptr noundef %313, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %8, align 8, !tbaa !119
  br label %317

314:                                              ; preds = %306
  store i8 1, ptr %307, align 1, !tbaa !104
  br label %317

315:                                              ; preds = %233, %231, %235
  %316 = phi { ptr, i32 } [ %236, %235 ], [ %232, %231 ], [ %234, %233 ]
  resume { ptr, i32 } %316

317:                                              ; preds = %303, %211, %314, %310, %242, %258, %275, %89
  %318 = load i8, ptr %8, align 8, !tbaa !119, !range !75, !noundef !76
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %324, label %320, !prof !226

320:                                              ; preds = %317
  %321 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !172
  %322 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %321, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
  %323 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %322, ptr %323, align 8, !tbaa !228
  br label %324

324:                                              ; preds = %320, %317
  %325 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %325, align 8, !tbaa !103
  br label %326

326:                                              ; preds = %324, %77
  ret void

327:                                              ; preds = %235, %233, %231
  %328 = landingpad { ptr, i32 }
          catch ptr null
  %329 = extractvalue { ptr, i32 } %328, 0
  call void @__clang_call_terminate(ptr %329) #19
  unreachable

330:                                              ; preds = %223
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !232 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !235
  %7 = load ptr, ptr %0, align 8, !tbaa !236
  %8 = load ptr, ptr %4, align 8, !tbaa !64
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !237
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !239

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !233
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !240
  %22 = load ptr, ptr %19, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !242
  br i1 %25, label %30, label %26, !prof !243

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !244, !llvm.loop !245

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !246

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !247
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %47, !prof !248

14:                                               ; preds = %2
  %15 = uitofp i32 %9 to double
  %16 = fmul double %15, 1.250000e+00
  %17 = fptoui double %16 to i32
  %18 = tail call i32 @llvm.umax.i32(i32 %10, i32 %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = zext i32 %18 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = load ptr, ptr %20, align 8, !tbaa !64
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %22), !prof !249
  %27 = load i32, ptr %8, align 4, !tbaa !108
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !250

29:                                               ; preds = %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 3
  %31 = zext i32 %27 to i64
  br label %39

32:                                               ; preds = %39, %14
  %33 = load ptr, ptr %19, align 8, !tbaa !111
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !110
  %36 = load ptr, ptr %33, align 8, !tbaa !64
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35), !prof !251
  store ptr %26, ptr %34, align 8, !tbaa !110
  store i32 %18, ptr %11, align 8, !tbaa !109
  br label %47

39:                                               ; preds = %39, %29
  %40 = phi i64 [ 0, %29 ], [ %45, %39 ]
  %41 = load ptr, ptr %30, align 8, !tbaa !110
  %42 = getelementptr inbounds ptr, ptr %41, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !172
  %44 = getelementptr inbounds ptr, ptr %26, i64 %40
  store ptr %43, ptr %44, align 8, !tbaa !172
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %31
  br i1 %46, label %32, label %39, !prof !252, !llvm.loop !253

47:                                               ; preds = %2, %32
  %48 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %7, i64 0, i32 1, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !108
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %49, i64 %52
  store ptr %5, ptr %53, align 8, !tbaa !172
  %54 = add i32 %51, 1
  store i32 %54, ptr %50, align 4, !tbaa !108
  %55 = icmp eq ptr %5, null
  %56 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %5, i64 0, i32 18
  %57 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 19
  %58 = select i1 %55, ptr %57, ptr %56, !prof !122
  %59 = load ptr, ptr %58, align 8, !tbaa !172
  %60 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr %59, ptr %60, align 8, !tbaa !163
  %61 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %61, align 8, !tbaa !119
  %62 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !114
  %64 = icmp eq ptr %63, null
  br i1 %64, label %371, label %65, !prof !187

65:                                               ; preds = %47
  %66 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %63, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !209
  %68 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %63, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !211
  %70 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !168
  %71 = icmp eq i32 %67, %70
  %72 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %73 = icmp eq i32 %67, %72
  %74 = select i1 %71, i1 true, i1 %73
  %75 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %76 = icmp eq i32 %67, %75
  %77 = select i1 %74, i1 true, i1 %76
  %78 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4
  %79 = icmp eq i32 %67, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %363, label %81

81:                                               ; preds = %65
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !144
  %84 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %83, i32 noundef %67)
  %85 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !157
  %87 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %86, ptr noundef %84)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %148

89:                                               ; preds = %81
  %90 = icmp eq ptr %84, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = load i16, ptr %84, align 2, !tbaa !101
  %93 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !101
  %94 = icmp eq i16 %92, %93
  br i1 %94, label %98, label %147

95:                                               ; preds = %89
  %96 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !101
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %109, label %147

98:                                               ; preds = %91, %103
  %99 = phi i16 [ %106, %103 ], [ %92, %91 ]
  %100 = phi ptr [ %105, %103 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %91 ]
  %101 = phi ptr [ %104, %103 ], [ %84, %91 ]
  %102 = icmp eq i16 %99, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds i16, ptr %101, i64 1
  %105 = getelementptr inbounds i16, ptr %100, i64 1
  %106 = load i16, ptr %104, align 2, !tbaa !101
  %107 = load i16, ptr %105, align 2, !tbaa !101
  %108 = icmp eq i16 %106, %107
  br i1 %108, label %98, label %147, !llvm.loop !138

109:                                              ; preds = %98, %95
  %110 = load ptr, ptr %85, align 8, !tbaa !157
  %111 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80) %110, ptr noundef %84, ptr noundef %69)
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load ptr, ptr %62, align 8, !tbaa !114
  %115 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %114)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %115, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %363

116:                                              ; preds = %109
  br i1 %55, label %117, label %140

117:                                              ; preds = %116
  %118 = load ptr, ptr %60, align 8, !tbaa !163
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %118, align 8, !tbaa !64
  %122 = getelementptr inbounds ptr, ptr %121, i64 9
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef zeroext i1 %123(ptr noundef nonnull align 8 dereferenceable(104) %118, ptr noundef nonnull %111)
  br i1 %124, label %125, label %140

125:                                              ; preds = %120, %117
  %126 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 8
  %127 = load i32, ptr %126, align 4, !tbaa !254
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load ptr, ptr %62, align 8, !tbaa !114
  %131 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %130)
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !141
  %134 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %133)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %131, ptr noundef %134, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %135

135:                                              ; preds = %129, %125
  %136 = load ptr, ptr %1, align 8, !tbaa !64
  %137 = getelementptr inbounds ptr, ptr %136, i64 8
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef zeroext i1 %138(ptr noundef nonnull align 8 dereferenceable(33) %1)
  br i1 %139, label %140, label %146

140:                                              ; preds = %135, %116, %120
  %141 = load ptr, ptr %62, align 8, !tbaa !114
  %142 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %141)
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !141
  %145 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %144)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %142, ptr noundef %145, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %146

146:                                              ; preds = %140, %135
  store ptr %111, ptr %60, align 8, !tbaa !163
  br label %363

147:                                              ; preds = %103, %91, %95
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 72, ptr noundef %84, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %363

148:                                              ; preds = %81
  %149 = load ptr, ptr %87, align 8, !tbaa !64
  %150 = getelementptr inbounds ptr, ptr %149, i64 5
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef i32 %151(ptr noundef nonnull align 8 dereferenceable(160) %87)
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 72, ptr noundef %84, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %363

155:                                              ; preds = %148
  %156 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %87, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !255
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load ptr, ptr %62, align 8, !tbaa !114
  %161 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %160)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %161, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %363

162:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %163 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !90
  store i32 0, ptr %3, align 8, !tbaa !137
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  store i32 1023, ptr %165, align 4, !tbaa !95
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 2
  store i32 0, ptr %166, align 8, !tbaa !96
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 3
  store i8 0, ptr %167, align 4, !tbaa !97
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 4
  store ptr %164, ptr %168, align 8, !tbaa !98
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 5
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %169, i8 0, i64 16, i1 false)
  %171 = load ptr, ptr %164, align 8, !tbaa !64
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(8) %164, i64 noundef 2048)
  store ptr %174, ptr %170, align 8, !tbaa !100
  store i16 0, ptr %174, align 2, !tbaa !101
  store i32 0, ptr %3, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %84)
          to label %175 unwind label %204

175:                                              ; preds = %162
  %176 = load i32, ptr %3, align 8, !tbaa !137
  %177 = load i32, ptr %165, align 4, !tbaa !95
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %180 unwind label %204

180:                                              ; preds = %179, %175
  %181 = load ptr, ptr %170, align 8, !tbaa !100
  %182 = load i32, ptr %3, align 8, !tbaa !137
  %183 = add i32 %182, 1
  store i32 %183, ptr %3, align 8, !tbaa !137
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds i16, ptr %181, i64 %184
  store i16 44, ptr %185, align 2, !tbaa !101
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %69)
          to label %186 unwind label %204

186:                                              ; preds = %180
  %187 = load ptr, ptr %170, align 8, !tbaa !100
  %188 = load i32, ptr %3, align 8, !tbaa !137
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i16, ptr %187, i64 %189
  store i16 0, ptr %190, align 2, !tbaa !101
  %191 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %157, ptr noundef %187)
          to label %192 unwind label %206

192:                                              ; preds = %186
  %193 = icmp eq ptr %191, null
  br i1 %193, label %285, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %191, i64 0, i32 2
  %196 = load i8, ptr %195, align 1, !tbaa !259, !range !75, !noundef !76
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %170, align 8, !tbaa !100
  %200 = load i32, ptr %3, align 8, !tbaa !137
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i16, ptr %199, i64 %201
  store i16 0, ptr %202, align 2, !tbaa !101
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 89, ptr noundef %199, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %203 unwind label %206

203:                                              ; preds = %198
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %342

204:                                              ; preds = %179, %162, %180
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %352

206:                                              ; preds = %337, %333, %318, %307, %272, %260, %330, %324, %322, %315, %304, %298, %293, %290, %285, %269, %264, %257, %249, %198, %186
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %352

208:                                              ; preds = %194
  br i1 %55, label %246, label %209

209:                                              ; preds = %208
  %210 = icmp eq ptr %191, %5
  br i1 %210, label %229, label %211

211:                                              ; preds = %209, %211
  %212 = phi ptr [ %214, %211 ], [ %191, %209 ]
  %213 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %212, i64 0, i32 19
  %214 = load ptr, ptr %213, align 8, !tbaa !260
  %215 = icmp eq ptr %214, null
  %216 = icmp eq ptr %214, %5
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %220, label %211, !llvm.loop !261

218:                                              ; preds = %224, %228, %221
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %352

220:                                              ; preds = %211
  br i1 %215, label %221, label %229

221:                                              ; preds = %220
  %222 = load ptr, ptr %62, align 8, !tbaa !114
  %223 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %222)
          to label %224 unwind label %218

224:                                              ; preds = %221
  %225 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !141
  %227 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %226)
          to label %228 unwind label %218

228:                                              ; preds = %224
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %223, ptr noundef %227, ptr noundef null, ptr noundef null)
          to label %265 unwind label %218

229:                                              ; preds = %209, %220
  %230 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %191, i64 0, i32 6
  %231 = load i32, ptr %230, align 8, !tbaa !262
  %232 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 8
  %233 = load i32, ptr %232, align 4, !tbaa !254
  %234 = and i32 %233, %231
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %266, label %236

236:                                              ; preds = %229
  %237 = load ptr, ptr %62, align 8, !tbaa !114
  %238 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %237)
          to label %239 unwind label %244

239:                                              ; preds = %236
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !141
  %242 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %241)
          to label %243 unwind label %244

243:                                              ; preds = %239
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %238, ptr noundef %242, ptr noundef null, ptr noundef null)
          to label %265 unwind label %244

244:                                              ; preds = %239, %243, %236
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %352

246:                                              ; preds = %208
  %247 = load ptr, ptr %60, align 8, !tbaa !163
  %248 = icmp eq ptr %247, null
  br i1 %248, label %266, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %191, i64 0, i32 18
  %251 = load ptr, ptr %250, align 8, !tbaa !173
  %252 = load ptr, ptr %247, align 8, !tbaa !64
  %253 = getelementptr inbounds ptr, ptr %252, i64 9
  %254 = load ptr, ptr %253, align 8
  %255 = invoke noundef zeroext i1 %254(ptr noundef nonnull align 8 dereferenceable(104) %247, ptr noundef %251)
          to label %256 unwind label %206

256:                                              ; preds = %249
  br i1 %255, label %266, label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr %62, align 8, !tbaa !114
  %259 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %258)
          to label %260 unwind label %206

260:                                              ; preds = %257
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !141
  %263 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %262)
          to label %264 unwind label %206

264:                                              ; preds = %260
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %259, ptr noundef %263, ptr noundef null, ptr noundef null)
          to label %265 unwind label %206

265:                                              ; preds = %264, %243, %228
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %266

266:                                              ; preds = %265, %229, %246, %256
  %267 = load i8, ptr %61, align 8, !tbaa !119, !range !75, !noundef !76
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %342

269:                                              ; preds = %266
  %270 = load ptr, ptr %6, align 8, !tbaa !113
  %271 = invoke noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %270)
          to label %272 unwind label %206

272:                                              ; preds = %269
  %273 = load ptr, ptr %6, align 8, !tbaa !113
  %274 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %273, i64 0, i32 1
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %274, i32 noundef 1)
          to label %275 unwind label %206

275:                                              ; preds = %272
  %276 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %273, i64 0, i32 1, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !110
  %278 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %273, i64 0, i32 1, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !108
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %277, i64 %280
  store ptr %191, ptr %281, align 8, !tbaa !172
  %282 = add i32 %279, 1
  store i32 %282, ptr %278, align 4, !tbaa !108
  %283 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %191, i64 0, i32 18
  %284 = load ptr, ptr %283, align 8, !tbaa !173
  store ptr %284, ptr %60, align 8, !tbaa !163
  br label %342

285:                                              ; preds = %192
  %286 = load ptr, ptr %85, align 8, !tbaa !157
  %287 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80) %286, ptr noundef %84, ptr noundef %69)
          to label %288 unwind label %206

288:                                              ; preds = %285
  %289 = icmp eq ptr %287, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %288
  %291 = load ptr, ptr %62, align 8, !tbaa !114
  %292 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %291)
          to label %293 unwind label %206

293:                                              ; preds = %290
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %292, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %294 unwind label %206

294:                                              ; preds = %293
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %342

295:                                              ; preds = %288
  %296 = load ptr, ptr %60, align 8, !tbaa !163
  %297 = icmp eq ptr %296, null
  br i1 %297, label %311, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %296, align 8, !tbaa !64
  %300 = getelementptr inbounds ptr, ptr %299, i64 9
  %301 = load ptr, ptr %300, align 8
  %302 = invoke noundef zeroext i1 %301(ptr noundef nonnull align 8 dereferenceable(104) %296, ptr noundef nonnull %287)
          to label %303 unwind label %206

303:                                              ; preds = %298
  br i1 %302, label %311, label %304

304:                                              ; preds = %303
  %305 = load ptr, ptr %62, align 8, !tbaa !114
  %306 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %305)
          to label %307 unwind label %206

307:                                              ; preds = %304
  %308 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !141
  %310 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %309)
          to label %337 unwind label %206

311:                                              ; preds = %303, %295
  %312 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 8
  %313 = load i32, ptr %312, align 4, !tbaa !254
  %314 = icmp eq i32 %313, 4
  br i1 %314, label %315, label %324

315:                                              ; preds = %311
  %316 = load ptr, ptr %62, align 8, !tbaa !114
  %317 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %316)
          to label %318 unwind label %206

318:                                              ; preds = %315
  %319 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !141
  %321 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %320)
          to label %322 unwind label %206

322:                                              ; preds = %318
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %317, ptr noundef %321, ptr noundef null, ptr noundef null)
          to label %323 unwind label %206

323:                                              ; preds = %322
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %324

324:                                              ; preds = %323, %311
  %325 = load ptr, ptr %1, align 8, !tbaa !64
  %326 = getelementptr inbounds ptr, ptr %325, i64 8
  %327 = load ptr, ptr %326, align 8
  %328 = invoke noundef zeroext i1 %327(ptr noundef nonnull align 8 dereferenceable(33) %1)
          to label %329 unwind label %206

329:                                              ; preds = %324
  br i1 %328, label %330, label %341

330:                                              ; preds = %329
  %331 = load ptr, ptr %62, align 8, !tbaa !114
  %332 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %331)
          to label %333 unwind label %206

333:                                              ; preds = %330
  %334 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !141
  %336 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %335)
          to label %337 unwind label %206

337:                                              ; preds = %333, %307
  %338 = phi ptr [ %306, %307 ], [ %332, %333 ]
  %339 = phi ptr [ %310, %307 ], [ %336, %333 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %338, ptr noundef %339, ptr noundef null, ptr noundef null)
          to label %340 unwind label %206

340:                                              ; preds = %337
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %341

341:                                              ; preds = %340, %329
  store ptr %287, ptr %60, align 8, !tbaa !163
  br label %342

342:                                              ; preds = %294, %341, %203, %275, %266
  %343 = load ptr, ptr %168, align 8, !tbaa !98
  %344 = load ptr, ptr %170, align 8, !tbaa !100
  %345 = load ptr, ptr %343, align 8, !tbaa !64
  %346 = getelementptr inbounds ptr, ptr %345, i64 3
  %347 = load ptr, ptr %346, align 8
  invoke void %347(ptr noundef nonnull align 8 dereferenceable(8) %343, ptr noundef %344)
          to label %351 unwind label %348

348:                                              ; preds = %342
  %349 = landingpad { ptr, i32 }
          catch ptr null
  %350 = extractvalue { ptr, i32 } %349, 0
  call void @__clang_call_terminate(ptr %350) #19
  unreachable

351:                                              ; preds = %342
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  br label %363

352:                                              ; preds = %206, %244, %218, %204
  %353 = phi { ptr, i32 } [ %205, %204 ], [ %207, %206 ], [ %245, %244 ], [ %219, %218 ]
  %354 = load ptr, ptr %168, align 8, !tbaa !98
  %355 = load ptr, ptr %170, align 8, !tbaa !100
  %356 = load ptr, ptr %354, align 8, !tbaa !64
  %357 = getelementptr inbounds ptr, ptr %356, i64 3
  %358 = load ptr, ptr %357, align 8
  invoke void %358(ptr noundef nonnull align 8 dereferenceable(8) %354, ptr noundef %355)
          to label %362 unwind label %359

359:                                              ; preds = %352
  %360 = landingpad { ptr, i32 }
          catch ptr null
  %361 = extractvalue { ptr, i32 } %360, 0
  call void @__clang_call_terminate(ptr %361) #19
  unreachable

362:                                              ; preds = %352
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  resume { ptr, i32 } %353

363:                                              ; preds = %113, %146, %147, %154, %351, %159, %65
  %364 = load ptr, ptr %62, align 8, !tbaa !114
  %365 = icmp eq ptr %364, null
  br i1 %365, label %370, label %366

366:                                              ; preds = %363
  %367 = load ptr, ptr %364, align 8, !tbaa !64
  %368 = getelementptr inbounds ptr, ptr %367, i64 1
  %369 = load ptr, ptr %368, align 8
  call void %369(ptr noundef nonnull align 8 dereferenceable(56) %364) #18
  br label %370

370:                                              ; preds = %366, %363
  store ptr null, ptr %62, align 8, !tbaa !114
  br label %380

371:                                              ; preds = %47
  br i1 %55, label %380, label %372, !prof !122

372:                                              ; preds = %371
  %373 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %5, i64 0, i32 2
  %374 = load i8, ptr %373, align 1, !tbaa !259, !range !75, !noundef !76
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %380, label %376, !prof !263

376:                                              ; preds = %372
  %377 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !141
  %379 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %378)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 91, ptr noundef %379, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %380

380:                                              ; preds = %371, %372, %376, %370
  %381 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 9
  %382 = load i32, ptr %381, align 8, !tbaa !174
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %389, label %385, !prof !187

385:                                              ; preds = %380
  %386 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !141
  %388 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %387)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 90, ptr noundef %388, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %389

389:                                              ; preds = %385, %380
  %390 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %391 = load i8, ptr %390, align 8, !tbaa !135, !range !75, !noundef !76
  %392 = icmp ne i8 %391, 0
  %393 = and i32 %382, 1
  %394 = icmp eq i32 %393, 0
  %395 = and i1 %394, %392
  br i1 %395, label %396, label %400, !prof !121

396:                                              ; preds = %389
  store i8 0, ptr %390, align 8, !tbaa !135
  %397 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !141
  %399 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %398)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 74, ptr noundef %399, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %61, align 8, !tbaa !119
  br label %400

400:                                              ; preds = %396, %389
  %401 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  store i32 0, ptr %401, align 8, !tbaa !137
  %402 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !100
  store i16 0, ptr %403, align 2, !tbaa !101
  %404 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %404, align 8, !tbaa !103
  %405 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %405, align 1, !tbaa !104
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !264 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !267
  %7 = load ptr, ptr %0, align 8, !tbaa !268
  %8 = load ptr, ptr %4, align 8, !tbaa !64
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !269
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !270
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !271

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !265
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !272
  %22 = load ptr, ptr %19, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !274
  br i1 %25, label %30, label %26, !prof !275

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !276, !llvm.loop !277

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !278

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !279
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %4 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.2", align 8
  %8 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.4", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  call void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %10)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %32, %3
  %13 = load ptr, ptr %11, align 8, !tbaa !281
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23, !prof !284

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %4, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %4, i64 0, i32 4
  %18 = load i32, ptr %16, align 8, !tbaa !285
  %19 = load ptr, ptr %17, align 8, !tbaa !286
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !287
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %381, label %23, !prof !289

23:                                               ; preds = %15, %12
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %25 unwind label %39, !prof !290

25:                                               ; preds = %23
  %26 = load ptr, ptr %24, align 8, !tbaa !64
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %30 unwind label %39, !prof !291

30:                                               ; preds = %25
  %31 = icmp eq i32 %29, 1
  br i1 %31, label %33, label %32, !prof !292

32:                                               ; preds = %30, %38, %361
  br label %12, !llvm.loop !293

33:                                               ; preds = %30
  %34 = load ptr, ptr %24, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %38 unwind label %39, !prof !294

38:                                               ; preds = %33
  br i1 %37, label %32, label %43, !prof !239

39:                                               ; preds = %33, %25, %23
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = extractvalue { ptr, i32 } %40, 1
  br label %376

43:                                               ; preds = %38
  %44 = load ptr, ptr %24, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %44, i64 19
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(160) %24, i1 noundef zeroext true)
          to label %47 unwind label %75, !prof !295

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %48 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %24, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !296, !noalias !297
  %50 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %24, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !300, !noalias !297
  invoke void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %49, i1 noundef zeroext false, ptr noundef %51)
          to label %52 unwind label %79, !prof !289

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !301
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %226, label %56, !prof !239

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 3
  br label %58

58:                                               ; preds = %56, %219
  %59 = phi i32 [ %220, %219 ], [ %54, %56 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !304
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 4, !tbaa !305
  %63 = icmp ugt i32 %59, %62
  br i1 %63, label %226, label %64, !prof !307

64:                                               ; preds = %58
  %65 = invoke noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %66 unwind label %83, !prof !308

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !309
  switch i32 %68, label %102 [
    i32 3, label %92
    i32 2, label %69
    i32 4, label %87
  ], !prof !310

69:                                               ; preds = %66
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !144
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !141
  %74 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %73)
          to label %98 unwind label %85

75:                                               ; preds = %43
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = extractvalue { ptr, i32 } %76, 1
  br label %376

79:                                               ; preds = %47
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %373

83:                                               ; preds = %64
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %222

85:                                               ; preds = %98, %92, %87, %69, %102, %91
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %222

87:                                               ; preds = %66
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !141
  %90 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %89)
          to label %91 unwind label %85

91:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 15, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %102 unwind label %85

92:                                               ; preds = %66
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !144
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !141
  %97 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %96)
          to label %98 unwind label %85

98:                                               ; preds = %69, %92
  %99 = phi ptr [ %94, %92 ], [ %71, %69 ]
  %100 = phi i32 [ 5, %92 ], [ 6, %69 ]
  %101 = phi ptr [ %97, %92 ], [ %74, %69 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %99, i32 noundef %100, ptr noundef %101, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %102 unwind label %85

102:                                              ; preds = %98, %91, %66
  %103 = load ptr, ptr %65, align 8, !tbaa !64
  %104 = getelementptr inbounds ptr, ptr %103, i64 8
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef zeroext i1 %105(ptr noundef nonnull align 8 dereferenceable(147) %65)
          to label %107 unwind label %85, !prof !311

107:                                              ; preds = %102
  br i1 %106, label %108, label %219, !prof !312

108:                                              ; preds = %107
  %109 = load ptr, ptr %65, align 8, !tbaa !64
  %110 = getelementptr inbounds ptr, ptr %109, i64 6
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef nonnull align 8 dereferenceable(16) ptr %111(ptr noundef nonnull align 8 dereferenceable(147) %65)
          to label %113 unwind label %122, !prof !313

113:                                              ; preds = %108, %215
  %114 = phi i32 [ %218, %215 ], [ 0, %108 ]
  %115 = phi i8 [ %216, %215 ], [ 0, %108 ]
  %116 = load ptr, ptr %112, align 8, !tbaa !64
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef i32 %118(ptr noundef nonnull align 8 dereferenceable(16) %112)
          to label %120 unwind label %124, !prof !314

120:                                              ; preds = %113
  %121 = icmp ult i32 %114, %119
  br i1 %121, label %126, label %219, !prof !315

122:                                              ; preds = %108
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %222

124:                                              ; preds = %113
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %222

126:                                              ; preds = %120
  %127 = load ptr, ptr %112, align 8, !tbaa !64
  %128 = getelementptr inbounds ptr, ptr %127, i64 14
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef nonnull align 8 dereferenceable(56) ptr %129(ptr noundef nonnull align 8 dereferenceable(16) %112, i32 noundef %114)
          to label %131 unwind label %142, !prof !316

131:                                              ; preds = %126
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %130, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !214
  switch i32 %133, label %205 [
    i32 1, label %134
    i32 8, label %144
  ], !prof !317

134:                                              ; preds = %131
  %135 = and i8 %115, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %205, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !141
  %140 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %139)
          to label %141 unwind label %142

141:                                              ; preds = %137
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 11, ptr noundef %140, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %215 unwind label %142

142:                                              ; preds = %137, %211, %141, %126
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %222

144:                                              ; preds = %131
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %130, i64 0, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !318
  %147 = icmp eq ptr %146, null
  br i1 %147, label %205, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !90
  %151 = load i16, ptr %146, align 2, !tbaa !101
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148, %153
  %154 = phi ptr [ %155, %153 ], [ %146, %148 ]
  %155 = getelementptr inbounds i16, ptr %154, i64 1
  %156 = load i16, ptr %155, align 2, !tbaa !101
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %153, !llvm.loop !170

158:                                              ; preds = %153
  %159 = ptrtoint ptr %155 to i64
  %160 = ptrtoint ptr %146 to i64
  %161 = sub i64 %159, %160
  %162 = add i64 %161, 2
  %163 = and i64 %162, 8589934590
  br label %164

164:                                              ; preds = %158, %148
  %165 = phi i64 [ %163, %158 ], [ 2, %148 ]
  %166 = load ptr, ptr %150, align 8, !tbaa !64
  %167 = getelementptr inbounds ptr, ptr %166, i64 2
  %168 = load ptr, ptr %167, align 8
  %169 = invoke noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(8) %150, i64 noundef %165)
          to label %170 unwind label %181

170:                                              ; preds = %164
  %171 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %169, ptr nonnull align 2 %146, i64 %165, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %172 = load ptr, ptr %149, align 8, !tbaa !90
  store ptr %169, ptr %6, align 8, !tbaa !181
  store ptr %172, ptr %171, align 8, !tbaa !183
  br label %173

173:                                              ; preds = %200, %170
  %174 = phi ptr [ %169, %170 ], [ %203, %200 ]
  %175 = phi i8 [ 0, %170 ], [ %185, %200 ]
  br label %176

176:                                              ; preds = %179, %173
  %177 = phi ptr [ %174, %173 ], [ %180, %179 ]
  %178 = load i16, ptr %177, align 2, !tbaa !101
  switch i16 %178, label %179 [
    i16 0, label %184
    i16 32, label %183
  ]

179:                                              ; preds = %176
  %180 = getelementptr inbounds i16, ptr %177, i64 1
  br label %176, !llvm.loop !319

181:                                              ; preds = %164
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %222

183:                                              ; preds = %176
  store i16 0, ptr %177, align 2, !tbaa !101
  br label %184

184:                                              ; preds = %176, %183
  %185 = phi i8 [ %175, %183 ], [ 1, %176 ]
  %186 = load ptr, ptr %24, align 8, !tbaa !64
  %187 = getelementptr inbounds ptr, ptr %186, i64 15
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(160) %24, ptr noundef %174)
          to label %190 unwind label %198

190:                                              ; preds = %184
  %191 = icmp eq ptr %189, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %190
  %193 = load ptr, ptr %130, align 8, !tbaa !64
  %194 = getelementptr inbounds ptr, ptr %193, i64 5
  %195 = load ptr, ptr %194, align 8
  %196 = invoke noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(56) %130)
          to label %197 unwind label %198

197:                                              ; preds = %192
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 14, ptr noundef %196, ptr noundef %174, ptr noundef null, ptr noundef null)
          to label %200 unwind label %198

198:                                              ; preds = %197, %192, %184
  %199 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %222

200:                                              ; preds = %197, %190
  %201 = and i8 %185, 1
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds i16, ptr %177, i64 1
  br i1 %202, label %173, label %204, !llvm.loop !320

204:                                              ; preds = %200
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %205

205:                                              ; preds = %131, %134, %144, %204
  %206 = phi i8 [ %115, %204 ], [ %115, %144 ], [ 1, %134 ], [ %115, %131 ]
  br i1 %2, label %207, label %215, !prof !321

207:                                              ; preds = %205
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %130, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !213
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %0, align 8, !tbaa !64
  %213 = getelementptr inbounds ptr, ptr %212, i64 8
  %214 = load ptr, ptr %213, align 8
  invoke void %214(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %130, ptr noundef nonnull %209, i1 noundef zeroext true, ptr noundef nonnull %65)
          to label %215 unwind label %142

215:                                              ; preds = %141, %205, %207, %211
  %216 = phi i8 [ %206, %211 ], [ %206, %207 ], [ %206, %205 ], [ %115, %141 ]
  %217 = phi i1 [ true, %211 ], [ true, %207 ], [ true, %205 ], [ false, %141 ]
  %218 = add i32 %114, 1
  br i1 %217, label %113, label %219, !prof !322, !llvm.loop !323

219:                                              ; preds = %215, %120, %107
  %220 = load i32, ptr %53, align 4, !tbaa !301
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %58, !prof !324, !llvm.loop !325

222:                                              ; preds = %85, %124, %181, %198, %142, %122, %83
  %223 = phi { ptr, i32 } [ %84, %83 ], [ %86, %85 ], [ %123, %122 ], [ %125, %124 ], [ %143, %142 ], [ %199, %198 ], [ %182, %181 ]
  %224 = extractvalue { ptr, i32 } %223, 0
  %225 = extractvalue { ptr, i32 } %223, 1
  br label %362

226:                                              ; preds = %58, %219, %52
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !144
  %229 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %228, i64 0, i32 13
  %230 = load i8, ptr %229, align 1, !tbaa !326, !range !75, !noundef !76
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %352, label %232, !prof !289

232:                                              ; preds = %226
  %233 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %234 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %24, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #18
  %236 = load ptr, ptr %233, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %235, i1 noundef zeroext false, ptr noundef %236)
          to label %237 unwind label %258

237:                                              ; preds = %232
  %238 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %7, i64 0, i32 2
  %239 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %7, i64 0, i32 3
  %240 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %7, i64 0, i32 4
  br label %241

241:                                              ; preds = %237, %257
  %242 = load ptr, ptr %238, align 8, !tbaa !327
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, ptr %239, align 8, !tbaa !330
  %246 = load ptr, ptr %240, align 8, !tbaa !331
  %247 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %246, i64 0, i32 3
  %248 = load i32, ptr %247, align 8, !tbaa !267
  %249 = icmp eq i32 %245, %248
  br i1 %249, label %266, label %250

250:                                              ; preds = %241, %244
  %251 = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %252 unwind label %262

252:                                              ; preds = %250
  %253 = load ptr, ptr %9, align 8, !tbaa !157
  %254 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !158
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176) %251, ptr noundef nonnull %24, ptr noundef nonnull %253, ptr noundef %255, ptr noundef nonnull %0)
          to label %256 unwind label %262

256:                                              ; preds = %252
  invoke void @_ZN11xercesc_2_715SchemaValidator23checkParticleDerivationEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, ptr noundef nonnull %251)
          to label %257 unwind label %262

257:                                              ; preds = %256
  invoke void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, ptr noundef nonnull %251, ptr noundef null)
          to label %241 unwind label %262, !llvm.loop !332

258:                                              ; preds = %232
  %259 = landingpad { ptr, i32 }
          cleanup
  %260 = extractvalue { ptr, i32 } %259, 0
  %261 = extractvalue { ptr, i32 } %259, 1
  br label %349

262:                                              ; preds = %257, %256, %252, %250
  %263 = landingpad { ptr, i32 }
          cleanup
  %264 = extractvalue { ptr, i32 } %263, 0
  %265 = extractvalue { ptr, i32 } %263, 1
  br label %346

266:                                              ; preds = %244
  %267 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %24, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  %269 = load ptr, ptr %233, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %268, i1 noundef zeroext false, ptr noundef %269)
          to label %270 unwind label %298

270:                                              ; preds = %266
  %271 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %8, i64 0, i32 2
  %272 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %8, i64 0, i32 3
  %273 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %8, i64 0, i32 4
  br label %274

274:                                              ; preds = %338, %270
  %275 = load ptr, ptr %271, align 8, !tbaa !334
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load i32, ptr %272, align 8, !tbaa !337
  %279 = load ptr, ptr %273, align 8, !tbaa !338
  %280 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %279, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !339
  %282 = icmp eq i32 %278, %281
  br i1 %282, label %342, label %283

283:                                              ; preds = %277, %274
  %284 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %285 unwind label %302

285:                                              ; preds = %283
  %286 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %284, i64 0, i32 7
  %287 = load ptr, ptr %286, align 8, !tbaa !341
  %288 = icmp eq ptr %287, null
  br i1 %288, label %333, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %284, i64 0, i32 5
  %291 = load ptr, ptr %290, align 8, !tbaa !343
  %292 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %284, i64 0, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !344
  %294 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %287, i64 0, i32 5
  %295 = load ptr, ptr %294, align 8, !tbaa !343
  %296 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %287, i64 0, i32 2
  %297 = load i32, ptr %296, align 4, !tbaa !344
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, ptr noundef %291, i32 noundef %293, ptr noundef %295, i32 noundef %297, ptr noundef null, i1 noundef zeroext true)
          to label %333 unwind label %310

298:                                              ; preds = %266
  %299 = landingpad { ptr, i32 }
          cleanup
  %300 = extractvalue { ptr, i32 } %299, 0
  %301 = extractvalue { ptr, i32 } %299, 1
  br label %343

302:                                              ; preds = %283
  %303 = landingpad { ptr, i32 }
          cleanup
  %304 = extractvalue { ptr, i32 } %303, 0
  %305 = extractvalue { ptr, i32 } %303, 1
  br label %339

306:                                              ; preds = %337
  %307 = landingpad { ptr, i32 }
          cleanup
  %308 = extractvalue { ptr, i32 } %307, 0
  %309 = extractvalue { ptr, i32 } %307, 1
  br label %339

310:                                              ; preds = %289
  %311 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %312 = extractvalue { ptr, i32 } %311, 0
  %313 = extractvalue { ptr, i32 } %311, 1
  %314 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %339

316:                                              ; preds = %310
  %317 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %318 = call ptr @__cxa_begin_catch(ptr %312) #18
  %319 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %284, i64 0, i32 8
  %320 = load ptr, ptr %319, align 8, !tbaa !345
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %318, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !184
  %323 = load ptr, ptr %233, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %317, i32 noundef 156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %320, ptr noundef %322, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %323)
          to label %324 unwind label %325

324:                                              ; preds = %316
  invoke void @__cxa_end_catch()
          to label %333 unwind label %327

325:                                              ; preds = %316
  %326 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %329 unwind label %382

327:                                              ; preds = %324
  %328 = landingpad { ptr, i32 }
          cleanup
  br label %329

329:                                              ; preds = %325, %327
  %330 = phi { ptr, i32 } [ %328, %327 ], [ %326, %325 ]
  %331 = extractvalue { ptr, i32 } %330, 0
  %332 = extractvalue { ptr, i32 } %330, 1
  br label %339

333:                                              ; preds = %324, %289, %285
  %334 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %284, i64 0, i32 1
  %335 = load i8, ptr %334, align 8, !tbaa !346, !range !75, !noundef !76
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %333
  invoke void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %284)
          to label %338 unwind label %306

338:                                              ; preds = %337, %333
  br label %274, !llvm.loop !347

339:                                              ; preds = %310, %306, %329, %302
  %340 = phi i32 [ %305, %302 ], [ %309, %306 ], [ %332, %329 ], [ %313, %310 ]
  %341 = phi ptr [ %304, %302 ], [ %308, %306 ], [ %331, %329 ], [ %312, %310 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  br label %343

342:                                              ; preds = %277
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #18
  br label %352

343:                                              ; preds = %339, %298
  %344 = phi i32 [ %340, %339 ], [ %301, %298 ]
  %345 = phi ptr [ %341, %339 ], [ %300, %298 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  br label %346

346:                                              ; preds = %343, %262
  %347 = phi i32 [ %265, %262 ], [ %344, %343 ]
  %348 = phi ptr [ %264, %262 ], [ %345, %343 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  br label %349

349:                                              ; preds = %346, %258
  %350 = phi i32 [ %347, %346 ], [ %261, %258 ]
  %351 = phi ptr [ %348, %346 ], [ %260, %258 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #18
  br label %362

352:                                              ; preds = %342, %226
  %353 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 1
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !64
  %354 = load i8, ptr %353, align 8, !tbaa !348, !range !75, !noundef !76
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %361, label %356, !prof !289

356:                                              ; preds = %352
  %357 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !304
  %359 = icmp eq ptr %358, null
  br i1 %359, label %361, label %360

360:                                              ; preds = %356
  call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %358) #18
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %358) #18
  br label %361

361:                                              ; preds = %352, %356, %360
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %32

362:                                              ; preds = %349, %222
  %363 = phi i32 [ %225, %222 ], [ %350, %349 ]
  %364 = phi ptr [ %224, %222 ], [ %351, %349 ]
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !64
  %365 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 1
  %366 = load i8, ptr %365, align 8, !tbaa !348, !range !75, !noundef !76
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %373, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %5, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !304
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %370) #18
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %370) #18
  br label %373

373:                                              ; preds = %372, %368, %362, %79
  %374 = phi i32 [ %82, %79 ], [ %363, %362 ], [ %363, %368 ], [ %363, %372 ]
  %375 = phi ptr [ %81, %79 ], [ %364, %362 ], [ %364, %368 ], [ %364, %372 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %376

376:                                              ; preds = %75, %373, %39
  %377 = phi i32 [ %42, %39 ], [ %374, %373 ], [ %78, %75 ]
  %378 = phi ptr [ %41, %39 ], [ %375, %373 ], [ %77, %75 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  %379 = insertvalue { ptr, i32 } poison, ptr %378, 0
  %380 = insertvalue { ptr, i32 } %379, i32 %377, 1
  resume { ptr, i32 } %380

381:                                              ; preds = %15
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret void

382:                                              ; preds = %325
  %383 = landingpad { ptr, i32 }
          catch ptr null
  %384 = extractvalue { ptr, i32 } %383, 0
  call void @__clang_call_terminate(ptr %384) #19
  unreachable
}

declare void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !349 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !281
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !350

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !285
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !287
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !351
  br i1 %5, label %13, label %6, !prof !290

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !352
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !281
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !353
  ret ptr %16
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !305
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !355 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !356

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !305
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18, !prof !356

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !357
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 30, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #18
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !358
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 4, !tbaa !301
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  ret ptr %24
}

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !359
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !327
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !330
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !331
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !360
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %14 = load ptr, ptr %10, align 8, !tbaa !360
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.5, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #18
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !330
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !331
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !267
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !360
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !327
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !279
  ret ptr %16
}

declare void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator23checkParticleDerivationEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !262
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !260
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !361
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !362
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %9, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !361
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %9, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !362
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %13, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef nonnull %9, i1 noundef zeroext true)
          to label %40 unwind label %22

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %24 = extractvalue { ptr, i32 } %23, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = extractvalue { ptr, i32 } %23, 0
  %29 = tail call ptr @__cxa_begin_catch(ptr %28) #18
  %30 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %31 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !363
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %29, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !184
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %32, ptr noundef %34, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %36)
          to label %37 unwind label %38

37:                                               ; preds = %27
  tail call void @__cxa_end_catch()
  br label %40

38:                                               ; preds = %27
  %39 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %43

40:                                               ; preds = %37, %15, %11, %7, %3
  ret void

41:                                               ; preds = %38, %22
  %42 = phi { ptr, i32 } [ %23, %22 ], [ %39, %38 ]
  resume { ptr, i32 } %42

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 align 2 !prof !62 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !364
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %3, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !365
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !366
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i32 [ 0, %7 ], [ %17, %14 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 9
  %21 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %3, i64 0, i32 2
  %22 = select i1 %6, ptr %21, ptr %20
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 28
  %25 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %3, i64 0, i32 8
  %26 = select i1 %6, ptr %25, ptr %24
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %2, i64 0, i32 23
  %31 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %3, i64 0, i32 6
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 11
  br label %36

35:                                               ; preds = %126, %18
  ret void

36:                                               ; preds = %29, %126
  %37 = phi i32 [ 0, %29 ], [ %127, %126 ]
  br i1 %6, label %41, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %30, align 8, !tbaa !364
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %31, align 8, !tbaa !365
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %38 ]
  %45 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef %37)
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi ptr [ null, %38 ], [ %45, %43 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = getelementptr inbounds ptr, ptr %48, i64 19
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(147) %47)
  br i1 %51, label %52, label %126

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !141
  %55 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !209
  %57 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = load ptr, ptr %1, align 8, !tbaa !64
  %60 = getelementptr inbounds ptr, ptr %59, i64 11
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %56, ptr noundef %58, ptr noundef null, i32 noundef %23)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %52
  %65 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %47, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !123
  %67 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %62, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !123
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %47, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !171
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %62, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !171
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %70, %64
  %77 = load ptr, ptr %33, align 8, !tbaa !90
  call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef 79, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %27, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %77)
  br label %126

78:                                               ; preds = %70, %52
  %79 = load ptr, ptr %34, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %80 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef %58, i32 noundef %56, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %80, align 8, !tbaa !369
  br label %84

84:                                               ; preds = %78, %82
  %85 = phi ptr [ %83, %82 ], [ null, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %126, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !371
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %126, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %93 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  br label %94

94:                                               ; preds = %91, %123
  %95 = phi i32 [ %124, %123 ], [ 0, %91 ]
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %85, i32 noundef %95)
  %97 = load ptr, ptr %96, align 8, !tbaa !172
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !141
  %100 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !211
  %102 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %99, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !209
  %104 = load ptr, ptr %1, align 8, !tbaa !64
  %105 = getelementptr inbounds ptr, ptr %104, i64 11
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %103, ptr noundef %101, ptr noundef null, i32 noundef %23)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %94
  %110 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %97, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !123
  %112 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !123
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %97, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !171
  %118 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %107, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !171
  %120 = icmp eq ptr %117, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %115, %109
  %122 = load ptr, ptr %93, align 8, !tbaa !90
  call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %92, i32 noundef 79, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %27, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %122)
  br label %123

123:                                              ; preds = %121, %115, %94
  %124 = add nuw i32 %95, 1
  %125 = icmp eq i32 %124, %89
  br i1 %125, label %126, label %94, !llvm.loop !373

126:                                              ; preds = %123, %87, %46, %84, %76
  %127 = add nuw i32 %37, 1
  %128 = icmp eq i32 %127, %19
  br i1 %128, label %35, label %36, !llvm.loop !374
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !375
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !334
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !337
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !338
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !376
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %14 = load ptr, ptr %10, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.5, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #18
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !337
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !338
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !339
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !376
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !334
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !377
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %9 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %10 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %11 = icmp eq ptr %2, null
  %12 = icmp ne ptr %4, null
  %13 = or i1 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 1403, i32 noundef 353, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #18
  br label %192

21:                                               ; preds = %8
  br i1 %11, label %170, label %22

22:                                               ; preds = %21
  %23 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %2)
  %24 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  store i8 0, ptr %9, align 8, !tbaa !379
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 1
  store i32 0, ptr %27, align 4, !tbaa !381
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 2
  store i32 8, ptr %28, align 8, !tbaa !382
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !383
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 4
  store ptr %26, ptr %30, align 8, !tbaa !384
  %31 = load ptr, ptr %26, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 64)
  store ptr %34, ptr %29, align 8, !tbaa !383
  %35 = load i32, ptr %28, align 8, !tbaa !382
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %37, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  %38 = load ptr, ptr %25, align 8, !tbaa !90
  store i8 0, ptr %10, align 8, !tbaa !379
  %39 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %10, i64 0, i32 1
  store i32 0, ptr %39, align 4, !tbaa !381
  %40 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %10, i64 0, i32 2
  store i32 8, ptr %40, align 8, !tbaa !382
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %10, i64 0, i32 3
  store ptr null, ptr %41, align 8, !tbaa !383
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %10, i64 0, i32 4
  store ptr %38, ptr %42, align 8, !tbaa !384
  %43 = load ptr, ptr %38, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 64)
          to label %47 unwind label %63

47:                                               ; preds = %22
  store ptr %46, ptr %41, align 8, !tbaa !383
  %48 = load i32, ptr %40, align 8, !tbaa !382
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 %50, i1 false)
  %51 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %23, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !385
  %53 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %24, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !385
  %55 = and i32 %52, 15
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = icmp eq i32 %55, 4
  %59 = icmp eq i32 %52, 9
  %60 = or i1 %59, %58
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %47
  %62 = invoke noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %23, i32 noundef %52, ptr noundef nonnull %9)
          to label %67 unwind label %65

63:                                               ; preds = %22
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %181

65:                                               ; preds = %133, %135, %146, %137, %134, %96, %88, %87, %86, %75, %61
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %171

67:                                               ; preds = %57, %61
  %68 = phi ptr [ %62, %61 ], [ %23, %57 ]
  %69 = and i32 %54, 15
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = icmp eq i32 %69, 4
  %73 = icmp eq i32 %54, 9
  %74 = or i1 %73, %72
  br i1 %74, label %75, label %77

75:                                               ; preds = %67, %71
  %76 = invoke noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, i32 noundef %54, ptr noundef nonnull %10)
          to label %77 unwind label %65

77:                                               ; preds = %71, %75
  %78 = phi ptr [ %76, %75 ], [ %24, %71 ]
  %79 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %68, i64 0, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !385
  %81 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %78, i64 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !385
  %83 = and i32 %80, 15
  switch i32 %83, label %151 [
    i32 0, label %84
    i32 6, label %94
    i32 7, label %94
    i32 8, label %94
    i32 9, label %107
    i32 4, label %119
    i32 5, label %131
  ]

84:                                               ; preds = %77
  %85 = and i32 %82, 15
  switch i32 %85, label %89 [
    i32 0, label %86
    i32 6, label %87
    i32 7, label %87
    i32 8, label %87
    i32 4, label %88
    i32 5, label %88
    i32 9, label %88
  ]

86:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_715SchemaValidator18checkNameAndTypeOKEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiS5_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, i32 noundef %3, ptr noundef nonnull %78, i32 noundef %5, ptr noundef %6)
          to label %151 unwind label %65

87:                                               ; preds = %84, %84, %84
  invoke void @_ZN11xercesc_2_715SchemaValidator13checkNSCompatEPKNS_15ContentSpecNodeES3_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %68, ptr noundef nonnull %78, i1 noundef zeroext %7)
          to label %151 unwind label %65

88:                                               ; preds = %84, %84, %84
  invoke void @_ZN11xercesc_2_715SchemaValidator21checkRecurseAsIfGroupEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiPKS3_iPNS_13ValueVectorOfIS4_EEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, i32 noundef %3, ptr noundef nonnull %78, i32 noundef %5, ptr noundef nonnull %10, ptr noundef %6)
          to label %151 unwind label %65

89:                                               ; preds = %84
  %90 = call ptr @__cxa_allocate_exception(i64 48) #18
  %91 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull @.str, i32 noundef 1456, i32 noundef 375, ptr noundef %91)
          to label %146 unwind label %92

92:                                               ; preds = %89
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %90) #18
  br label %171

94:                                               ; preds = %77, %77, %77
  %95 = and i32 %82, 15
  switch i32 %95, label %102 [
    i32 6, label %96
    i32 7, label %96
    i32 8, label %96
    i32 4, label %97
    i32 5, label %97
    i32 9, label %97
    i32 0, label %97
  ]

96:                                               ; preds = %94, %94, %94
  invoke void @_ZN11xercesc_2_715SchemaValidator13checkNSSubsetEPKNS_15ContentSpecNodeES3_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %68, ptr noundef nonnull %78)
          to label %151 unwind label %65

97:                                               ; preds = %94, %94, %94, %94
  %98 = call ptr @__cxa_allocate_exception(i64 48) #18
  %99 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %98, ptr noundef nonnull @.str, i32 noundef 1477, i32 noundef 366, ptr noundef %99)
          to label %146 unwind label %100

100:                                              ; preds = %97
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %98) #18
  br label %171

102:                                              ; preds = %94
  %103 = call ptr @__cxa_allocate_exception(i64 48) #18
  %104 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str, i32 noundef 1481, i32 noundef 375, ptr noundef %104)
          to label %146 unwind label %105

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %103) #18
  br label %171

107:                                              ; preds = %77
  %108 = and i32 %82, 15
  switch i32 %108, label %114 [
    i32 6, label %133
    i32 7, label %133
    i32 8, label %133
    i32 9, label %135
    i32 4, label %109
    i32 5, label %109
    i32 0, label %109
  ]

109:                                              ; preds = %107, %107, %107
  %110 = call ptr @__cxa_allocate_exception(i64 48) #18
  %111 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 367, ptr noundef %111)
          to label %146 unwind label %112

112:                                              ; preds = %109
  %113 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %110) #18
  br label %171

114:                                              ; preds = %107
  %115 = call ptr @__cxa_allocate_exception(i64 48) #18
  %116 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %115, ptr noundef nonnull @.str, i32 noundef 1509, i32 noundef 375, ptr noundef %116)
          to label %146 unwind label %117

117:                                              ; preds = %114
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %115) #18
  br label %171

119:                                              ; preds = %77
  %120 = and i32 %82, 15
  switch i32 %120, label %126 [
    i32 6, label %133
    i32 7, label %133
    i32 8, label %133
    i32 4, label %135
    i32 9, label %121
    i32 5, label %121
    i32 0, label %121
  ]

121:                                              ; preds = %119, %119, %119
  %122 = call ptr @__cxa_allocate_exception(i64 48) #18
  %123 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %122, ptr noundef nonnull @.str, i32 noundef 1533, i32 noundef 368, ptr noundef %123)
          to label %146 unwind label %124

124:                                              ; preds = %121
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %122) #18
  br label %171

126:                                              ; preds = %119
  %127 = call ptr @__cxa_allocate_exception(i64 48) #18
  %128 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %127, ptr noundef nonnull @.str, i32 noundef 1537, i32 noundef 375, ptr noundef %128)
          to label %146 unwind label %129

129:                                              ; preds = %126
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %127) #18
  br label %171

131:                                              ; preds = %77
  %132 = and i32 %82, 15
  switch i32 %132, label %143 [
    i32 6, label %133
    i32 7, label %133
    i32 8, label %133
    i32 9, label %134
    i32 5, label %135
    i32 4, label %137
    i32 0, label %138
  ]

133:                                              ; preds = %131, %131, %131, %119, %119, %119, %107, %107, %107
  invoke void @_ZN11xercesc_2_715SchemaValidator30checkNSRecurseCheckCardinalityEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %78, i1 noundef zeroext %7)
          to label %151 unwind label %65

134:                                              ; preds = %131
  invoke void @_ZN11xercesc_2_715SchemaValidator21checkRecurseUnorderedEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %78, ptr noundef nonnull %10, i32 noundef %5, ptr noundef %6)
          to label %151 unwind label %65

135:                                              ; preds = %131, %119, %107
  %136 = phi i1 [ false, %107 ], [ true, %119 ], [ false, %131 ]
  invoke void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, i32 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %78, i32 noundef %5, ptr noundef nonnull %10, ptr noundef %6, i1 noundef zeroext %136)
          to label %151 unwind label %65

137:                                              ; preds = %131
  invoke void @_ZN11xercesc_2_715SchemaValidator14checkMapAndSumEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %68, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %78, ptr noundef nonnull %10, i32 noundef %5, ptr noundef %6)
          to label %151 unwind label %65

138:                                              ; preds = %131
  %139 = call ptr @__cxa_allocate_exception(i64 48) #18
  %140 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %139, ptr noundef nonnull @.str, i32 noundef 1571, i32 noundef 369, ptr noundef %140)
          to label %146 unwind label %141

141:                                              ; preds = %138
  %142 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %139) #18
  br label %171

143:                                              ; preds = %131
  %144 = call ptr @__cxa_allocate_exception(i64 48) #18
  %145 = load ptr, ptr %25, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %144, ptr noundef nonnull @.str, i32 noundef 1575, i32 noundef 375, ptr noundef %145)
          to label %146 unwind label %149

146:                                              ; preds = %143, %138, %126, %121, %114, %109, %102, %97, %89
  %147 = phi ptr [ %90, %89 ], [ %98, %97 ], [ %103, %102 ], [ %110, %109 ], [ %115, %114 ], [ %122, %121 ], [ %127, %126 ], [ %139, %138 ], [ %144, %143 ]
  invoke void @__cxa_throw(ptr nonnull %147, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %148 unwind label %65

148:                                              ; preds = %146
  unreachable

149:                                              ; preds = %143
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %144) #18
  br label %171

151:                                              ; preds = %133, %135, %137, %134, %88, %87, %86, %77, %96
  %152 = load ptr, ptr %42, align 8, !tbaa !384
  %153 = load ptr, ptr %41, align 8, !tbaa !383
  %154 = load ptr, ptr %152, align 8, !tbaa !64
  %155 = getelementptr inbounds ptr, ptr %154, i64 3
  %156 = load ptr, ptr %155, align 8
  invoke void %156(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %153)
          to label %160 unwind label %157

157:                                              ; preds = %151
  %158 = landingpad { ptr, i32 }
          catch ptr null
  %159 = extractvalue { ptr, i32 } %158, 0
  call void @__clang_call_terminate(ptr %159) #19
  unreachable

160:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  %161 = load ptr, ptr %30, align 8, !tbaa !384
  %162 = load ptr, ptr %29, align 8, !tbaa !383
  %163 = load ptr, ptr %161, align 8, !tbaa !64
  %164 = getelementptr inbounds ptr, ptr %163, i64 3
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(8) %161, ptr noundef %162)
          to label %169 unwind label %166

166:                                              ; preds = %160
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #19
  unreachable

169:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %170

170:                                              ; preds = %21, %169
  ret void

171:                                              ; preds = %149, %141, %129, %124, %117, %112, %105, %100, %92, %65
  %172 = phi { ptr, i32 } [ %66, %65 ], [ %150, %149 ], [ %142, %141 ], [ %130, %129 ], [ %125, %124 ], [ %118, %117 ], [ %113, %112 ], [ %106, %105 ], [ %101, %100 ], [ %93, %92 ]
  %173 = load ptr, ptr %42, align 8, !tbaa !384
  %174 = load ptr, ptr %41, align 8, !tbaa !383
  %175 = load ptr, ptr %173, align 8, !tbaa !64
  %176 = getelementptr inbounds ptr, ptr %175, i64 3
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef %174)
          to label %181 unwind label %178

178:                                              ; preds = %171
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #19
  unreachable

181:                                              ; preds = %171, %63
  %182 = phi { ptr, i32 } [ %64, %63 ], [ %172, %171 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  %183 = load ptr, ptr %30, align 8, !tbaa !384
  %184 = load ptr, ptr %29, align 8, !tbaa !383
  %185 = load ptr, ptr %183, align 8, !tbaa !64
  %186 = getelementptr inbounds ptr, ptr %185, i64 3
  %187 = load ptr, ptr %186, align 8
  invoke void %187(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef %184)
          to label %191 unwind label %188

188:                                              ; preds = %181
  %189 = landingpad { ptr, i32 }
          catch ptr null
  %190 = extractvalue { ptr, i32 } %189, 0
  call void @__clang_call_terminate(ptr %190) #19
  unreachable

191:                                              ; preds = %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %192

192:                                              ; preds = %191, %19
  %193 = phi { ptr, i32 } [ %182, %191 ], [ %20, %19 ]
  resume { ptr, i32 } %193
}

declare void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !375, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !338
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !359, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !348, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !386, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !289

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !286
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator19postParseValidationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !62 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #6 align 2 !prof !387 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 4, !tbaa !388
  store i32 0, ptr %3, align 8, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  store i16 0, ptr %8, align 2, !tbaa !101
  %9 = load i16, ptr %2, align 2, !tbaa !101
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %114, label %11, !prof !389

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !391
  %16 = icmp ne i16 %6, 2
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  %18 = load i8, ptr %17, align 8, !range !75
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %16, i1 true, i1 %19, !prof !389
  br i1 %20, label %32, label %21, !prof !392

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !95
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr %7, align 8, !tbaa !100
  %28 = load i32, ptr %3, align 8, !tbaa !137
  %29 = add i32 %28, 1
  store i32 %29, ptr %3, align 8, !tbaa !137
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  store i16 32, ptr %31, align 2, !tbaa !101
  br label %32

32:                                               ; preds = %26, %11
  %33 = load i16, ptr %2, align 2, !tbaa !101
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %104, label %35, !prof !250

35:                                               ; preds = %32
  %36 = icmp eq i16 %6, 1
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 28
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  br label %39

39:                                               ; preds = %35, %95
  %40 = phi i16 [ %33, %35 ], [ %102, %95 ]
  %41 = phi ptr [ %2, %35 ], [ %101, %95 ]
  %42 = phi i8 [ 0, %35 ], [ %89, %95 ]
  br label %43

43:                                               ; preds = %39, %78
  %44 = phi i16 [ %40, %39 ], [ %80, %78 ]
  %45 = phi ptr [ %41, %39 ], [ %79, %78 ]
  %46 = phi i1 [ false, %39 ], [ true, %78 ]
  br i1 %36, label %47, label %55, !prof !393

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 28
  %49 = load ptr, ptr %48, align 8, !tbaa !394
  %50 = zext i16 %40 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !132
  %53 = icmp slt i8 %52, 0
  %54 = select i1 %53, i16 32, i16 %40
  br label %87

55:                                               ; preds = %43
  %56 = zext i16 %44 to i64
  br i1 %46, label %57, label %82, !prof !393

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 28
  %59 = load ptr, ptr %58, align 8, !tbaa !394
  %60 = getelementptr inbounds i8, ptr %59, i64 %56
  %61 = load i8, ptr %60, align 1, !tbaa !132
  %62 = icmp slt i8 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = and i8 %42, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  %68 = load i32, ptr %3, align 8, !tbaa !137
  %69 = load i32, ptr %67, align 4, !tbaa !95
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
  br label %72

72:                                               ; preds = %66, %71
  %73 = load ptr, ptr %7, align 8, !tbaa !100
  %74 = load i32, ptr %3, align 8, !tbaa !137
  %75 = add i32 %74, 1
  store i32 %75, ptr %3, align 8, !tbaa !137
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i16, ptr %73, i64 %76
  store i16 32, ptr %77, align 2, !tbaa !101
  br label %87

78:                                               ; preds = %82, %57
  %79 = getelementptr inbounds i16, ptr %45, i64 1
  %80 = load i16, ptr %79, align 2, !tbaa !101
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %104, label %43, !prof !400, !llvm.loop !401

82:                                               ; preds = %55
  %83 = load ptr, ptr %37, align 8, !tbaa !394
  %84 = getelementptr inbounds i8, ptr %83, i64 %56
  %85 = load i8, ptr %84, align 1, !tbaa !132
  %86 = icmp slt i8 %85, 0
  br i1 %86, label %78, label %87, !prof !393

87:                                               ; preds = %82, %47, %63, %72
  %88 = phi ptr [ %41, %47 ], [ %45, %72 ], [ %45, %63 ], [ %45, %82 ]
  %89 = phi i8 [ %42, %47 ], [ 1, %72 ], [ 1, %63 ], [ 1, %82 ]
  %90 = phi i16 [ %54, %47 ], [ %44, %72 ], [ %44, %63 ], [ %44, %82 ]
  %91 = load i32, ptr %3, align 8, !tbaa !137
  %92 = load i32, ptr %38, align 4, !tbaa !95
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95, !prof !393

94:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
  br label %95

95:                                               ; preds = %87, %94
  %96 = load ptr, ptr %7, align 8, !tbaa !100
  %97 = load i32, ptr %3, align 8, !tbaa !137
  %98 = add i32 %97, 1
  store i32 %98, ptr %3, align 8, !tbaa !137
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i16, ptr %96, i64 %99
  store i16 %90, ptr %100, align 2, !tbaa !101
  %101 = getelementptr inbounds i16, ptr %88, i64 1
  %102 = load i16, ptr %101, align 2, !tbaa !101
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %39, !prof !402, !llvm.loop !401

104:                                              ; preds = %95, %78, %32
  %105 = phi ptr [ %2, %32 ], [ %79, %78 ], [ %101, %95 ]
  %106 = getelementptr inbounds i16, ptr %105, i64 -1
  %107 = load i16, ptr %106, align 2, !tbaa !101
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 28
  %109 = load ptr, ptr %108, align 8, !tbaa !394
  %110 = zext i16 %107 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !132
  %113 = lshr i8 %112, 7
  store i8 %113, ptr %17, align 8, !tbaa !103
  br label %114

114:                                              ; preds = %104, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !371
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !289

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !403
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !404
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(186) %0, ptr noundef readonly %1) local_unnamed_addr #11 align 2 !prof !62 {
  br label %3

3:                                                ; preds = %24, %2
  %4 = phi ptr [ %1, %2 ], [ %22, %24 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = and i32 %6, 14
  %8 = icmp eq i32 %7, 6
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %10, %8
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !405
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !406
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = icmp eq ptr %26, null
  br i1 %27, label %3, label %28

28:                                               ; preds = %12, %16, %20, %24, %3
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !62 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !406
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %2, ptr noundef %14, ptr noundef %3)
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !381
  %17 = icmp eq i32 %16, 1
  %18 = icmp eq i32 %12, 1
  %19 = and i1 %18, %17
  %20 = icmp eq i32 %10, 1
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  br label %28

25:                                               ; preds = %4
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %2, ptr noundef %27, ptr noundef %3)
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %2, ptr noundef nonnull %6, ptr noundef %3)
  br label %28

28:                                               ; preds = %8, %25, %22
  %29 = phi ptr [ %1, %25 ], [ %24, %22 ], [ %1, %8 ]
  ret ptr %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator18checkNameAndTypeOKEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiS5_iPKNS_15ComplexTypeInfoE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !209
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !209
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %13, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = icmp eq ptr %17, null
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %7
  %24 = load i16, ptr %17, align 2, !tbaa !101
  %25 = load i16, ptr %19, align 2, !tbaa !101
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %36, label %47

27:                                               ; preds = %7
  br i1 %20, label %31, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %17, align 2, !tbaa !101
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28, %27
  br i1 %21, label %35, label %32

32:                                               ; preds = %31
  %33 = load i16, ptr %19, align 2, !tbaa !101
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32, %31
  br label %47

36:                                               ; preds = %23, %41
  %37 = phi i16 [ %44, %41 ], [ %24, %23 ]
  %38 = phi ptr [ %43, %41 ], [ %19, %23 ]
  %39 = phi ptr [ %42, %41 ], [ %17, %23 ]
  %40 = icmp eq i16 %37, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds i16, ptr %39, i64 1
  %43 = getelementptr inbounds i16, ptr %38, i64 1
  %44 = load i16, ptr %42, align 2, !tbaa !101
  %45 = load i16, ptr %43, align 2, !tbaa !101
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %36, label %47, !llvm.loop !138

47:                                               ; preds = %36, %41, %23, %28, %32, %35
  %48 = phi i1 [ true, %35 ], [ false, %32 ], [ false, %28 ], [ false, %23 ], [ %40, %41 ], [ %40, %36 ]
  %49 = icmp eq i32 %11, %15
  %50 = and i1 %49, %48
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %53 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull @.str, i32 noundef 1703, i32 noundef 356, ptr noundef %54)
          to label %55 unwind label %56

55:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %193

58:                                               ; preds = %47
  %59 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !168
  %60 = icmp eq i32 %11, %59
  br i1 %60, label %192, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !405
  %64 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %65 = load i32, ptr %64, align 4, !tbaa !406
  %66 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !405
  %68 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 10
  %69 = load i32, ptr %68, align 4, !tbaa !406
  %70 = icmp slt i32 %63, %67
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = icmp eq i32 %69, -1
  br i1 %72, label %84, label %73

73:                                               ; preds = %71
  %74 = icmp eq i32 %65, -1
  %75 = icmp sgt i32 %65, %69
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %61
  %78 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %79 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull @.str, i32 noundef 1713, i32 noundef 355, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %80)
          to label %81 unwind label %82

81:                                               ; preds = %77
  tail call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

82:                                               ; preds = %77
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %193

84:                                               ; preds = %73, %71
  %85 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !157
  %87 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !158
  %89 = load ptr, ptr %88, align 8, !tbaa !64
  %90 = getelementptr inbounds ptr, ptr %89, i64 10
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(40) %88, i32 noundef %11)
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !144
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %94, i64 0, i32 28
  %96 = load i32, ptr %95, align 4, !tbaa !145
  %97 = icmp eq i32 %11, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = load ptr, ptr %85, align 8, !tbaa !157
  %100 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %99, ptr noundef %92)
  br label %101

101:                                              ; preds = %98, %84
  %102 = phi ptr [ %100, %98 ], [ %1, %84 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %192, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %102, align 8, !tbaa !64
  %106 = getelementptr inbounds ptr, ptr %105, i64 11
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(160) %102, i32 noundef %11, ptr noundef %17, ptr noundef null, i32 noundef %3)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load ptr, ptr %102, align 8, !tbaa !64
  %112 = getelementptr inbounds ptr, ptr %111, i64 11
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(160) %102, i32 noundef %11, ptr noundef %17, ptr noundef null, i32 noundef -2)
  br label %115

115:                                              ; preds = %104, %110
  %116 = phi ptr [ %108, %104 ], [ %114, %110 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %192, label %118

118:                                              ; preds = %115
  %119 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator11findElementEijPKtPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr nonnull align 8 poison, i32 noundef %5, i32 noundef %15, ptr noundef %19, ptr noundef nonnull %102, ptr noundef %6)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %192, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %116, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !174
  %124 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %119, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !174
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  %128 = and i32 %123, 1
  %129 = icmp eq i32 %128, 0
  %130 = or i1 %129, %127
  br i1 %130, label %138, label %131

131:                                              ; preds = %121
  %132 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %133 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %132, ptr noundef nonnull @.str, i32 noundef 1745, i32 noundef 357, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %134)
          to label %135 unwind label %136

135:                                              ; preds = %131
  tail call void @__cxa_throw(ptr nonnull %132, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

136:                                              ; preds = %131
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %193

138:                                              ; preds = %121
  %139 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %116, i64 0, i32 11
  %140 = load ptr, ptr %139, align 8, !tbaa !162
  %141 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %119, i64 0, i32 11
  %142 = load ptr, ptr %141, align 8, !tbaa !162
  %143 = icmp eq ptr %142, null
  %144 = and i32 %125, 4
  %145 = icmp eq i32 %144, 0
  %146 = or i1 %145, %143
  br i1 %146, label %177, label %147

147:                                              ; preds = %138
  %148 = and i32 %123, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %170, label %150

150:                                              ; preds = %147
  %151 = icmp eq ptr %140, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %150
  %153 = load i16, ptr %140, align 2, !tbaa !101
  %154 = load i16, ptr %142, align 2, !tbaa !101
  %155 = icmp eq i16 %153, %154
  br i1 %155, label %159, label %170

156:                                              ; preds = %150
  %157 = load i16, ptr %142, align 2, !tbaa !101
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %177, label %170

159:                                              ; preds = %152, %164
  %160 = phi i16 [ %167, %164 ], [ %153, %152 ]
  %161 = phi ptr [ %166, %164 ], [ %142, %152 ]
  %162 = phi ptr [ %165, %164 ], [ %140, %152 ]
  %163 = icmp eq i16 %160, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds i16, ptr %162, i64 1
  %166 = getelementptr inbounds i16, ptr %161, i64 1
  %167 = load i16, ptr %165, align 2, !tbaa !101
  %168 = load i16, ptr %166, align 2, !tbaa !101
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %159, label %170, !llvm.loop !138

170:                                              ; preds = %164, %152, %156, %147
  %171 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %172 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %171, ptr noundef nonnull @.str, i32 noundef 1754, i32 noundef 358, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %173)
          to label %174 unwind label %175

174:                                              ; preds = %170
  tail call void @__cxa_throw(ptr nonnull %171, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

175:                                              ; preds = %170
  %176 = landingpad { ptr, i32 }
          cleanup
  br label %193

177:                                              ; preds = %159, %156, %138
  %178 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %116, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !254
  %180 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %119, i64 0, i32 8
  %181 = load i32, ptr %180, align 4, !tbaa !254
  %182 = and i32 %181, %179
  %183 = icmp eq i32 %182, %181
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %186 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %185, ptr noundef nonnull @.str, i32 noundef 1761, i32 noundef 359, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %187)
          to label %188 unwind label %189

188:                                              ; preds = %184
  tail call void @__cxa_throw(ptr nonnull %185, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

189:                                              ; preds = %184
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %193

191:                                              ; preds = %177
  tail call void @_ZN11xercesc_2_715SchemaValidator18checkICRestrictionEPKNS_17SchemaElementDeclES3_PKtS5_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %116, ptr noundef nonnull %119, ptr noundef %17, ptr noundef %19)
  tail call void @_ZN11xercesc_2_715SchemaValidator12checkTypesOKEPKNS_17SchemaElementDeclES3_PKt(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %116, ptr noundef nonnull %119, ptr noundef %17)
  br label %192

192:                                              ; preds = %101, %191, %118, %115, %58
  ret void

193:                                              ; preds = %136, %189, %175, %82, %56
  %194 = phi ptr [ %132, %136 ], [ %185, %189 ], [ %171, %175 ], [ %78, %82 ], [ %52, %56 ]
  %195 = phi { ptr, i32 } [ %137, %136 ], [ %190, %189 ], [ %176, %175 ], [ %83, %82 ], [ %57, %56 ]
  tail call void @__cxa_free_exception(ptr %194) #18
  resume { ptr, i32 } %195
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator13checkNSCompatEPKNS_15ContentSpecNodeES3_b(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  br i1 %3, label %5, label %32

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !405
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !406
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !405
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !406
  %14 = icmp slt i32 %7, %11
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = icmp eq i32 %13, -1
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = icmp eq i32 %9, -1
  %19 = icmp sgt i32 %9, %13
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %5
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %23 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 1653, i32 noundef 355, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %67

32:                                               ; preds = %17, %15, %4
  %33 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !209
  %37 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !385
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %66, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !209
  %46 = icmp eq i32 %39, 8
  %47 = icmp eq i32 %45, %36
  br i1 %46, label %48, label %49

48:                                               ; preds = %41
  br i1 %47, label %66, label %56

49:                                               ; preds = %41
  br i1 %47, label %56, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !144
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %52, i64 0, i32 28
  %54 = load i32, ptr %53, align 4, !tbaa !145
  %55 = icmp eq i32 %54, %36
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %49, %48
  %57 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %58 = load ptr, ptr %33, align 8, !tbaa !86
  %59 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !211
  %61 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str, i32 noundef 1659, i32 noundef 354, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

64:                                               ; preds = %56
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %67

66:                                               ; preds = %32, %48, %50
  ret void

67:                                               ; preds = %64, %30
  %68 = phi ptr [ %57, %64 ], [ %22, %30 ]
  %69 = phi { ptr, i32 } [ %65, %64 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %68) #18
  resume { ptr, i32 } %69
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator21checkRecurseAsIfGroupEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiPKS3_iPNS_13ValueVectorOfIS4_EEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %9 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %10 = alloca %"class.xercesc_2_7::ContentSpecNode", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  store i8 0, ptr %9, align 8, !tbaa !379
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !381
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !382
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !383
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %9, i64 0, i32 4
  store ptr %14, ptr %18, align 8, !tbaa !384
  %19 = load ptr, ptr %14, align 8, !tbaa !64
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 8)
  store ptr %22, ptr %17, align 8, !tbaa !383
  %23 = load i32, ptr %16, align 8, !tbaa !382
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #18
  %26 = load ptr, ptr %13, align 8, !tbaa !90
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !64
  %27 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !407
  %28 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 2
  %29 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store ptr %2, ptr %29, align 8, !tbaa !78
  %30 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 5
  store ptr null, ptr %30, align 8, !tbaa !83
  %31 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 6
  store i32 %12, ptr %31, align 8, !tbaa !385
  %32 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 7
  store i8 0, ptr %32, align 4, !tbaa !67
  %33 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 8
  store i8 1, ptr %33, align 1, !tbaa !81
  %34 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 9
  store i32 1, ptr %34, align 8, !tbaa !405
  %35 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 10
  store i32 1, ptr %35, align 4, !tbaa !406
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 1)
          to label %36 unwind label %45

36:                                               ; preds = %8
  %37 = load ptr, ptr %17, align 8, !tbaa !383
  %38 = load i32, ptr %15, align 4, !tbaa !381
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  store ptr %2, ptr %40, align 8, !tbaa !172
  %41 = add i32 %38, 1
  store i32 %41, ptr %15, align 4, !tbaa !381
  %42 = load i32, ptr %11, align 8, !tbaa !385
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %43, 4
  invoke void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %44)
          to label %52 unwind label %45

45:                                               ; preds = %8, %36
  %46 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #18
  %47 = load ptr, ptr %18, align 8, !tbaa !384
  %48 = load ptr, ptr %17, align 8, !tbaa !383
  %49 = load ptr, ptr %47, align 8, !tbaa !64
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %48)
          to label %65 unwind label %62

52:                                               ; preds = %36
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #18
  %53 = load ptr, ptr %18, align 8, !tbaa !384
  %54 = load ptr, ptr %17, align 8, !tbaa !383
  %55 = load ptr, ptr %53, align 8, !tbaa !64
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %54)
          to label %61 unwind label %58

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #19
  unreachable

61:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  ret void

62:                                               ; preds = %45
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  resume { ptr, i32 } %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator13checkNSSubsetEPKNS_15ContentSpecNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !406
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !405
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !406
  %12 = icmp slt i32 %5, %9
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %11, -1
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %7, -1
  %17 = icmp sgt i32 %7, %11
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %3
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1995, i32 noundef 370, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %61

26:                                               ; preds = %15, %13
  %27 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !385
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %60, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !385
  %34 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !209
  %38 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !209
  %42 = and i32 %33, 15
  %43 = icmp eq i32 %42, 7
  %44 = icmp eq i32 %29, 7
  %45 = and i1 %44, %43
  %46 = icmp eq i32 %37, %41
  %47 = and i1 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %31
  %49 = icmp eq i32 %42, 8
  %50 = select i1 %46, i32 8, i32 7
  %51 = icmp eq i32 %29, %50
  %52 = and i1 %49, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %55 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 1999, i32 noundef 371, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %61

60:                                               ; preds = %26, %31, %48
  ret void

61:                                               ; preds = %58, %24
  %62 = phi ptr [ %54, %58 ], [ %20, %24 ]
  %63 = phi { ptr, i32 } [ %59, %58 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %62) #18
  resume { ptr, i32 } %63
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator30checkNSRecurseCheckCardinalityEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br i1 %6, label %10, label %29

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !406
  %15 = icmp slt i32 %8, %12
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %14, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %9, -1
  %20 = icmp sgt i32 %9, %14
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %10
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 2055, i32 noundef 372, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #18
  resume { ptr, i32 } %28

29:                                               ; preds = %18, %16, %7
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !381
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %34, %29
  ret void

34:                                               ; preds = %29, %34
  %35 = phi i32 [ %38, %34 ], [ 0, %29 ]
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %35)
  %37 = load ptr, ptr %36, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %37, i32 noundef %4, ptr noundef %5, i32 noundef -1, ptr noundef null, i1 noundef zeroext false)
  %38 = add nuw i32 %35, 1
  %39 = icmp eq i32 %38, %31
  br i1 %39, label %33, label %34, !llvm.loop !408
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !406
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !405
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !406
  %19 = icmp slt i32 %12, %16
  br i1 %19, label %26, label %20

20:                                               ; preds = %10
  %21 = icmp eq i32 %18, -1
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %14, -1
  %24 = icmp sgt i32 %14, %18
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %10
  %27 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 1929, i32 noundef 364, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %111

33:                                               ; preds = %22, %20
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %4, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !381
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %7, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !381
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %84, label %39

39:                                               ; preds = %33, %75
  %40 = phi i32 [ %81, %75 ], [ 0, %33 ]
  %41 = phi i32 [ %76, %75 ], [ 0, %33 ]
  %42 = phi i32 [ %80, %75 ], [ 0, %33 ]
  %43 = icmp ult i32 %41, %37
  br i1 %43, label %44, label %75

44:                                               ; preds = %39, %70
  %45 = phi i32 [ %49, %70 ], [ %41, %39 ]
  %46 = phi i8 [ %72, %70 ], [ 0, %39 ]
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %45)
  %48 = load ptr, ptr %47, align 8, !tbaa !172
  %49 = add nuw i32 %45, 1
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %40)
          to label %51 unwind label %53

51:                                               ; preds = %44
  %52 = load ptr, ptr %50, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %52, i32 noundef %3, ptr noundef %48, i32 noundef %6, ptr noundef %8, i1 noundef zeroext true)
          to label %70 unwind label %53

53:                                               ; preds = %51, %44
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %55 = extractvalue { ptr, i32 } %54, 1
  %56 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %53
  %59 = extractvalue { ptr, i32 } %54, 0
  %60 = tail call ptr @__cxa_begin_catch(ptr %59) #18
  br i1 %9, label %67, label %61

61:                                               ; preds = %58
  %62 = invoke noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %48)
          to label %63 unwind label %65

63:                                               ; preds = %61
  %64 = icmp ne i32 %62, 0
  br label %67

65:                                               ; preds = %61
  %66 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %114 unwind label %116

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %64, %63 ]
  tail call void @__cxa_end_catch()
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %67, %51
  %71 = phi i1 [ false, %51 ], [ %69, %67 ]
  %72 = phi i8 [ 1, %51 ], [ %46, %67 ]
  %73 = icmp ult i32 %49, %37
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %44, label %75, !llvm.loop !409

75:                                               ; preds = %70, %39
  %76 = phi i32 [ %41, %39 ], [ %49, %70 ]
  %77 = phi i8 [ 0, %39 ], [ %72, %70 ]
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i32 365, i32 %42
  %81 = add nuw i32 %40, 1
  %82 = icmp eq i32 %81, %35
  %83 = select i1 %79, i1 true, i1 %82
  br i1 %83, label %84, label %39, !llvm.loop !410

84:                                               ; preds = %75, %33
  %85 = phi i32 [ 0, %33 ], [ %80, %75 ]
  %86 = phi i32 [ 0, %33 ], [ %76, %75 ]
  %87 = icmp ne i32 %85, 0
  %88 = select i1 %9, i1 true, i1 %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %84
  %90 = icmp ult i32 %86, %37
  br i1 %90, label %94, label %100

91:                                               ; preds = %94
  %92 = add nuw i32 %95, 1
  %93 = icmp eq i32 %92, %37
  br i1 %93, label %100, label %94, !llvm.loop !411

94:                                               ; preds = %89, %91
  %95 = phi i32 [ %92, %91 ], [ %86, %89 ]
  %96 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %95)
  %97 = load ptr, ptr %96, align 8, !tbaa !172
  %98 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %91, label %100

100:                                              ; preds = %94, %91, %89, %84
  %101 = phi i32 [ %85, %84 ], [ 0, %89 ], [ 0, %91 ], [ 365, %94 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %105 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %104, ptr noundef nonnull @.str, i32 noundef 1985, i32 noundef %101, ptr noundef %106)
          to label %107 unwind label %108

107:                                              ; preds = %103
  tail call void @__cxa_throw(ptr nonnull %104, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

108:                                              ; preds = %103
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %111

110:                                              ; preds = %100
  ret void

111:                                              ; preds = %31, %108
  %112 = phi ptr [ %104, %108 ], [ %27, %31 ]
  %113 = phi { ptr, i32 } [ %109, %108 ], [ %32, %31 ]
  tail call void @__cxa_free_exception(ptr %112) #18
  br label %114

114:                                              ; preds = %53, %111, %65
  %115 = phi { ptr, i32 } [ %66, %65 ], [ %113, %111 ], [ %54, %53 ]
  resume { ptr, i32 } %115

116:                                              ; preds = %65
  %117 = landingpad { ptr, i32 }
          catch ptr null
  %118 = extractvalue { ptr, i32 } %117, 0
  tail call void @__clang_call_terminate(ptr %118) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator21checkRecurseUnorderedEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor.8", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !406
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !405
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !406
  %19 = icmp slt i32 %12, %16
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = icmp eq i32 %18, -1
  br i1 %21, label %35, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %14, -1
  %24 = icmp sgt i32 %14, %18
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22, %9
  %27 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 2079, i32 noundef 364, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  tail call void @__cxa_free_exception(ptr %27) #18
  br label %144

35:                                               ; preds = %22, %20
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !381
  %38 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %6, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !381
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  %42 = zext i32 %39 to i64
  %43 = load ptr, ptr %41, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %42)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %47 = load ptr, ptr %40, align 8, !tbaa !90
  store ptr %46, ptr %10, align 8, !tbaa !412
  %48 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.8", ptr %10, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !414
  %49 = icmp eq i32 %39, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %35
  %51 = zext i32 %39 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %46, i8 0, i64 %51, i1 false), !tbaa !415
  br label %52

52:                                               ; preds = %50, %35
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %98, label %54

54:                                               ; preds = %52
  %55 = icmp eq i32 %39, 0
  br label %56

56:                                               ; preds = %92, %54
  %57 = phi i32 [ 0, %54 ], [ %95, %92 ]
  %58 = phi i32 [ 0, %54 ], [ %94, %92 ]
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %57)
          to label %60 unwind label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %59, align 8, !tbaa !172
  br i1 %55, label %92, label %66

62:                                               ; preds = %56
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  %65 = extractvalue { ptr, i32 } %63, 1
  br label %141

66:                                               ; preds = %60, %84
  %67 = phi i32 [ %85, %84 ], [ 0, %60 ]
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %67)
          to label %69 unwind label %76

69:                                               ; preds = %66
  %70 = load ptr, ptr %68, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %61, i32 noundef %4, ptr noundef %70, i32 noundef %7, ptr noundef %8, i1 noundef zeroext true)
          to label %71 unwind label %76

71:                                               ; preds = %69
  %72 = zext i32 %67 to i64
  %73 = getelementptr inbounds i8, ptr %46, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !415, !range !75, !noundef !76
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %92

76:                                               ; preds = %69, %66
  %77 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %78 = extractvalue { ptr, i32 } %77, 0
  %79 = extractvalue { ptr, i32 } %77, 1
  %80 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %141

82:                                               ; preds = %76
  %83 = tail call ptr @__cxa_begin_catch(ptr %78) #18
  invoke void @__cxa_end_catch()
          to label %84 unwind label %88

84:                                               ; preds = %82
  %85 = add nuw i32 %67, 1
  %86 = icmp eq i32 %85, %39
  br i1 %86, label %92, label %66, !llvm.loop !416

87:                                               ; preds = %71
  store i8 1, ptr %73, align 1, !tbaa !415
  br label %92

88:                                               ; preds = %82
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = extractvalue { ptr, i32 } %89, 0
  %91 = extractvalue { ptr, i32 } %89, 1
  br label %141

92:                                               ; preds = %84, %60, %71, %87
  %93 = phi i1 [ true, %87 ], [ false, %71 ], [ false, %60 ], [ false, %84 ]
  %94 = select i1 %93, i32 %58, i32 373
  %95 = add nuw i32 %57, 1
  %96 = icmp ne i32 %95, %37
  %97 = select i1 %93, i1 %96, i1 false
  br i1 %97, label %56, label %98, !llvm.loop !417

98:                                               ; preds = %92, %52
  %99 = phi i32 [ 0, %52 ], [ %94, %92 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = icmp eq i32 %39, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %101
  %104 = zext i32 %39 to i64
  br label %105

105:                                              ; preds = %103, %122
  %106 = phi i64 [ 0, %103 ], [ %123, %122 ]
  %107 = getelementptr inbounds i8, ptr %46, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !415, !range !75, !noundef !76
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = trunc i64 %106 to i32
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %111)
          to label %113 unwind label %118

113:                                              ; preds = %110
  %114 = load ptr, ptr %112, align 8, !tbaa !172
  %115 = invoke noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %114)
          to label %116 unwind label %118

116:                                              ; preds = %113
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %122, label %125

118:                                              ; preds = %113, %110
  %119 = landingpad { ptr, i32 }
          cleanup
  %120 = extractvalue { ptr, i32 } %119, 0
  %121 = extractvalue { ptr, i32 } %119, 1
  br label %141

122:                                              ; preds = %105, %116
  %123 = add nuw nsw i64 %106, 1
  %124 = icmp eq i64 %123, %104
  br i1 %124, label %125, label %105, !llvm.loop !418

125:                                              ; preds = %116, %122, %101, %98
  %126 = phi i32 [ %99, %98 ], [ 0, %101 ], [ 0, %122 ], [ 373, %116 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %130 = load ptr, ptr %40, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %129, ptr noundef nonnull @.str, i32 noundef 2140, i32 noundef %126, ptr noundef %130)
          to label %131 unwind label %132

131:                                              ; preds = %128
  invoke void @__cxa_throw(ptr nonnull %129, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %149 unwind label %136

132:                                              ; preds = %128
  %133 = landingpad { ptr, i32 }
          cleanup
  %134 = extractvalue { ptr, i32 } %133, 0
  %135 = extractvalue { ptr, i32 } %133, 1
  tail call void @__cxa_free_exception(ptr %129) #18
  br label %141

136:                                              ; preds = %131
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = extractvalue { ptr, i32 } %137, 0
  %139 = extractvalue { ptr, i32 } %137, 1
  br label %141

140:                                              ; preds = %125
  call void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  ret void

141:                                              ; preds = %76, %62, %88, %136, %132, %118
  %142 = phi i32 [ %139, %136 ], [ %135, %132 ], [ %121, %118 ], [ %65, %62 ], [ %91, %88 ], [ %79, %76 ]
  %143 = phi ptr [ %138, %136 ], [ %134, %132 ], [ %120, %118 ], [ %64, %62 ], [ %90, %88 ], [ %78, %76 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %144

144:                                              ; preds = %141, %31
  %145 = phi i32 [ %142, %141 ], [ %34, %31 ]
  %146 = phi ptr [ %143, %141 ], [ %33, %31 ]
  %147 = insertvalue { ptr, i32 } poison, ptr %146, 0
  %148 = insertvalue { ptr, i32 } %147, i32 %145, 1
  resume { ptr, i32 } %148

149:                                              ; preds = %131
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator14checkMapAndSumEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !381
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %6, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !381
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !405
  %16 = mul nsw i32 %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !406
  %19 = icmp eq i32 %18, -1
  %20 = mul nsw i32 %18, %11
  %21 = select i1 %19, i32 -1, i32 %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !405
  %24 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !406
  %26 = icmp slt i32 %16, %23
  br i1 %26, label %33, label %27

27:                                               ; preds = %9
  %28 = icmp eq i32 %25, -1
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = icmp eq i32 %21, -1
  %31 = icmp sgt i32 %21, %25
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %9
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 2166, i32 noundef 364, ptr noundef %36)
          to label %41 unwind label %42

37:                                               ; preds = %27, %29
  %38 = icmp sgt i32 %11, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  %40 = icmp sgt i32 %13, 0
  br label %48

41:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

42:                                               ; preds = %33
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %81

44:                                               ; preds = %52
  %45 = add nuw nsw i32 %49, 1
  %46 = icmp eq i32 %45, %11
  br i1 %46, label %47, label %48, !llvm.loop !419

47:                                               ; preds = %44, %37
  ret void

48:                                               ; preds = %39, %44
  %49 = phi i32 [ 0, %39 ], [ %45, %44 ]
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %49)
  %51 = load ptr, ptr %50, align 8, !tbaa !172
  br i1 %40, label %53, label %74

52:                                               ; preds = %67
  br i1 %72, label %74, label %44

53:                                               ; preds = %48, %67
  %54 = phi i32 [ %69, %67 ], [ 0, %48 ]
  %55 = phi i8 [ %68, %67 ], [ 0, %48 ]
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %54)
          to label %57 unwind label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %56, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %51, i32 noundef %4, ptr noundef %58, i32 noundef %7, ptr noundef %8, i1 noundef zeroext true)
          to label %67 unwind label %59

59:                                               ; preds = %57, %53
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %61 = extractvalue { ptr, i32 } %60, 1
  %62 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = extractvalue { ptr, i32 } %60, 0
  %66 = tail call ptr @__cxa_begin_catch(ptr %65) #18
  tail call void @__cxa_end_catch()
  br label %67

67:                                               ; preds = %57, %64
  %68 = phi i8 [ %55, %64 ], [ 1, %57 ]
  %69 = add nuw nsw i32 %54, 1
  %70 = icmp slt i32 %69, %13
  %71 = and i8 %68, 1
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %53, label %52, !llvm.loop !420

74:                                               ; preds = %48, %52
  %75 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %76 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 2189, i32 noundef 374, ptr noundef %77)
          to label %78 unwind label %79

78:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %81

81:                                               ; preds = %42, %79
  %82 = phi ptr [ %75, %79 ], [ %34, %42 ]
  %83 = phi { ptr, i32 } [ %80, %79 ], [ %43, %42 ]
  tail call void @__cxa_free_exception(ptr %82) #18
  br label %84

84:                                               ; preds = %59, %81
  %85 = phi { ptr, i32 } [ %83, %81 ], [ %60, %59 ]
  resume { ptr, i32 } %85
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !62 {
  br label %5

5:                                                ; preds = %51, %45, %4
  %6 = phi i32 [ %1, %4 ], [ %15, %45 ], [ %15, %51 ]
  %7 = phi ptr [ %2, %4 ], [ %47, %45 ], [ %17, %51 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !405
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !406
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !385
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = and i32 %15, 15
  %21 = add nsw i32 %20, -6
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %9
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !383
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !381
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  store ptr %7, ptr %29, align 8, !tbaa !172
  %30 = add i32 %27, 1
  store i32 %30, ptr %26, align 4, !tbaa !381
  br label %62

31:                                               ; preds = %19
  %32 = icmp ne i32 %11, 1
  %33 = icmp ne i32 %13, 1
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !383
  %38 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !381
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  store ptr %7, ptr %41, align 8, !tbaa !172
  %42 = add i32 %39, 1
  store i32 %42, ptr %38, align 4, !tbaa !381
  br label %62

43:                                               ; preds = %31
  %44 = icmp eq ptr %17, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  br label %5

48:                                               ; preds = %43
  %49 = and i32 %6, 15
  %50 = icmp eq i32 %49, %20
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %7, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %15, ptr noundef %53, ptr noundef %3)
  br label %5

54:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
  %55 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !383
  %57 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %3, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !381
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  store ptr %7, ptr %60, align 8, !tbaa !172
  %61 = add i32 %58, 1
  store i32 %61, ptr %57, align 4, !tbaa !381
  br label %62

62:                                               ; preds = %23, %54, %35, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !381
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !384
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !383
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator26wildcardEltAllowsNamespaceEPKNS_15ContentSpecNodeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 align 2 !prof !62 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !385
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !209
  %13 = icmp eq i32 %6, 8
  %14 = icmp eq i32 %12, %2
  br i1 %13, label %15, label %16

15:                                               ; preds = %8
  br i1 %14, label %24, label %23

16:                                               ; preds = %8
  br i1 %14, label %23, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %19, i64 0, i32 28
  %21 = load i32, ptr %20, align 4, !tbaa !145
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %17, %15
  br label %24

24:                                               ; preds = %17, %23, %15, %3
  %25 = phi i1 [ true, %3 ], [ false, %23 ], [ true, %15 ], [ true, %17 ]
  ret i1 %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715SchemaValidator11findElementEijPKtPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5) local_unnamed_addr #3 align 2 !prof !62 {
  %7 = load ptr, ptr %4, align 8, !tbaa !64
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = load ptr, ptr %4, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 11
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef -2)
  %17 = icmp eq ptr %16, null
  %18 = icmp ne ptr %5, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %33

20:                                               ; preds = %12, %29
  %21 = phi ptr [ %31, %29 ], [ %5, %12 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !362
  %24 = load ptr, ptr %4, align 8, !tbaa !64
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %23)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %21, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !260
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !421

33:                                               ; preds = %29, %20, %12, %6
  %34 = phi ptr [ %10, %6 ], [ %16, %12 ], [ %27, %20 ], [ null, %29 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator18checkICRestrictionEPKNS_17SchemaElementDeclES3_PKtS5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !422
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !423
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !422
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !423
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %12 ]
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = icmp eq i32 %13, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %21, 0
  br label %35

27:                                               ; preds = %20
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 1819, i32 noundef 361, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %61

34:                                               ; preds = %58, %23
  ret void

35:                                               ; preds = %25, %58
  %36 = phi i32 [ 0, %25 ], [ %59, %58 ]
  %37 = load ptr, ptr %6, align 8, !tbaa !422
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef %36)
  br label %41

41:                                               ; preds = %35, %39
  %42 = phi ptr [ %40, %39 ], [ null, %35 ]
  br i1 %26, label %51, label %46

43:                                               ; preds = %46
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %21
  br i1 %45, label %51, label %46, !llvm.loop !425

46:                                               ; preds = %41, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %41 ]
  %48 = load ptr, ptr %14, align 8, !tbaa !422, !nonnull !76, !noundef !76
  %49 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef %47)
  %50 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %42, ptr noundef nonnull align 8 dereferenceable(52) %49)
  br i1 %50, label %58, label %43

51:                                               ; preds = %41, %43
  %52 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %53 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull @.str, i32 noundef 1836, i32 noundef 362, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %54)
          to label %55 unwind label %56

55:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %61

58:                                               ; preds = %46
  %59 = add nuw i32 %36, 1
  %60 = icmp eq i32 %59, %13
  br i1 %60, label %34, label %35, !llvm.loop !426

61:                                               ; preds = %56, %32
  %62 = phi ptr [ %52, %56 ], [ %28, %32 ]
  %63 = phi { ptr, i32 } [ %57, %56 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %62) #18
  resume { ptr, i32 } %63
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator12checkTypesOKEPKNS_17SchemaElementDeclES3_PKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %6, i64 0, i32 10
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 2
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = load i32, ptr %10, align 4, !tbaa !132
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %77, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %15, i64 0, i32 10
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 2
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 4, !tbaa !132
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %52

22:                                               ; preds = %13
  %23 = icmp eq i32 %11, 5
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 1858, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %78

31:                                               ; preds = %22
  br i1 %16, label %32, label %52

32:                                               ; preds = %31
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = icmp ne ptr %6, null
  %36 = icmp eq ptr %34, null
  %37 = or i1 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !171
  %41 = load ptr, ptr %34, align 8, !tbaa !64
  %42 = getelementptr inbounds ptr, ptr %41, i64 9
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef %40)
  br i1 %44, label %77, label %45

45:                                               ; preds = %38, %32
  %46 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull @.str, i32 noundef 1867, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %48)
          to label %49 unwind label %50

49:                                               ; preds = %45
  tail call void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %78

52:                                               ; preds = %31, %13
  %53 = icmp eq ptr %15, %6
  br i1 %53, label %77, label %54

54:                                               ; preds = %52
  %55 = icmp eq ptr %15, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %54, %61
  %57 = phi ptr [ %63, %61 ], [ %15, %54 ]
  %58 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %57, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !262
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %57, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !260
  %64 = icmp ne ptr %63, null
  %65 = icmp ne ptr %63, %6
  %66 = and i1 %64, %65
  br i1 %66, label %56, label %67, !llvm.loop !427

67:                                               ; preds = %61, %56
  %68 = phi ptr [ null, %56 ], [ %63, %61 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %54, %67
  %71 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %72 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull @.str, i32 noundef 1886, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %73)
          to label %74 unwind label %75

74:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

75:                                               ; preds = %70
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %78

77:                                               ; preds = %38, %52, %67, %4
  ret void

78:                                               ; preds = %75, %50, %29
  %79 = phi ptr [ %71, %75 ], [ %46, %50 ], [ %25, %29 ]
  %80 = phi { ptr, i32 } [ %76, %75 ], [ %51, %50 ], [ %30, %29 ]
  tail call void @__cxa_free_exception(ptr %79) #18
  resume { ptr, i32 } %80
}

declare noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isWildCardEltSubsetEPKNS_15ContentSpecNodeES3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(186) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 align 2 !prof !62 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !385
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !385
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !209
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !209
  %19 = and i32 %10, 15
  %20 = icmp eq i32 %19, 7
  %21 = icmp eq i32 %6, 7
  %22 = and i1 %21, %20
  %23 = icmp eq i32 %14, %18
  %24 = and i1 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %8
  %26 = icmp eq i32 %19, 8
  %27 = select i1 %23, i32 8, i32 7
  %28 = icmp eq i32 %6, %27
  %29 = and i1 %26, %28
  br label %30

30:                                               ; preds = %25, %8, %3
  %31 = phi i1 [ true, %3 ], [ true, %8 ], [ %29, %25 ]
  ret i1 %31
}

declare noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !412
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.8", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !414
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator10getGrammarEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 !prof !429 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !428
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #13 comdat align 2 !prof !430 {
  ret i1 true
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !348
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !301
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !304
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  store ptr %3, ptr %9, align 8, !tbaa !357
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %17, !prof !239

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %13 = load ptr, ptr %9, align 8, !tbaa !357
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 395, i32 noundef 15, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #18
  resume { ptr, i32 } %16

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %1, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !305
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, ptr %7, align 4, !tbaa !301
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  store i32 -1, ptr %22, align 8, !tbaa !432
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !433
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !348, !range !75, !noundef !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %1, %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !305
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !301
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !433
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !289

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !434
  store ptr %7, ptr %2, align 8, !tbaa !433
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !433
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !289

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !432
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !432
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !304
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !436
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !239

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !437
  %23 = load i32, ptr %12, align 8, !tbaa !432
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !438

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !432
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !115, !llvm.loop !439

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !433
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !366
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !440
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !441
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !442 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !423
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !443

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !444
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !445
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !446 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %2 unwind label %25, !prof !447

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !448
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !358
  %6 = load ptr, ptr %3, align 8, !tbaa !64
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %25, !prof !449

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !448
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !437
  %13 = load ptr, ptr %10, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %25, !prof !449

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !450
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !451

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #18, !prof !452
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !453 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !436
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !454

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %35, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !305
  ret void

10:                                               ; preds = %5, %35
  %11 = phi i64 [ 0, %5 ], [ %38, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !437
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !455

16:                                               ; preds = %10, %29
  %17 = phi ptr [ %19, %29 ], [ %14, %10 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !434
  %20 = load i8, ptr %7, align 8, !tbaa !456, !range !75, !noundef !76
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22, !prof !356

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !457
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !356

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !64
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(147) %23) #18, !prof !458
  br label %29

29:                                               ; preds = %22, %25, %16
  %30 = load ptr, ptr %0, align 8, !tbaa !448
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %17), !prof !459
  %34 = icmp eq ptr %19, null
  br i1 %34, label %35, label %16, !prof !308, !llvm.loop !460

35:                                               ; preds = %29, %10
  %36 = load ptr, ptr %6, align 8, !tbaa !437
  %37 = getelementptr inbounds ptr, ptr %36, i64 %11
  store ptr null, ptr %37, align 8, !tbaa !172
  %38 = add nuw nsw i64 %11, 1
  %39 = load i32, ptr %2, align 8, !tbaa !436
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %10, label %8, !prof !461, !llvm.loop !462
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !187

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !187

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = zext i32 %1 to i64
  %21 = zext i32 %14 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %20, %18 ], [ %25, %22 ]
  %24 = load ptr, ptr %19, align 8, !tbaa !110
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !172
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !463

30:                                               ; preds = %22, %16, %13
  %31 = add i32 %4, -1
  store i32 %31, ptr %3, align 4, !tbaa !108
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !248

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17), !prof !464
  %22 = load i32, ptr %3, align 4, !tbaa !108
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !250

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !111
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = load ptr, ptr %28, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !465
  store ptr %21, ptr %29, align 8, !tbaa !110
  store i32 %13, ptr %6, align 8, !tbaa !109
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !110
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !172
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !172
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !prof !252, !llvm.loop !253

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !285
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !281
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !466 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !467
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !468
  %5 = load ptr, ptr %2, align 8, !tbaa !64
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !469
  store ptr null, ptr %3, align 8, !tbaa !468
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !470
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !471

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !64
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18, !prof !472
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !473 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !474
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !475

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !476

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !474
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !468
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !477

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !478
  %23 = load i8, ptr %11, align 8, !tbaa !479, !range !75, !noundef !76
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !480

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !353
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !480

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !64
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %26) #18, !prof !481
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !467
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !482
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !483, !llvm.loop !484

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !468
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !172
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !287
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !485, !llvm.loop !486

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !281
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !284

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !478
  store ptr %7, ptr %2, align 8, !tbaa !281
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !281
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !105

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !285
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !285
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !286
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !287
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !115

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !468
  %23 = load i32, ptr %12, align 8, !tbaa !285
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !487

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !285
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !488, !llvm.loop !489

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !281
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !64
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !490
  store ptr %7, ptr %2, align 8, !tbaa !327
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !327
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !330
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !330
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !331
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !267
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !270
  %23 = load i32, ptr %12, align 8, !tbaa !330
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !330
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !llvm.loop !491

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !327
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !330
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !327
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !280 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !268
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  %5 = load ptr, ptr %2, align 8, !tbaa !64
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !492
  store ptr null, ptr %3, align 8, !tbaa !270
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !265
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !239

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !64
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18, !prof !493
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !494
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !239

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !267
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !250

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !494
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !270
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !495

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !490
  %23 = load i8, ptr %11, align 8, !tbaa !496, !range !75, !noundef !76
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !497

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !279
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !497

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !64
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #18, !prof !498
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !268
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !499
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !500, !llvm.loop !501

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !270
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !172
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !267
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !502, !llvm.loop !503

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !504
  store ptr %7, ptr %2, align 8, !tbaa !334
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !334
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !337
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !337
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !338
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !339
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !505
  %23 = load i32, ptr %12, align 8, !tbaa !337
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !172
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !337
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !llvm.loop !506

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !334
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !337
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !334
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !280 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !507
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !505
  %5 = load ptr, ptr %2, align 8, !tbaa !64
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !492
  store ptr null, ptr %3, align 8, !tbaa !505
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !508
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !239

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !64
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18, !prof !493
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !509
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !289

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !339
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !509
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !505
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !504
  %23 = load i8, ptr %11, align 8, !tbaa !510, !range !75, !noundef !76
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !377
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !64
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #18
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !507
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !511

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !505
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !172
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !339
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !512

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !62 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !513
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !515
  %9 = load ptr, ptr %0, align 8, !tbaa !516
  %10 = load ptr, ptr %6, align 8, !tbaa !64
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !168
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !517
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !518
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !513
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !519
  %28 = load ptr, ptr %25, align 8, !tbaa !64
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !172
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !520

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !381
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !382
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !384
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !381
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !384
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !383
  %31 = load ptr, ptr %28, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !383
  store i32 %13, ptr %6, align 8, !tbaa !382
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !383
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !172
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !172
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !521

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 282}
!36 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 339}
!37 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!41 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD0Ev, ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, i64 3}
!42 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!43 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, i64 832911}
!44 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj, i64 832911}
!45 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!46 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 9748}
!47 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 9748}
!48 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, i64 2}
!50 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, i64 79}
!52 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, i64 2}
!54 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 2}
!55 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 56}
!56 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv, i64 1}
!57 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!58 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 9}
!59 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!60 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"function_entry_count", i64 339}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!68, !73, i64 52}
!68 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !69, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !72, i64 48, !73, i64 52, !73, i64 53, !74, i64 56, !74, i64 60}
!69 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !66, i64 0}
!72 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !71, i64 0}
!73 = !{!"bool", !71, i64 0}
!74 = !{!"int", !71, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!"branch_weights", i32 9, i32 330}
!78 = !{!68, !70, i64 32}
!79 = !{!"branch_weights", i32 172, i32 158}
!80 = !{!"VP", i32 0, i64 158, i64 -8455366633691647299, i64 158}
!81 = !{!68, !73, i64 53}
!82 = !{!"branch_weights", i32 0, i32 339}
!83 = !{!68, !70, i64 40}
!84 = !{!"branch_weights", i32 215, i32 124}
!85 = !{!"VP", i32 0, i64 124, i64 -8455366633691647299, i64 124}
!86 = !{!68, !70, i64 16}
!87 = !{!"branch_weights", i32 167, i32 172}
!88 = !{!"VP", i32 0, i64 172, i64 7173745605608799217, i64 172}
!89 = !{!"function_entry_count", i64 3}
!90 = !{!91, !70, i64 40}
!91 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !92, i64 0, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !73, i64 72, !70, i64 80, !70, i64 88, !93, i64 96, !73, i64 136, !73, i64 137, !94, i64 144, !70, i64 168, !70, i64 176, !73, i64 184, !73, i64 185}
!92 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32}
!93 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !74, i64 0, !74, i64 4, !74, i64 8, !73, i64 12, !70, i64 16, !70, i64 24, !70, i64 32}
!94 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !73, i64 8, !70, i64 16}
!95 = !{!93, !74, i64 4}
!96 = !{!93, !74, i64 8}
!97 = !{!93, !73, i64 12}
!98 = !{!93, !70, i64 16}
!99 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!100 = !{!93, !70, i64 32}
!101 = !{!102, !102, i64 0}
!102 = !{!"short", !71, i64 0}
!103 = !{!91, !73, i64 136}
!104 = !{!91, !73, i64 137}
!105 = !{!"branch_weights", i32 3, i32 0}
!106 = !{!107, !73, i64 0}
!107 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !73, i64 0, !74, i64 4, !74, i64 8, !70, i64 16, !70, i64 24}
!108 = !{!107, !74, i64 4}
!109 = !{!107, !74, i64 8}
!110 = !{!107, !70, i64 16}
!111 = !{!107, !70, i64 24}
!112 = !{!"VP", i32 1, i64 3, i64 64, i64 3}
!113 = !{!91, !70, i64 168}
!114 = !{!91, !70, i64 64}
!115 = !{!"branch_weights", i32 0, i32 3}
!116 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!117 = !{!91, !70, i64 88}
!118 = !{!"function_entry_count", i64 832911}
!119 = !{!91, !73, i64 184}
!120 = !{!91, !73, i64 185}
!121 = !{!"branch_weights", i32 0, i32 832911}
!122 = !{!"branch_weights", i32 336748, i32 496163}
!123 = !{!124, !70, i64 80}
!124 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !125, i64 0, !127, i64 36, !128, i64 40, !129, i64 44, !130, i64 48, !74, i64 52, !74, i64 56, !74, i64 60, !74, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !70, i64 128, !70, i64 136, !73, i64 144, !73, i64 145, !73, i64 146}
!125 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !69, i64 0, !70, i64 8, !70, i64 16, !126, i64 24, !74, i64 28, !73, i64 32}
!126 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !71, i64 0}
!127 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !71, i64 0}
!128 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !71, i64 0}
!129 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !71, i64 0}
!130 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !71, i64 0}
!131 = !{!"branch_weights", i32 336748, i32 0}
!132 = !{!71, !71, i64 0}
!133 = !{!"branch_weights", i32 336748, i32 152945, i32 185171, i32 158047, i32 0}
!134 = !{!"branch_weights", i32 152945, i32 0}
!135 = !{!91, !73, i64 72}
!136 = !{!"branch_weights", i32 343218, i32 0}
!137 = !{!93, !74, i64 0}
!138 = distinct !{!138, !139, !140}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = !{!125, !70, i64 16}
!142 = !{!143, !70, i64 136}
!143 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !69, i64 0, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !73, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !74, i64 36, !74, i64 40, !74, i64 44, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !70, i64 128, !70, i64 136, !70, i64 144, !70, i64 152, !70, i64 160, !70, i64 168}
!144 = !{!92, !70, i64 32}
!145 = !{!146, !74, i64 52}
!146 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !147, i64 0, !148, i64 8, !73, i64 16, !73, i64 17, !73, i64 18, !73, i64 19, !73, i64 20, !73, i64 21, !73, i64 22, !73, i64 23, !73, i64 24, !73, i64 25, !73, i64 26, !73, i64 27, !73, i64 28, !73, i64 29, !73, i64 30, !73, i64 31, !73, i64 32, !73, i64 33, !73, i64 34, !73, i64 35, !73, i64 36, !73, i64 37, !73, i64 38, !74, i64 40, !74, i64 44, !74, i64 48, !74, i64 52, !74, i64 56, !74, i64 60, !74, i64 64, !74, i64 68, !70, i64 72, !74, i64 80, !74, i64 84, !74, i64 88, !74, i64 92, !74, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !70, i64 128, !70, i64 136, !70, i64 144, !70, i64 152, !70, i64 160, !70, i64 168, !73, i64 176, !149, i64 184, !70, i64 264, !152, i64 272, !70, i64 280, !70, i64 288, !70, i64 296, !70, i64 304, !70, i64 312, !70, i64 320, !70, i64 328, !70, i64 336, !70, i64 344, !151, i64 352, !70, i64 360, !153, i64 368, !93, i64 392, !93, i64 432, !93, i64 472, !93, i64 512, !93, i64 552, !93, i64 592, !93, i64 632, !154, i64 672}
!147 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!148 = !{!"long", !71, i64 0}
!149 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !150, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !74, i64 40, !70, i64 48, !73, i64 56, !151, i64 60, !73, i64 64, !70, i64 72}
!150 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!151 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !71, i64 0}
!152 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !71, i64 0}
!153 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !74, i64 0, !70, i64 8, !70, i64 16}
!154 = !{!"_ZTSN11xercesc_2_79ElemStackE", !74, i64 0, !74, i64 4, !155, i64 8, !70, i64 48, !74, i64 56, !74, i64 60, !74, i64 64, !74, i64 68, !74, i64 72, !74, i64 76, !74, i64 80, !70, i64 88, !70, i64 96}
!155 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !69, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !74, i64 32, !74, i64 36}
!156 = !{!"VP", i32 0, i64 343218, i64 -556786327029407447, i64 256331, i64 4416649406942243459, i64 86886, i64 -3856311936169525415, i64 1}
!157 = !{!91, !70, i64 56}
!158 = !{!159, !70, i64 8}
!159 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !73, i64 0, !73, i64 1, !73, i64 2, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72}
!160 = !{!"branch_weights", i32 0, i32 336748, i32 0}
!161 = !{!"branch_weights", i32 0, i32 336748}
!162 = !{!124, !70, i64 72}
!163 = !{!91, !70, i64 80}
!164 = !{!165, !166, i64 28}
!165 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !69, i64 0, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !102, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !166, i64 28, !167, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96}
!166 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !71, i64 0}
!167 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !71, i64 0}
!168 = !{!74, !74, i64 0}
!169 = !{!146, !70, i64 120}
!170 = distinct !{!170, !139, !140}
!171 = !{!124, !70, i64 136}
!172 = !{!70, !70, i64 0}
!173 = !{!143, !70, i64 80}
!174 = !{!124, !74, i64 64}
!175 = !{!"branch_weights", i32 1362, i32 334024}
!176 = !{!"branch_weights", i32 1362, i32 0}
!177 = !{!"branch_weights", i32 0, i32 1362}
!178 = !{!146, !73, i64 176}
!179 = !{!146, !70, i64 168}
!180 = !{!"VP", i32 0, i64 336748, i64 -6094344871278978777, i64 221885, i64 2597660909157390599, i64 85234, i64 -7949165154994891921, i64 29629}
!181 = !{!182, !70, i64 0}
!182 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !70, i64 0, !70, i64 8}
!183 = !{!182, !70, i64 8}
!184 = !{!185, !70, i64 32}
!185 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !186, i64 8, !70, i64 16, !74, i64 24, !70, i64 32, !70, i64 40}
!186 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !71, i64 0}
!187 = !{!"branch_weights", i32 832911, i32 0}
!188 = !{!"function_entry_count", i64 789922}
!189 = !{!"branch_weights", i32 0, i32 789922}
!190 = !{!"branch_weights", i32 284, i32 789638}
!191 = !{!"branch_weights", i32 789638, i32 41628303}
!192 = distinct !{!192, !139, !140}
!193 = !{!"branch_weights", i32 789636, i32 2}
!194 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!195 = !{!"function_entry_count", i64 4843157}
!196 = !{!"branch_weights", i32 0, i32 4843157}
!197 = !{!"branch_weights", i32 4843157, i32 0}
!198 = !{!"function_entry_count", i64 243874}
!199 = !{!"branch_weights", i32 191815, i32 52059}
!200 = !{!"branch_weights", i32 0, i32 52059}
!201 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!202 = !{!"function_entry_count", i64 9748}
!203 = !{!204, !70, i64 72}
!204 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !205, i64 0, !74, i64 56, !129, i64 60, !130, i64 64, !128, i64 68, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112}
!205 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !69, i64 0, !206, i64 8, !207, i64 12, !208, i64 16, !73, i64 20, !73, i64 21, !74, i64 24, !70, i64 32, !70, i64 40, !70, i64 48}
!206 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !71, i64 0}
!207 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !71, i64 0}
!208 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !71, i64 0}
!209 = !{!210, !74, i64 20}
!210 = !{!"_ZTSN11xercesc_2_75QNameE", !69, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48}
!211 = !{!210, !70, i64 32}
!212 = !{!210, !70, i64 24}
!213 = !{!205, !70, i64 32}
!214 = !{!205, !207, i64 12}
!215 = !{!216, !70, i64 24}
!216 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !73, i64 0, !207, i64 4, !74, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !73, i64 48}
!217 = !{!216, !207, i64 4}
!218 = !{!216, !73, i64 48}
!219 = !{!216, !70, i64 40}
!220 = !{!"function_entry_count", i64 200910}
!221 = !{!"branch_weights", i32 1, i32 200909}
!222 = !{!"VP", i32 0, i64 1, i64 7781864732985078317, i64 1}
!223 = !{!"VP", i32 0, i64 1, i64 4041352807516153901, i64 1}
!224 = !{!"VP", i32 0, i64 200910, i64 -6610365712140915522, i64 200910}
!225 = !{!205, !206, i64 8}
!226 = !{!"branch_weights", i32 200910, i32 0}
!227 = !{!"branch_weights", i32 0, i32 200910}
!228 = !{!91, !70, i64 176}
!229 = !{!204, !70, i64 80}
!230 = !{!"VP", i32 0, i64 200910, i64 -8783995586787027101, i64 183570, i64 -6094344871278978777, i64 10875, i64 2597660909157390599, i64 6465}
!231 = !{!"branch_weights", i32 200910, i32 0, i32 0, i32 0, i32 0}
!232 = !{!"function_entry_count", i64 108}
!233 = !{!234, !70, i64 40}
!234 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !70, i64 40}
!235 = !{!234, !74, i64 24}
!236 = !{!234, !70, i64 0}
!237 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!238 = !{!234, !70, i64 16}
!239 = !{!"branch_weights", i32 0, i32 1}
!240 = !{!241, !70, i64 16}
!241 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!242 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!243 = !{!"branch_weights", i32 108, i32 10}
!244 = !{!"branch_weights", i32 0, i32 118}
!245 = distinct !{!245, !139, !140}
!246 = !{!"branch_weights", i32 0, i32 108}
!247 = !{!241, !70, i64 0}
!248 = !{!"branch_weights", i32 2, i32 832909}
!249 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!250 = !{!"branch_weights", i32 1, i32 127}
!251 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!252 = !{!"branch_weights", i32 127, i32 1025}
!253 = distinct !{!253, !139, !140}
!254 = !{!124, !74, i64 60}
!255 = !{!256, !70, i64 56}
!256 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !257, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !73, i64 128, !258, i64 136}
!257 = !{!"_ZTSN11xercesc_2_77GrammarE", !69, i64 0}
!258 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !69, i64 0, !70, i64 8, !70, i64 16}
!259 = !{!143, !73, i64 9}
!260 = !{!143, !70, i64 88}
!261 = distinct !{!261, !139, !140}
!262 = !{!143, !74, i64 16}
!263 = !{!"branch_weights", i32 496163, i32 0}
!264 = !{!"function_entry_count", i64 145}
!265 = !{!266, !70, i64 40}
!266 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !70, i64 40}
!267 = !{!266, !74, i64 24}
!268 = !{!266, !70, i64 0}
!269 = !{!"VP", i32 0, i64 145, i64 3024540859536234746, i64 145}
!270 = !{!266, !70, i64 16}
!271 = !{!"branch_weights", i32 1, i32 157}
!272 = !{!273, !70, i64 16}
!273 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!274 = !{!"VP", i32 0, i64 122, i64 -1309333655503989351, i64 122}
!275 = !{!"branch_weights", i32 66, i32 56}
!276 = !{!"branch_weights", i32 157, i32 87}
!277 = distinct !{!277, !139, !140}
!278 = !{!"branch_weights", i32 79, i32 66}
!279 = !{!273, !70, i64 0}
!280 = !{!"function_entry_count", i64 1}
!281 = !{!282, !70, i64 16}
!282 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE", !283, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !70, i64 32, !70, i64 40}
!283 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE"}
!284 = !{!"branch_weights", i32 1, i32 2}
!285 = !{!282, !74, i64 24}
!286 = !{!282, !70, i64 32}
!287 = !{!288, !74, i64 24}
!288 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_7GrammarEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !70, i64 40}
!289 = !{!"branch_weights", i32 1, i32 0}
!290 = !{!"branch_weights", i32 2, i32 0}
!291 = !{!"VP", i32 0, i64 2, i64 -908290396823866376, i64 1, i64 -6289420323266357339, i64 1}
!292 = !{!"branch_weights", i32 1, i32 1}
!293 = distinct !{!293, !139, !140}
!294 = !{!"VP", i32 0, i64 1, i64 -5175516167526594023, i64 1}
!295 = !{!"VP", i32 0, i64 1, i64 -1478426314342612521, i64 1}
!296 = !{!256, !70, i64 16}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv: argument 0"}
!299 = distinct !{!299, !"_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv"}
!300 = !{!256, !70, i64 104}
!301 = !{!302, !74, i64 12}
!302 = !{!"_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE", !303, i64 0, !73, i64 8, !74, i64 12, !70, i64 16, !70, i64 24, !74, i64 32, !70, i64 40}
!303 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE"}
!304 = !{!302, !70, i64 16}
!305 = !{!306, !74, i64 52}
!306 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !70, i64 32, !70, i64 40, !74, i64 48, !74, i64 52}
!307 = !{!"branch_weights", i32 1, i32 79}
!308 = !{!"branch_weights", i32 79, i32 0}
!309 = !{!125, !126, i64 24}
!310 = !{!"branch_weights", i32 79, i32 0, i32 0, i32 0}
!311 = !{!"VP", i32 0, i64 79, i64 -9087825873615977027, i64 79}
!312 = !{!"branch_weights", i32 14, i32 65}
!313 = !{!"VP", i32 0, i64 14, i64 9006080085809343498, i64 14}
!314 = !{!"VP", i32 0, i64 30, i64 -7904601540171109589, i64 30}
!315 = !{!"branch_weights", i32 16, i32 14}
!316 = !{!"VP", i32 0, i64 16, i64 8888819793864936031, i64 16}
!317 = !{!"branch_weights", i32 16, i32 0, i32 0}
!318 = !{!205, !70, i64 40}
!319 = distinct !{!319, !139, !140}
!320 = distinct !{!320, !139, !140}
!321 = !{!"branch_weights", i32 0, i32 16}
!322 = !{!"branch_weights", i32 16, i32 0}
!323 = distinct !{!323, !139, !140}
!324 = !{!"branch_weights", i32 0, i32 80}
!325 = distinct !{!325, !139, !140}
!326 = !{!146, !73, i64 27}
!327 = !{!328, !70, i64 16}
!328 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE", !329, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !70, i64 32, !70, i64 40}
!329 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE"}
!330 = !{!328, !74, i64 24}
!331 = !{!328, !70, i64 32}
!332 = distinct !{!332, !139, !140}
!333 = !{!256, !70, i64 64}
!334 = !{!335, !70, i64 16}
!335 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE", !336, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !70, i64 32, !70, i64 40}
!336 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE"}
!337 = !{!335, !74, i64 24}
!338 = !{!335, !70, i64 32}
!339 = !{!340, !74, i64 24}
!340 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !70, i64 40}
!341 = !{!342, !70, i64 40}
!342 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !69, i64 0, !73, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48}
!343 = !{!342, !70, i64 24}
!344 = !{!342, !74, i64 12}
!345 = !{!342, !70, i64 48}
!346 = !{!342, !73, i64 8}
!347 = distinct !{!347, !139, !140}
!348 = !{!302, !73, i64 8}
!349 = !{!"function_entry_count", i64 2}
!350 = !{!"branch_weights", i32 0, i32 2}
!351 = !{!"VP", i32 0, i64 2, i64 -5770325663783742255, i64 2}
!352 = !{!282, !70, i64 40}
!353 = !{!354, !70, i64 0}
!354 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!355 = !{!"function_entry_count", i64 79}
!356 = !{!"branch_weights", i32 0, i32 79}
!357 = !{!302, !70, i64 40}
!358 = !{!306, !70, i64 40}
!359 = !{!328, !73, i64 8}
!360 = !{!328, !70, i64 40}
!361 = !{!143, !70, i64 96}
!362 = !{!143, !74, i64 28}
!363 = !{!143, !70, i64 160}
!364 = !{!143, !70, i64 120}
!365 = !{!342, !70, i64 32}
!366 = !{!367, !74, i64 12}
!367 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEEE", !73, i64 8, !74, i64 12, !74, i64 16, !70, i64 24, !70, i64 32}
!368 = !{!256, !70, i64 88}
!369 = !{!370, !70, i64 0}
!370 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !70, i64 0, !70, i64 8, !70, i64 16, !74, i64 24}
!371 = !{!372, !74, i64 4}
!372 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !73, i64 0, !74, i64 4, !74, i64 8, !70, i64 16, !70, i64 24}
!373 = distinct !{!373, !139, !140}
!374 = distinct !{!374, !139, !140}
!375 = !{!335, !73, i64 8}
!376 = !{!335, !70, i64 40}
!377 = !{!378, !70, i64 0}
!378 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!379 = !{!380, !73, i64 0}
!380 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEE", !73, i64 0, !74, i64 4, !74, i64 8, !70, i64 16, !70, i64 24}
!381 = !{!380, !74, i64 4}
!382 = !{!380, !74, i64 8}
!383 = !{!380, !70, i64 16}
!384 = !{!380, !70, i64 24}
!385 = !{!68, !72, i64 48}
!386 = !{!282, !73, i64 8}
!387 = !{!"function_entry_count", i64 311300}
!388 = !{!165, !102, i64 12}
!389 = !{!"branch_weights", i32 0, i32 311300}
!390 = !{!92, !70, i64 24}
!391 = !{!149, !70, i64 16}
!392 = !{!"branch_weights", i32 311300, i32 0}
!393 = !{!"branch_weights", i32 0, i32 2786898}
!394 = !{!395, !70, i64 163968}
!395 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !74, i64 0, !71, i64 4, !74, i64 32772, !71, i64 32776, !71, i64 49160, !148, i64 114696, !148, i64 114704, !396, i64 114712, !70, i64 114720, !73, i64 114728, !73, i64 114729, !70, i64 114736, !74, i64 114744, !71, i64 114748, !74, i64 163900, !74, i64 163904, !397, i64 163908, !73, i64 163912, !398, i64 163916, !74, i64 163920, !73, i64 163924, !73, i64 163925, !70, i64 163928, !70, i64 163936, !73, i64 163944, !73, i64 163945, !70, i64 163952, !399, i64 163960, !70, i64 163968, !73, i64 163976, !151, i64 163980, !70, i64 163984}
!396 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !71, i64 0}
!397 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !71, i64 0}
!398 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !71, i64 0}
!399 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !71, i64 0}
!400 = !{!"branch_weights", i32 311299, i32 2475599}
!401 = distinct !{!401, !139, !140}
!402 = !{!"branch_weights", i32 127, i32 39846145}
!403 = !{!372, !70, i64 24}
!404 = !{!372, !70, i64 16}
!405 = !{!68, !74, i64 56}
!406 = !{!68, !74, i64 60}
!407 = !{!68, !70, i64 8}
!408 = distinct !{!408, !139, !140}
!409 = distinct !{!409, !139, !140}
!410 = distinct !{!410, !139, !140}
!411 = distinct !{!411, !139, !140}
!412 = !{!413, !70, i64 0}
!413 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIbEE", !70, i64 0, !70, i64 8}
!414 = !{!413, !70, i64 8}
!415 = !{!73, !73, i64 0}
!416 = distinct !{!416, !139, !140}
!417 = distinct !{!417, !139, !140}
!418 = distinct !{!418, !139, !140}
!419 = distinct !{!419, !139, !140}
!420 = distinct !{!420, !139, !140}
!421 = distinct !{!421, !139, !140}
!422 = !{!124, !70, i64 112}
!423 = !{!424, !74, i64 12}
!424 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !73, i64 8, !74, i64 12, !74, i64 16, !70, i64 24, !70, i64 32}
!425 = distinct !{!425, !139, !140}
!426 = distinct !{!426, !139, !140}
!427 = distinct !{!427, !139, !140}
!428 = !{!91, !70, i64 48}
!429 = !{!"function_entry_count", i64 1329074}
!430 = !{!"function_entry_count", i64 2351520}
!431 = !{!185, !70, i64 40}
!432 = !{!302, !74, i64 32}
!433 = !{!302, !70, i64 24}
!434 = !{!435, !70, i64 8}
!435 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !70, i64 0, !70, i64 8, !70, i64 16, !74, i64 24, !74, i64 28}
!436 = !{!306, !74, i64 24}
!437 = !{!306, !70, i64 16}
!438 = !{!"branch_weights", i32 3, i32 1}
!439 = distinct !{!439, !139, !140}
!440 = !{!367, !70, i64 32}
!441 = !{!367, !70, i64 24}
!442 = !{!"function_entry_count", i64 32}
!443 = !{!"branch_weights", i32 32, i32 0}
!444 = !{!424, !70, i64 32}
!445 = !{!424, !70, i64 24}
!446 = !{!"function_entry_count", i64 5}
!447 = !{!"branch_weights", i32 5, i32 0}
!448 = !{!306, !70, i64 0}
!449 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!450 = !{!306, !70, i64 32}
!451 = !{!"branch_weights", i32 0, i32 5}
!452 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!453 = !{!"function_entry_count", i64 7}
!454 = !{!"branch_weights", i32 1, i32 223}
!455 = !{!"branch_weights", i32 444, i32 79}
!456 = !{!306, !73, i64 8}
!457 = !{!435, !70, i64 0}
!458 = !{!"VP", i32 0, i64 79, i64 -3182483803875353668, i64 79}
!459 = !{!"VP", i32 0, i64 79, i64 -7405368087501025645, i64 79}
!460 = distinct !{!460, !139, !140}
!461 = !{!"branch_weights", i32 16513, i32 223}
!462 = distinct !{!462, !139, !140}
!463 = distinct !{!463, !139, !140}
!464 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!465 = !{!"VP", i32 0, i64 0, i64 -7405368087501025645, i64 0}
!466 = !{!"function_entry_count", i64 9}
!467 = !{!288, !70, i64 0}
!468 = !{!288, !70, i64 16}
!469 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!470 = !{!288, !70, i64 40}
!471 = !{!"branch_weights", i32 0, i32 9}
!472 = !{!"VP", i32 0, i64 9, i64 -5147776714887549805, i64 9}
!473 = !{!"function_entry_count", i64 12}
!474 = !{!288, !74, i64 32}
!475 = !{!"branch_weights", i32 9, i32 3}
!476 = !{!"branch_weights", i32 1, i32 191}
!477 = !{!"branch_weights", i32 83, i32 4}
!478 = !{!354, !70, i64 8}
!479 = !{!288, !73, i64 8}
!480 = !{!"branch_weights", i32 0, i32 4}
!481 = !{!"VP", i32 0, i64 4, i64 -8495914792567758976, i64 3, i64 -622881534451488576, i64 1}
!482 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!483 = !{!"branch_weights", i32 4, i32 0}
!484 = distinct !{!484, !139, !140}
!485 = !{!"branch_weights", i32 5377, i32 191}
!486 = distinct !{!486, !139, !140}
!487 = !{!"branch_weights", i32 27, i32 2}
!488 = !{!"branch_weights", i32 1, i32 26}
!489 = distinct !{!489, !139, !140}
!490 = !{!273, !70, i64 8}
!491 = distinct !{!491, !139, !140}
!492 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!493 = !{!"VP", i32 0, i64 1, i64 -5147776714887549805, i64 1}
!494 = !{!266, !74, i64 32}
!495 = !{!"branch_weights", i32 28, i32 30}
!496 = !{!266, !73, i64 8}
!497 = !{!"branch_weights", i32 0, i32 30}
!498 = !{!"VP", i32 0, i64 30, i64 -6901729892270534874, i64 30}
!499 = !{!"VP", i32 0, i64 30, i64 -7405368087501025645, i64 30}
!500 = !{!"branch_weights", i32 30, i32 0}
!501 = distinct !{!501, !139, !140}
!502 = !{!"branch_weights", i32 7297, i32 127}
!503 = distinct !{!503, !139, !140}
!504 = !{!378, !70, i64 8}
!505 = !{!340, !70, i64 16}
!506 = distinct !{!506, !139, !140}
!507 = !{!340, !70, i64 0}
!508 = !{!340, !70, i64 40}
!509 = !{!340, !74, i64 32}
!510 = !{!340, !73, i64 8}
!511 = distinct !{!511, !139, !140}
!512 = distinct !{!512, !139, !140}
!513 = !{!514, !70, i64 32}
!514 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !70, i64 0, !73, i64 8, !70, i64 16, !74, i64 24, !74, i64 28, !70, i64 32}
!515 = !{!514, !74, i64 24}
!516 = !{!514, !70, i64 0}
!517 = !{!514, !70, i64 16}
!518 = !{!370, !74, i64 24}
!519 = !{!370, !70, i64 16}
!520 = distinct !{!520, !139, !140}
!521 = distinct !{!521, !139, !140}
