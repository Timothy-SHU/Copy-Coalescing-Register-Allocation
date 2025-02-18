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
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
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

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv = comdat any

$_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE = comdat any

$_ZNK11xercesc_2_712DTDValidator10getGrammarEv = comdat any

$_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE = comdat any

$_ZNK11xercesc_2_712DTDValidator10handlesDTDEv = comdat any

$_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

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

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = comdat any

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
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [59 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE
@_ZN11xercesc_2_712DTDValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DTDValidatorD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #15
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DTDValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !50
  ret void
}

declare void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DTDValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %9, i64 0, i32 62
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 117, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %48

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !67
  switch i32 %17, label %20 [
    i32 0, label %18
    i32 1, label %45
  ]

18:                                               ; preds = %15
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %45, label %46

20:                                               ; preds = %15
  %21 = and i32 %17, -2
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 8, !tbaa !39
  %25 = getelementptr inbounds ptr, ptr %24, i64 13
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(33) %1)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %29, i64 0, i32 28
  %31 = load i32, ptr %30, align 4, !tbaa !72
  %32 = load ptr, ptr %27, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %2, i32 noundef %3, i32 noundef %31)
  br label %46

36:                                               ; preds = %20
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %39, i64 0, i32 62
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 21, ptr noundef %41)
          to label %42 unwind label %43

42:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %15, %18
  br label %46

46:                                               ; preds = %18, %45, %23
  %47 = phi i32 [ -1, %45 ], [ %35, %23 ], [ 0, %18 ]
  ret i32 %47

48:                                               ; preds = %43, %13
  %49 = phi ptr [ %37, %43 ], [ %7, %13 ]
  %50 = phi { ptr, i32 } [ %44, %43 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %49) #14
  resume { ptr, i32 } %50
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_712DTDValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #3 align 2 !prof !38 {
  %4 = load ptr, ptr %2, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !78
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef %7, i32 noundef 0)
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %9)
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 2
  store i32 %11, ptr %14, align 4, !tbaa !81
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 9
  store i8 0, ptr %15, align 8, !tbaa !82
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !83
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator5resetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator18requiresNamespacesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !38 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i16], align 16
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !78
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = load ptr, ptr %1, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp ne i32 %13, 1
  %23 = or i1 %22, %3
  br i1 %23, label %52, label %24

24:                                               ; preds = %5
  %25 = icmp eq ptr %2, null
  %26 = icmp eq ptr %15, null
  %27 = or i1 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i16, ptr %2, align 2, !tbaa !86
  %30 = load i16, ptr %15, align 2, !tbaa !86
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %40, label %51

32:                                               ; preds = %24
  br i1 %25, label %36, label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %2, align 2, !tbaa !86
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33, %32
  br i1 %26, label %52, label %37

37:                                               ; preds = %36
  %38 = load i16, ptr %15, align 2, !tbaa !86
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %52, label %51

40:                                               ; preds = %28, %45
  %41 = phi i16 [ %48, %45 ], [ %29, %28 ]
  %42 = phi ptr [ %47, %45 ], [ %15, %28 ]
  %43 = phi ptr [ %46, %45 ], [ %2, %28 ]
  %44 = icmp eq i16 %41, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  %47 = getelementptr inbounds i16, ptr %42, i64 1
  %48 = load i16, ptr %46, align 2, !tbaa !86
  %49 = load i16, ptr %47, align 2, !tbaa !86
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !88

51:                                               ; preds = %45, %28, %37, %33
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 26, ptr noundef %19, ptr noundef %2, ptr noundef %15, ptr noundef null)
  br label %52

52:                                               ; preds = %40, %37, %36, %5, %51
  %53 = icmp eq i32 %11, 0
  br i1 %53, label %303, label %54

54:                                               ; preds = %52
  %55 = load i16, ptr %2, align 2, !tbaa !86
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 9, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %303

58:                                               ; preds = %54
  %59 = icmp ult i32 %11, 10
  %60 = trunc i32 %11 to i10
  %61 = lshr i10 -88, %60
  %62 = and i10 %61, 1
  %63 = icmp ne i10 %62, 0
  %64 = select i1 %59, i1 %63, i1 false
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %65 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %9, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %66

66:                                               ; preds = %66, %58
  %67 = phi ptr [ %2, %58 ], [ %68, %66 ]
  %68 = getelementptr inbounds i16, ptr %67, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !86
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %66, !llvm.loop !91

71:                                               ; preds = %66
  %72 = icmp eq i32 %11, 1
  %73 = ptrtoint ptr %68 to i64
  %74 = ptrtoint ptr %2 to i64
  %75 = sub i64 %73, %74
  %76 = lshr exact i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = icmp ult i32 %77, 100
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %8, ptr noundef nonnull %2)
          to label %117 unwind label %80

80:                                               ; preds = %111, %92, %79
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %304

82:                                               ; preds = %71
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !53
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %84, i64 0, i32 62
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  br label %87

87:                                               ; preds = %87, %82
  %88 = phi ptr [ %2, %82 ], [ %89, %87 ]
  %89 = getelementptr inbounds i16, ptr %88, i64 1
  %90 = load i16, ptr %89, align 2, !tbaa !86
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %87, !llvm.loop !91

92:                                               ; preds = %87
  %93 = ptrtoint ptr %89 to i64
  %94 = ptrtoint ptr %2 to i64
  %95 = sub i64 %93, %94
  %96 = add i64 %95, 2
  %97 = and i64 %96, 8589934590
  %98 = load ptr, ptr %86, align 8, !tbaa !39
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %97)
          to label %102 unwind label %80

102:                                              ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %101, ptr nonnull align 2 %2, i64 %97, i1 false)
  %103 = load ptr, ptr %83, align 8, !tbaa !53
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %103, i64 0, i32 62
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = load ptr, ptr %9, align 8, !tbaa !92
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %65, align 8, !tbaa !94
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %109, align 8, !tbaa !39
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull %106)
          to label %116 unwind label %80

115:                                              ; preds = %108
  tail call void @_ZdaPv(ptr noundef %106) #17
  br label %116

116:                                              ; preds = %111, %102, %115
  store ptr %101, ptr %9, align 8, !tbaa !92
  store ptr %105, ptr %65, align 8, !tbaa !94
  br label %117

117:                                              ; preds = %79, %116
  %118 = phi ptr [ %101, %116 ], [ %8, %79 ]
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %120, i64 0, i32 4
  %122 = load i8, ptr %121, align 2, !tbaa !95, !range !96, !noundef !97
  %123 = icmp ne i8 %122, 0
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %126 = icmp ult i32 %11, 4
  br label %127

127:                                              ; preds = %297, %117
  %128 = phi ptr [ %118, %117 ], [ %301, %297 ]
  %129 = phi i8 [ 0, %117 ], [ %180, %297 ]
  switch i32 %11, label %151 [
    i32 8, label %130
    i32 5, label %130
    i32 4, label %130
    i32 3, label %130
    i32 2, label %130
    i32 1, label %130
    i32 0, label %130
  ]

130:                                              ; preds = %127, %127, %127, %127, %127, %127, %127
  %131 = load ptr, ptr %124, align 8, !tbaa !98
  %132 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !99
  %134 = load i16, ptr %128, align 2, !tbaa !86
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %133, i64 0, i32 28
  %136 = load ptr, ptr %135, align 8, !tbaa !100
  %137 = zext i16 %134 to i64
  %138 = getelementptr inbounds i8, ptr %136, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !106
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %128, ptr noundef %19, ptr noundef null, ptr noundef null)
          to label %149 unwind label %145

143:                                              ; preds = %162
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %304

145:                                              ; preds = %296, %293, %142
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %304

147:                                              ; preds = %175, %157
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %304

149:                                              ; preds = %142, %130
  %150 = getelementptr inbounds i16, ptr %128, i64 1
  br label %151

151:                                              ; preds = %127, %149
  %152 = phi ptr [ %128, %127 ], [ %150, %149 ]
  br label %153

153:                                              ; preds = %151, %176
  %154 = phi ptr [ %177, %176 ], [ %152, %151 ]
  %155 = load i16, ptr %154, align 2, !tbaa !86
  switch i16 %155, label %158 [
    i16 0, label %178
    i16 32, label %156
  ]

156:                                              ; preds = %153
  br i1 %64, label %178, label %157

157:                                              ; preds = %156
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 25, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %147

158:                                              ; preds = %153
  %159 = icmp eq i16 %155, 58
  %160 = and i1 %123, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  switch i32 %11, label %163 [
    i32 8, label %162
    i32 5, label %162
    i32 4, label %162
    i32 3, label %162
    i32 2, label %162
    i32 1, label %162
    i32 0, label %162
  ]

162:                                              ; preds = %161, %161, %161, %161, %161, %161, %161
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 20)
          to label %163 unwind label %143

163:                                              ; preds = %161, %162, %158
  %164 = load ptr, ptr %125, align 8, !tbaa !98
  %165 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !99
  %167 = load i16, ptr %154, align 2, !tbaa !86
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %166, i64 0, i32 28
  %169 = load ptr, ptr %168, align 8, !tbaa !100
  %170 = zext i16 %167 to i64
  %171 = getelementptr inbounds i8, ptr %169, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !106
  %173 = and i8 %172, 4
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 24, ptr noundef nonnull %154, ptr noundef %19, ptr noundef null, ptr noundef null)
          to label %302 unwind label %147

176:                                              ; preds = %163
  %177 = getelementptr inbounds i16, ptr %154, i64 1
  br label %153, !llvm.loop !107

178:                                              ; preds = %153, %156
  %179 = icmp eq i16 %155, 0
  %180 = select i1 %179, i8 1, i8 %129
  store i16 0, ptr %154, align 2, !tbaa !86
  br i1 %126, label %181, label %256

181:                                              ; preds = %178
  %182 = load ptr, ptr %119, align 8, !tbaa !53
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %182, i64 0, i32 47
  %184 = load ptr, ptr %183, align 8, !tbaa !108
  %185 = load ptr, ptr %184, align 8, !tbaa !39
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(16) %184)
          to label %189 unwind label %199

189:                                              ; preds = %181
  %190 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %188, ptr noundef %128)
          to label %191 unwind label %199

191:                                              ; preds = %189
  %192 = icmp eq ptr %190, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %190, i64 0, i32 1
  %195 = load i8, ptr %194, align 8, !tbaa !109, !range !96, !noundef !97
  %196 = icmp ne i8 %195, 0
  %197 = and i1 %72, %196
  br i1 %197, label %198, label %249

198:                                              ; preds = %193
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 12, ptr noundef %128, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %249 unwind label %199

199:                                              ; preds = %236, %181, %245, %201, %198, %189
  %200 = landingpad { ptr, i32 }
          cleanup
  br label %304

201:                                              ; preds = %191
  %202 = load ptr, ptr %119, align 8, !tbaa !53
  %203 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %202, i64 0, i32 62
  %204 = load ptr, ptr %203, align 8, !tbaa !54
  %205 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %204)
          to label %206 unwind label %199

206:                                              ; preds = %201
  %207 = load ptr, ptr %119, align 8, !tbaa !53
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %207, i64 0, i32 62
  %209 = load ptr, ptr %208, align 8, !tbaa !54
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %205, align 8, !tbaa !39
  %210 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %205, i64 0, i32 1
  store i8 0, ptr %210, align 8, !tbaa !109
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %205, i64 0, i32 2
  store i8 0, ptr %211, align 1, !tbaa !110
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %205, i64 0, i32 3
  store ptr null, ptr %212, align 8, !tbaa !48
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %205, i64 0, i32 4
  store ptr %209, ptr %213, align 8, !tbaa !42
  %214 = icmp eq ptr %128, null
  br i1 %214, label %236, label %215

215:                                              ; preds = %206
  %216 = load i16, ptr %128, align 2, !tbaa !86
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %229, label %218

218:                                              ; preds = %215, %218
  %219 = phi ptr [ %220, %218 ], [ %128, %215 ]
  %220 = getelementptr inbounds i16, ptr %219, i64 1
  %221 = load i16, ptr %220, align 2, !tbaa !86
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %218, !llvm.loop !91

223:                                              ; preds = %218
  %224 = ptrtoint ptr %220 to i64
  %225 = ptrtoint ptr %128 to i64
  %226 = sub i64 %224, %225
  %227 = add i64 %226, 2
  %228 = and i64 %227, 8589934590
  br label %229

229:                                              ; preds = %223, %215
  %230 = phi i64 [ %228, %223 ], [ 2, %215 ]
  %231 = load ptr, ptr %209, align 8, !tbaa !39
  %232 = getelementptr inbounds ptr, ptr %231, i64 2
  %233 = load ptr, ptr %232, align 8
  %234 = invoke noundef ptr %233(ptr noundef nonnull align 8 dereferenceable(8) %209, i64 noundef %230)
          to label %235 unwind label %247

235:                                              ; preds = %229
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %234, ptr nonnull align 2 %128, i64 %230, i1 false)
  br label %236

236:                                              ; preds = %206, %235
  %237 = phi ptr [ %234, %235 ], [ null, %206 ]
  store ptr %237, ptr %212, align 8, !tbaa !48
  %238 = load ptr, ptr %119, align 8, !tbaa !53
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %238, i64 0, i32 47
  %240 = load ptr, ptr %239, align 8, !tbaa !108
  %241 = load ptr, ptr %240, align 8, !tbaa !39
  %242 = getelementptr inbounds ptr, ptr %241, i64 2
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef ptr %243(ptr noundef nonnull align 8 dereferenceable(16) %240)
          to label %245 unwind label %199

245:                                              ; preds = %236
  %246 = load ptr, ptr %212, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %244, ptr noundef %246, ptr noundef nonnull %205)
          to label %249 unwind label %199

247:                                              ; preds = %229
  %248 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %205, ptr noundef %204) #14
  br label %304

249:                                              ; preds = %198, %245, %193
  %250 = phi ptr [ %190, %193 ], [ %205, %245 ], [ %190, %198 ]
  br i1 %72, label %251, label %253

251:                                              ; preds = %249
  %252 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %250, i64 0, i32 1
  store i8 1, ptr %252, align 8, !tbaa !109
  br label %297

253:                                              ; preds = %249
  br i1 %3, label %297, label %254

254:                                              ; preds = %253
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %250, i64 0, i32 2
  store i8 1, ptr %255, align 1, !tbaa !110
  br label %297

256:                                              ; preds = %178
  %257 = and i32 %11, -2
  switch i32 %257, label %297 [
    i32 4, label %258
    i32 8, label %293
  ]

258:                                              ; preds = %256
  %259 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !50
  %261 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %262 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %261, ptr noundef %128, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %263 unwind label %287

263:                                              ; preds = %258
  %264 = icmp eq ptr %262, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %263
  %266 = load ptr, ptr %262, align 8, !tbaa !112
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi ptr [ %266, %265 ], [ null, %263 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %280

270:                                              ; preds = %267
  %271 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %260, i64 0, i32 4
  %272 = load ptr, ptr %271, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %273 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %272, ptr noundef %128, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %274 unwind label %287

274:                                              ; preds = %270
  %275 = icmp eq ptr %273, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %274
  %277 = load ptr, ptr %273, align 8, !tbaa !112
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi ptr [ %277, %276 ], [ null, %274 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %280

280:                                              ; preds = %278, %267
  %281 = phi ptr [ %279, %278 ], [ %268, %267 ]
  %282 = icmp eq ptr %281, null
  br i1 %282, label %289, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %281, i64 0, i32 5
  %285 = load ptr, ptr %284, align 8, !tbaa !117
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %297

287:                                              ; preds = %289, %270, %258
  %288 = landingpad { ptr, i32 }
          cleanup
  br label %304

289:                                              ; preds = %283, %280
  %290 = phi i32 [ 19, %280 ], [ 18, %283 ]
  %291 = phi ptr [ %19, %280 ], [ %128, %283 ]
  %292 = phi ptr [ %128, %280 ], [ %19, %283 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %290, ptr noundef %291, ptr noundef %292, ptr noundef null, ptr noundef null)
          to label %297 unwind label %287

293:                                              ; preds = %256
  %294 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %128, ptr noundef %21)
          to label %295 unwind label %145

295:                                              ; preds = %293
  br i1 %294, label %297, label %296

296:                                              ; preds = %295
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 23, ptr noundef %128, ptr noundef %19, ptr noundef null, ptr noundef null)
          to label %297 unwind label %145

297:                                              ; preds = %289, %256, %283, %251, %254, %253, %295, %296
  %298 = and i8 %180, 1
  %299 = icmp eq i8 %298, 0
  %300 = select i1 %64, i1 %299, i1 false
  %301 = getelementptr inbounds i16, ptr %154, i64 1
  br i1 %300, label %127, label %302, !llvm.loop !119

302:                                              ; preds = %297, %157, %175
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #14
  br label %303

303:                                              ; preds = %52, %302, %57
  ret void

304:                                              ; preds = %143, %147, %145, %287, %247, %199, %80
  %305 = phi { ptr, i32 } [ %81, %80 ], [ %288, %287 ], [ %200, %199 ], [ %248, %247 ], [ %144, %143 ], [ %146, %145 ], [ %148, %147 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #14
  resume { ptr, i32 } %305
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !122
  %7 = load ptr, ptr %0, align 8, !tbaa !123
  %8 = load ptr, ptr %4, align 8, !tbaa !39
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !120
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !125
  %22 = load ptr, ptr %19, align 8, !tbaa !39
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !127

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !128
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !122
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = load i32, ptr %4, align 8, !tbaa !122
  %16 = load ptr, ptr %0, align 8, !tbaa !123
  %17 = load ptr, ptr %14, align 8, !tbaa !39
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !120
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  %31 = load ptr, ptr %28, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !111
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !127

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !130, !range !96, !noundef !97
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !128
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !39
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(32) %47) #14
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !128
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !125
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !123
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !124
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !111
  store ptr %2, ptr %60, align 8, !tbaa !128
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !131
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !125
  store ptr %60, ptr %62, align 8, !tbaa !111
  %66 = load i32, ptr %8, align 8, !tbaa !129
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !129
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !133

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !134

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !135

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator20preContentValidationEbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !139, !noalias !136
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !140, !noalias !136
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39, !alias.scope !136
  %12 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %4, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !141, !alias.scope !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %4, i64 0, i32 2
  store ptr %9, ptr %13, align 8, !tbaa !144, !alias.scope !136
  %14 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %4, i64 0, i32 3
  store ptr %11, ptr %14, align 8, !tbaa !145, !alias.scope !136
  %15 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %9, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !146
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %12, align 8, !tbaa !141
  %19 = load ptr, ptr %7, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 19
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(61) %7, i1 noundef zeroext true)
  %22 = load i32, ptr %12, align 8, !tbaa !141
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %126, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %123
  %27 = phi i32 [ %22, %24 ], [ %124, %123 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !144
  %29 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !146
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %126, label %32

32:                                               ; preds = %26
  %33 = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !148
  switch i32 %35, label %43 [
    i32 3, label %36
    i32 2, label %37
  ]

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %32, %36
  %38 = phi i32 [ 5, %36 ], [ 6, %32 ]
  %39 = load ptr, ptr %25, align 8, !tbaa !53
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !149
  %42 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %41)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %39, i32 noundef %38, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load ptr, ptr %33, align 8, !tbaa !39
  %45 = getelementptr inbounds ptr, ptr %44, i64 6
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef nonnull align 8 dereferenceable(16) ptr %46(ptr noundef nonnull align 8 dereferenceable(80) %33)
  %48 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %33, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !67
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr %47, align 8, !tbaa !39
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef i32 %53(ptr noundef nonnull align 8 dereferenceable(16) %47)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %123, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 2
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 2
  br label %66

59:                                               ; preds = %119
  %60 = add nuw i32 %67, 1
  %61 = load ptr, ptr %47, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %61, i64 13
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef i32 %63(ptr noundef nonnull align 8 dereferenceable(16) %47)
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %123, !llvm.loop !150

66:                                               ; preds = %56, %59
  %67 = phi i32 [ 0, %56 ], [ %60, %59 ]
  %68 = phi i8 [ 0, %56 ], [ %121, %59 ]
  %69 = phi i8 [ 0, %56 ], [ %120, %59 ]
  %70 = load ptr, ptr %47, align 8, !tbaa !39
  %71 = getelementptr inbounds ptr, ptr %70, i64 14
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef nonnull align 8 dereferenceable(56) ptr %72(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef %67)
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !78
  switch i32 %75, label %108 [
    i32 1, label %76
    i32 8, label %82
    i32 9, label %101
  ]

76:                                               ; preds = %66
  %77 = and i8 %68, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %58, align 8, !tbaa !149
  %81 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %80)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 11, ptr noundef %81, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %119

82:                                               ; preds = %66
  %83 = and i8 %69, 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %57, align 8, !tbaa !149
  %87 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %86)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 111, ptr noundef %87, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %119

88:                                               ; preds = %82
  br i1 %50, label %89, label %97

89:                                               ; preds = %88
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !149
  %92 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %91)
  %93 = load ptr, ptr %73, align 8, !tbaa !39
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(56) %73)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 109, ptr noundef %92, ptr noundef %96, ptr noundef null, ptr noundef null)
  br label %119

97:                                               ; preds = %88
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %73, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !85
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %105

101:                                              ; preds = %66
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %73, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101, %97
  %106 = phi i1 [ true, %97 ], [ false, %101 ]
  %107 = phi i8 [ 1, %97 ], [ %69, %101 ]
  call void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %73, i1 noundef zeroext %106)
  br label %108

108:                                              ; preds = %105, %66, %76, %97, %101
  %109 = phi i8 [ 1, %97 ], [ %69, %101 ], [ %69, %76 ], [ %69, %66 ], [ %107, %105 ]
  %110 = phi i8 [ %68, %97 ], [ %68, %101 ], [ 1, %76 ], [ %68, %66 ], [ %68, %105 ]
  br i1 %2, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %73, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !73
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %0, align 8, !tbaa !39
  %117 = getelementptr inbounds ptr, ptr %116, i64 8
  %118 = load ptr, ptr %117, align 8
  call void %118(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %73, ptr noundef nonnull %113, i1 noundef zeroext true, ptr noundef nonnull %33)
  br label %119

119:                                              ; preds = %79, %85, %89, %115, %108, %111
  %120 = phi i8 [ %69, %79 ], [ %69, %85 ], [ 1, %89 ], [ %109, %115 ], [ %109, %111 ], [ %109, %108 ]
  %121 = phi i8 [ %68, %79 ], [ %68, %85 ], [ %68, %89 ], [ %110, %115 ], [ %110, %111 ], [ %110, %108 ]
  %122 = phi i1 [ false, %79 ], [ false, %85 ], [ false, %89 ], [ true, %115 ], [ true, %111 ], [ true, %108 ]
  br i1 %122, label %59, label %123

123:                                              ; preds = %119, %59, %43
  %124 = load i32, ptr %12, align 8, !tbaa !141
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %26, !llvm.loop !151

126:                                              ; preds = %26, %123, %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %127 = load ptr, ptr %6, align 8, !tbaa !50
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %128 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !114, !noalias !152
  %130 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %127, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !140, !noalias !152
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !39, !alias.scope !152
  %132 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %5, i64 0, i32 1
  store i32 0, ptr %132, align 8, !tbaa !155, !alias.scope !152
  %133 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %5, i64 0, i32 2
  store ptr %129, ptr %133, align 8, !tbaa !158, !alias.scope !152
  %134 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %5, i64 0, i32 3
  store ptr %131, ptr %134, align 8, !tbaa !159, !alias.scope !152
  %135 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %129, i64 0, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !160
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, ptr %132, align 8, !tbaa !155
  br i1 %137, label %139, label %162

139:                                              ; preds = %126, %159
  %140 = phi i32 [ %160, %159 ], [ %138, %126 ]
  %141 = load ptr, ptr %133, align 8, !tbaa !158
  %142 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %141, i64 0, i32 4
  %143 = load i32, ptr %142, align 4, !tbaa !160
  %144 = icmp ugt i32 %140, %143
  br i1 %144, label %162, label %145

145:                                              ; preds = %139
  %146 = call noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %146, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !117
  %149 = icmp eq ptr %148, null
  br i1 %149, label %159, label %150, !llvm.loop !162

150:                                              ; preds = %145
  %151 = load ptr, ptr %6, align 8, !tbaa !50
  %152 = load ptr, ptr %151, align 8, !tbaa !39
  %153 = getelementptr inbounds ptr, ptr %152, i64 15
  %154 = load ptr, ptr %153, align 8
  %155 = call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(61) %151, ptr noundef nonnull %148)
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load ptr, ptr %147, align 8, !tbaa !117
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 4, ptr noundef %158, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %159

159:                                              ; preds = %157, %150, %145
  %160 = load i32, ptr %132, align 8, !tbaa !155
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %139

162:                                              ; preds = %139, %159, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !146
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !146
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !141
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  ret ptr %24
}

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator14checkTokenListERKNS_9XMLAttDefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %8, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %6, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr %6, align 2, !tbaa !86
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %6, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !86
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !91

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %6 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %6, i64 %27, i1 false)
  br label %32

32:                                               ; preds = %3, %26
  %33 = phi ptr [ %31, %26 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %34 = load ptr, ptr %7, align 8, !tbaa !53
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %34, i64 0, i32 62
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  store ptr %33, ptr %4, align 8, !tbaa !92
  %37 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !94
  %38 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  br label %39

39:                                               ; preds = %77, %32
  %40 = phi ptr [ %33, %32 ], [ %50, %77 ]
  %41 = phi i8 [ 0, %32 ], [ %51, %77 ]
  br label %42

42:                                               ; preds = %45, %39
  %43 = phi ptr [ %40, %39 ], [ %46, %45 ]
  %44 = load i16, ptr %43, align 2, !tbaa !86
  switch i16 %44, label %45 [
    i16 0, label %49
    i16 32, label %47
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  br label %42, !llvm.loop !164

47:                                               ; preds = %42
  %48 = getelementptr inbounds i16, ptr %43, i64 1
  store i16 0, ptr %43, align 2, !tbaa !86
  br label %49

49:                                               ; preds = %42, %47
  %50 = phi ptr [ %48, %47 ], [ %43, %42 ]
  %51 = phi i8 [ %41, %47 ], [ 1, %42 ]
  %52 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8isInListEPKtS2_(ptr noundef %40, ptr noundef nonnull %50)
          to label %53 unwind label %60

53:                                               ; preds = %49
  br i1 %52, label %54, label %62

54:                                               ; preds = %53
  %55 = load ptr, ptr %1, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %59 unwind label %60

59:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 112, ptr noundef %58, ptr noundef %40, ptr noundef null, ptr noundef null)
          to label %62 unwind label %60

60:                                               ; preds = %76, %71, %63, %59, %54, %49
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  resume { ptr, i32 } %61

62:                                               ; preds = %59, %53
  br i1 %2, label %63, label %77

63:                                               ; preds = %62
  %64 = load ptr, ptr %38, align 8, !tbaa !50
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  %66 = getelementptr inbounds ptr, ptr %65, i64 15
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(61) %64, ptr noundef %40)
          to label %69 unwind label %60

69:                                               ; preds = %63
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %69
  %72 = load ptr, ptr %1, align 8, !tbaa !39
  %73 = getelementptr inbounds ptr, ptr %72, i64 5
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %76 unwind label %60

76:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 14, ptr noundef %75, ptr noundef %40, ptr noundef null, ptr noundef null)
          to label %77 unwind label %60

77:                                               ; preds = %76, %69, %62
  %78 = and i8 %51, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %39, label %80, !llvm.loop !165

80:                                               ; preds = %77
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !155
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !160
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(75) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !155
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !160
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 30, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !166
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !155
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  ret ptr %24
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DTDValidator19postParseValidationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !38 {
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator15validateElementEPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DTDValidator10getGrammarEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DTDValidator10setGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !167 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator10handlesDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !168 {
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DTDValidator13handlesSchemaEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !169 {
  ret i1 false
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !173 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !174
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !175

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !86
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !175

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !86
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !176

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
  %25 = load i16, ptr %24, align 2, !tbaa !86
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !177, !llvm.loop !178

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !179
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !111
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38, !prof !181

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !112
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !182
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !86
  %47 = load i16, ptr %42, align 2, !tbaa !86
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !86
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !86
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
  %65 = load i16, ptr %63, align 2, !tbaa !86
  %66 = load i16, ptr %64, align 2, !tbaa !86
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !88

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !111
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !prof !181, !llvm.loop !183

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !141
  ret void
}

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !160
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator.0", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !155
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !122
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !123
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !123
  store ptr %12, ptr %2, align 8, !tbaa !184
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !122
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = load ptr, ptr %2, align 8, !tbaa !184
  store ptr null, ptr %2, align 8, !tbaa !184
  store ptr %23, ptr %21, align 8, !tbaa !124
  store i32 %5, ptr %3, align 8, !tbaa !122
  %24 = load ptr, ptr %0, align 8, !tbaa !123
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !124
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  %38 = load ptr, ptr %19, align 8, !tbaa !120
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = load ptr, ptr %0, align 8, !tbaa !123
  %42 = load ptr, ptr %38, align 8, !tbaa !39
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !111
  store ptr %48, ptr %36, align 8, !tbaa !131
  store ptr %35, ptr %47, align 8, !tbaa !111
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !187

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !122
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !188

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_712DTDValidatorC2EPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_712DTDValidatorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !47, i64 24}
!43 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !44, i64 0, !45, i64 8, !45, i64 9, !47, i64 16, !47, i64 24}
!44 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!45 = !{!"bool", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!43, !47, i64 16}
!49 = !{!"function_entry_count", i64 3}
!50 = !{!51, !47, i64 40}
!51 = !{!"_ZTSN11xercesc_2_712DTDValidatorE", !52, i64 0, !47, i64 40}
!52 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32}
!53 = !{!52, !47, i64 32}
!54 = !{!55, !47, i64 360}
!55 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !56, i64 0, !57, i64 8, !45, i64 16, !45, i64 17, !45, i64 18, !45, i64 19, !45, i64 20, !45, i64 21, !45, i64 22, !45, i64 23, !45, i64 24, !45, i64 25, !45, i64 26, !45, i64 27, !45, i64 28, !45, i64 29, !45, i64 30, !45, i64 31, !45, i64 32, !45, i64 33, !45, i64 34, !45, i64 35, !45, i64 36, !45, i64 37, !45, i64 38, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !47, i64 72, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !45, i64 176, !59, i64 184, !47, i64 264, !62, i64 272, !47, i64 280, !47, i64 288, !47, i64 296, !47, i64 304, !47, i64 312, !47, i64 320, !47, i64 328, !47, i64 336, !47, i64 344, !61, i64 352, !47, i64 360, !63, i64 368, !64, i64 392, !64, i64 432, !64, i64 472, !64, i64 512, !64, i64 552, !64, i64 592, !64, i64 632, !65, i64 672}
!56 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!57 = !{!"long", !46, i64 0}
!58 = !{!"int", !46, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !60, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !58, i64 40, !47, i64 48, !45, i64 56, !61, i64 60, !45, i64 64, !47, i64 72}
!60 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!61 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !46, i64 0}
!62 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !46, i64 0}
!63 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !58, i64 0, !47, i64 8, !47, i64 16}
!64 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !58, i64 0, !58, i64 4, !58, i64 8, !45, i64 12, !47, i64 16, !47, i64 24, !47, i64 32}
!65 = !{!"_ZTSN11xercesc_2_79ElemStackE", !58, i64 0, !58, i64 4, !66, i64 8, !47, i64 48, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !47, i64 88, !47, i64 96}
!66 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !44, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !58, i64 32, !58, i64 36}
!67 = !{!68, !71, i64 36}
!68 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !69, i64 0, !71, i64 36, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72}
!69 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !44, i64 0, !47, i64 8, !47, i64 16, !70, i64 24, !58, i64 28, !45, i64 32}
!70 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !46, i64 0}
!71 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !46, i64 0}
!72 = !{!55, !58, i64 52}
!73 = !{!74, !47, i64 32}
!74 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !44, i64 0, !75, i64 8, !76, i64 12, !77, i64 16, !45, i64 20, !45, i64 21, !58, i64 24, !47, i64 32, !47, i64 40, !47, i64 48}
!75 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !46, i64 0}
!76 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !46, i64 0}
!77 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !46, i64 0}
!78 = !{!74, !76, i64 12}
!79 = !{!80, !47, i64 24}
!80 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !45, i64 0, !76, i64 4, !58, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !45, i64 48}
!81 = !{!80, !76, i64 4}
!82 = !{!80, !45, i64 48}
!83 = !{!80, !47, i64 40}
!84 = !{!74, !75, i64 8}
!85 = !{!74, !47, i64 40}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !46, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !89, !90}
!92 = !{!93, !47, i64 0}
!93 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !47, i64 0, !47, i64 8}
!94 = !{!93, !47, i64 8}
!95 = !{!55, !45, i64 18}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!52, !47, i64 24}
!99 = !{!59, !47, i64 16}
!100 = !{!101, !47, i64 163968}
!101 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !58, i64 0, !46, i64 4, !58, i64 32772, !46, i64 32776, !46, i64 49160, !57, i64 114696, !57, i64 114704, !102, i64 114712, !47, i64 114720, !45, i64 114728, !45, i64 114729, !47, i64 114736, !58, i64 114744, !46, i64 114748, !58, i64 163900, !58, i64 163904, !103, i64 163908, !45, i64 163912, !104, i64 163916, !58, i64 163920, !45, i64 163924, !45, i64 163925, !47, i64 163928, !47, i64 163936, !45, i64 163944, !45, i64 163945, !47, i64 163952, !105, i64 163960, !47, i64 163968, !45, i64 163976, !61, i64 163980, !47, i64 163984}
!102 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !46, i64 0}
!103 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !46, i64 0}
!104 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !46, i64 0}
!105 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !46, i64 0}
!106 = !{!46, !46, i64 0}
!107 = distinct !{!107, !89, !90}
!108 = !{!55, !47, i64 168}
!109 = !{!43, !45, i64 8}
!110 = !{!43, !45, i64 9}
!111 = !{!47, !47, i64 0}
!112 = !{!113, !47, i64 0}
!113 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !47, i64 0, !47, i64 8}
!114 = !{!115, !47, i64 32}
!115 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !116, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !58, i64 56, !45, i64 60}
!116 = !{!"_ZTSN11xercesc_2_77GrammarE", !44, i64 0}
!117 = !{!118, !47, i64 32}
!118 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !44, i64 0, !58, i64 8, !58, i64 12, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64}
!119 = distinct !{!119, !89, !90}
!120 = !{!121, !47, i64 40}
!121 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !47, i64 0, !45, i64 8, !47, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !47, i64 40}
!122 = !{!121, !58, i64 24}
!123 = !{!121, !47, i64 0}
!124 = !{!121, !47, i64 16}
!125 = !{!126, !47, i64 16}
!126 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!127 = distinct !{!127, !89, !90}
!128 = !{!126, !47, i64 0}
!129 = !{!121, !58, i64 32}
!130 = !{!121, !45, i64 8}
!131 = !{!126, !47, i64 8}
!132 = !{!"function_entry_count", i64 243874}
!133 = !{!"branch_weights", i32 191815, i32 52059}
!134 = !{!"branch_weights", i32 0, i32 52059}
!135 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv: argument 0"}
!138 = distinct !{!138, !"_ZNK11xercesc_2_710DTDGrammar17getElemEnumeratorEv"}
!139 = !{!115, !47, i64 16}
!140 = !{!115, !47, i64 8}
!141 = !{!142, !58, i64 8}
!142 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_14DTDElementDeclEEE", !143, i64 0, !58, i64 8, !47, i64 16, !47, i64 24}
!143 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_14DTDElementDeclEEE"}
!144 = !{!142, !47, i64 16}
!145 = !{!142, !47, i64 24}
!146 = !{!147, !58, i64 28}
!147 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !47, i64 0, !47, i64 8, !47, i64 16, !58, i64 24, !58, i64 28, !58, i64 32}
!148 = !{!69, !70, i64 24}
!149 = !{!69, !47, i64 16}
!150 = distinct !{!150, !89, !90}
!151 = distinct !{!151, !89, !90}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv: argument 0"}
!154 = distinct !{!154, !"_ZNK11xercesc_2_710DTDGrammar19getEntityEnumeratorEv"}
!155 = !{!156, !58, i64 8}
!156 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_13DTDEntityDeclEEE", !157, i64 0, !58, i64 8, !47, i64 16, !47, i64 24}
!157 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_13DTDEntityDeclEEE"}
!158 = !{!156, !47, i64 16}
!159 = !{!156, !47, i64 24}
!160 = !{!161, !58, i64 28}
!161 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !47, i64 0, !47, i64 8, !47, i64 16, !58, i64 24, !58, i64 28, !58, i64 32}
!162 = distinct !{!162, !89, !90}
!163 = !{!147, !47, i64 16}
!164 = distinct !{!164, !89, !90}
!165 = distinct !{!165, !89, !90}
!166 = !{!161, !47, i64 16}
!167 = !{!"function_entry_count", i64 552}
!168 = !{!"function_entry_count", i64 549}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!171, !47, i64 40}
!171 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !172, i64 8, !47, i64 16, !58, i64 24, !47, i64 32, !47, i64 40}
!172 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
!173 = !{!"function_entry_count", i64 5}
!174 = !{!161, !58, i64 32}
!175 = !{!"branch_weights", i32 0, i32 5}
!176 = !{!"branch_weights", i32 1, i32 159}
!177 = !{!"branch_weights", i32 159, i32 161}
!178 = distinct !{!178, !89, !90}
!179 = !{!58, !58, i64 0}
!180 = !{!161, !47, i64 8}
!181 = !{!"branch_weights", i32 1, i32 0}
!182 = !{!118, !47, i64 24}
!183 = distinct !{!183, !89, !90}
!184 = !{!185, !47, i64 0}
!185 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEE", !47, i64 0, !47, i64 8}
!186 = !{!185, !47, i64 8}
!187 = distinct !{!187, !89, !90}
!188 = distinct !{!188, !89, !90}
