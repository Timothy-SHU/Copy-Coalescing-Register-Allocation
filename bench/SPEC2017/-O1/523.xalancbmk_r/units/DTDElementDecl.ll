; ModuleID = 'DTDElementDecl.cpp'
source_filename = "DTDElementDecl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SimpleContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::DTDAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDAttDefList" = type { %"class.xercesc_2_7::XMLAttDefList", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLAttDefList" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_718SimpleContentModelD0Ev = comdat any

$_ZN11xercesc_2_718SimpleContentModelD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj = comdat any

$_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl15getContentModelEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE = comdat any

$_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZTVN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718SimpleContentModelE, ptr @_ZN11xercesc_2_718SimpleContentModelD2Ev, ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj] }, comdat, align 8
@_ZTVN11xercesc_2_714DTDElementDeclE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DTDElementDeclE, ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_714DTDElementDeclD0Ev, ptr @_ZNK11xercesc_2_714DTDElementDecl14isSerializableEv, ptr @_ZN11xercesc_2_714DTDElementDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_714DTDElementDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_714DTDElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb, ptr @_ZNK11xercesc_2_714DTDElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_714DTDElementDecl15getCharDataOptsEv, ptr @_ZNK11xercesc_2_714DTDElementDecl10hasAttDefsEv, ptr @_ZN11xercesc_2_714DTDElementDecl9resetDefsEv, ptr @_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_714DTDElementDecl14setContentSpecEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714DTDElementDecl15getContentModelEv, ptr @_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE, ptr @_ZNK11xercesc_2_714DTDElementDecl24getFormattedContentModelEv, ptr @_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv, ptr @_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv, ptr @_ZNK11xercesc_2_714DTDElementDecl13getObjectTypeEv] }, align 8
@_ZN11xercesc_2_76XMLUni11fgAnyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgEmptyStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [19 x i8] c"DTDElementDecl.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DTDElementDecl\00", align 1
@_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_714DTDElementDecl12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718SimpleContentModelE\00", comdat, align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718SimpleContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, comdat, align 8
@_ZTSN11xercesc_2_714DTDElementDeclE = dso_local constant [32 x i8] c"N11xercesc_2_714DTDElementDeclE\00", align 1
@_ZTIN11xercesc_2_714XMLElementDeclE = external constant ptr
@_ZTIN11xercesc_2_714DTDElementDeclE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DTDElementDeclE, ptr @_ZTIN11xercesc_2_714XMLElementDeclE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713DTDAttDefList18classDTDAttDefListE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant [58 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclC1EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !56

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15, !prof !57
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !56

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #15, !prof !57
  br label %17

17:                                               ; preds = %9, %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !59 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #15
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !59 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %4)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 4, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2)
          to label %8 unwind label %9, !prof !68

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #15
  resume { ptr, i32 } %10
}

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %3)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #15
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !68

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #16
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !68

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(48) %12) #15
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !68

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(64) %20) #15
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !68

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28) #15
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = load ptr, ptr %36, align 8, !tbaa !46
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38)
          to label %42 unwind label %43, !prof !75

42:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #15
  ret void

43:                                               ; preds = %34
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_714DTDElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 %2, ptr nocapture readnone %3, ptr nocapture readnone %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %1)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i32 %5, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %83

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %22

22:                                               ; preds = %21, %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %24)
  %26 = load ptr, ptr %23, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef %1, i32 noundef 0, i32 noundef 4, ptr noundef %26)
          to label %27 unwind label %45

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !76
  %30 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %25, i64 0, i32 1
  store i32 %29, ptr %30, align 8, !tbaa !77
  %31 = load ptr, ptr %8, align 8, !tbaa !69
  %32 = load ptr, ptr %25, align 8, !tbaa !46
  %33 = getelementptr inbounds ptr, ptr %32, i64 5
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(72) %25)
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %35, ptr noundef nonnull %25)
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load ptr, ptr %23, align 8, !tbaa !73
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %40)
  %42 = load ptr, ptr %8, align 8, !tbaa !69
  %43 = load ptr, ptr %23, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef %42, ptr noundef %43)
          to label %44 unwind label %47

44:                                               ; preds = %39
  store ptr %41, ptr %36, align 8, !tbaa !70
  br label %49

45:                                               ; preds = %22
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #15
  br label %86

47:                                               ; preds = %39
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #15
  br label %86

49:                                               ; preds = %44, %27
  %50 = load ptr, ptr %36, align 8, !tbaa !70
  %51 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !83
  %53 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %50, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !86
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = shl i32 %54, 1
  store i32 %57, ptr %53, align 8, !tbaa !86
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %50, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = zext i32 %57 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = load ptr, ptr %59, align 8, !tbaa !46
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %59, i64 noundef %61)
  %66 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %50, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  %68 = load i32, ptr %51, align 4, !tbaa !83
  %69 = zext i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %65, ptr align 8 %67, i64 %70, i1 false)
  %71 = load ptr, ptr %58, align 8, !tbaa !87
  %72 = load ptr, ptr %66, align 8, !tbaa !88
  %73 = load ptr, ptr %71, align 8, !tbaa !46
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %72)
  store ptr %65, ptr %66, align 8, !tbaa !88
  br label %76

76:                                               ; preds = %49, %56
  %77 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %50, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load i32, ptr %51, align 4, !tbaa !83
  %80 = add i32 %79, 1
  store i32 %80, ptr %51, align 4, !tbaa !83
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds ptr, ptr %78, i64 %81
  store ptr %25, ptr %82, align 8, !tbaa !89
  br label %83

83:                                               ; preds = %13, %76
  %84 = phi i8 [ 1, %76 ], [ 0, %13 ]
  %85 = phi ptr [ %25, %76 ], [ %14, %13 ]
  store i8 %84, ptr %6, align 1, !tbaa !90
  ret ptr %85

86:                                               ; preds = %47, %45
  %87 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  resume { ptr, i32 } %87
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = load ptr, ptr %0, align 8, !tbaa !94
  %8 = load ptr, ptr %4, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !91
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = load ptr, ptr %19, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !98

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !101
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 29, i1 noundef zeroext true, ptr noundef %5)
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !69
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = load i32, ptr %4, align 8, !tbaa !93
  %16 = load ptr, ptr %0, align 8, !tbaa !94
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !91
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !98

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !103, !range !104, !noundef !105
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !101
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !46
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(72) %47) #15
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !101
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !96
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !94
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !95
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !89
  store ptr %2, ptr %60, align 8, !tbaa !101
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !106
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !96
  store ptr %60, ptr %62, align 8, !tbaa !89
  %66 = load i32, ptr %8, align 8, !tbaa !102
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !102
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

declare void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_714DTDElementDecl13getAttDefListEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %12)
  %14 = load ptr, ptr %6, align 8, !tbaa !69
  %15 = load ptr, ptr %11, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %14, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %10
  store ptr %13, ptr %2, align 8, !tbaa !70
  br label %19

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %18

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %2, align 8, !tbaa !70
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(48) %20)
  %24 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %24
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl15getCharDataOptsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 2
  %6 = icmp eq i32 %3, 3
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DTDElementDecl10hasAttDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !108

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714DTDElementDecl9resetDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %8)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 4
  br label %12

12:                                               ; preds = %23, %6
  %13 = load ptr, ptr %9, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, ptr %10, align 8, !tbaa !112
  %17 = load ptr, ptr %11, align 8, !tbaa !113
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !93
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15, %12
  %22 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %23 unwind label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %22, i64 0, i32 4
  store i8 0, ptr %24, align 4, !tbaa !114
  br label %12, !llvm.loop !115

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  resume { ptr, i32 } %26

27:                                               ; preds = %15
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  br label %28

28:                                               ; preds = %1, %27
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !117
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %14 = load ptr, ptr %10, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  ret ptr %16
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !116, !range !104, !noundef !105
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(64) %4) #15
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !71
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 14
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr %6, ptr %2, align 8, !tbaa !74
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !60
  switch i32 %4, label %45 [
    i32 1, label %5
    i32 0, label %25
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgAnyStringE, align 2, !tbaa !118
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %12, %10 ], [ @_ZN11xercesc_2_76XMLUni11fgAnyStringE, %5 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !118
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !120

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = add i64 %16, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni11fgAnyStringE to i64)), i64 2)
  %18 = and i64 %17, 8589934590
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i64 [ %18, %15 ], [ 2, %5 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %20)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %24, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni11fgAnyStringE, i64 %20, i1 false)
  br label %113

25:                                               ; preds = %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, align 2, !tbaa !118
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %32, %30 ], [ @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, %25 ]
  %32 = getelementptr inbounds i16, ptr %31, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !118
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %30, !llvm.loop !120

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i64
  %37 = add i64 %36, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni13fgEmptyStringE to i64)), i64 2)
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %25, %35
  %40 = phi i64 [ %38, %35 ], [ 2, %25 ]
  %41 = load ptr, ptr %27, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %40)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, i64 %40, i1 false)
  br label %113

45:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  store i32 0, ptr %2, align 8, !tbaa !121
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  store i32 1023, ptr %48, align 4, !tbaa !123
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 2
  store i32 0, ptr %49, align 8, !tbaa !124
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 3
  store i8 0, ptr %50, align 4, !tbaa !125
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 4
  store ptr %47, ptr %51, align 8, !tbaa !126
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 5
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %47, align 8, !tbaa !46
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef 2048)
  store ptr %57, ptr %53, align 8, !tbaa !127
  store i16 0, ptr %57, align 2, !tbaa !118
  %58 = load ptr, ptr %0, align 8, !tbaa !46
  %59 = getelementptr inbounds ptr, ptr %58, i64 10
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %62 unwind label %102

62:                                               ; preds = %45
  invoke void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %61, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %63 unwind label %102

63:                                               ; preds = %62
  %64 = load ptr, ptr %53, align 8, !tbaa !127
  %65 = load i32, ptr %2, align 8, !tbaa !121
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !118
  %68 = load ptr, ptr %46, align 8, !tbaa !73
  %69 = icmp eq ptr %64, null
  br i1 %69, label %91, label %70

70:                                               ; preds = %63
  %71 = load i16, ptr %64, align 2, !tbaa !118
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %64, %70 ]
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  %76 = load i16, ptr %75, align 2, !tbaa !118
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %73, !llvm.loop !120

78:                                               ; preds = %73
  %79 = ptrtoint ptr %75 to i64
  %80 = ptrtoint ptr %64 to i64
  %81 = sub i64 %79, %80
  %82 = add i64 %81, 2
  %83 = and i64 %82, 8589934590
  br label %84

84:                                               ; preds = %78, %70
  %85 = phi i64 [ %83, %78 ], [ 2, %70 ]
  %86 = load ptr, ptr %68, align 8, !tbaa !46
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef %85)
          to label %90 unwind label %102

90:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %89, ptr nonnull align 2 %64, i64 %85, i1 false)
  br label %91

91:                                               ; preds = %90, %63
  %92 = phi ptr [ %89, %90 ], [ null, %63 ]
  %93 = load ptr, ptr %51, align 8, !tbaa !126
  %94 = load ptr, ptr %53, align 8, !tbaa !127
  %95 = load ptr, ptr %93, align 8, !tbaa !46
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef %94)
          to label %101 unwind label %98

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #16
  unreachable

101:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  br label %113

102:                                              ; preds = %84, %62, %45
  %103 = landingpad { ptr, i32 }
          cleanup
  %104 = load ptr, ptr %51, align 8, !tbaa !126
  %105 = load ptr, ptr %53, align 8, !tbaa !127
  %106 = load ptr, ptr %104, align 8, !tbaa !46
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %105)
          to label %112 unwind label %109

109:                                              ; preds = %102
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #16
  unreachable

112:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  resume { ptr, i32 } %103

113:                                              ; preds = %39, %101, %19
  %114 = phi ptr [ %24, %19 ], [ %44, %39 ], [ %92, %101 ]
  ret ptr %114
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !128 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !129

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %1, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !77
  %11 = load ptr, ptr %3, align 8, !tbaa !69
  %12 = load ptr, ptr %1, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %15, ptr noundef nonnull %1)
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %21)
  %23 = load ptr, ptr %3, align 8, !tbaa !69
  %24 = load ptr, ptr %20, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %23, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %19
  store ptr %22, ptr %16, align 8, !tbaa !70
  br label %28

26:                                               ; preds = %19
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %25, %7
  %29 = load ptr, ptr %16, align 8, !tbaa !70
  %30 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !83
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %29, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !86
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = shl i32 %33, 1
  store i32 %36, ptr %32, align 8, !tbaa !86
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = zext i32 %36 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = load ptr, ptr %38, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %45 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %29, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !88
  %47 = load i32, ptr %30, align 4, !tbaa !83
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %37, align 8, !tbaa !87
  %51 = load ptr, ptr %45, align 8, !tbaa !88
  %52 = load ptr, ptr %50, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51)
  store ptr %44, ptr %45, align 8, !tbaa !88
  br label %55

55:                                               ; preds = %28, %35
  %56 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %29, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = load i32, ptr %30, align 4, !tbaa !83
  %59 = add i32 %58, 1
  store i32 %59, ptr %30, align 4, !tbaa !83
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  store ptr %1, ptr %61, align 8, !tbaa !89
  ret void
}

declare void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl16makeContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  switch i32 %3, label %18 [
    i32 2, label %4
    i32 3, label %16
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %6)
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %12 unwind label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, i1 noundef zeroext true, ptr noundef %11, i1 noundef zeroext false, ptr noundef %13)
          to label %25 unwind label %14

14:                                               ; preds = %12, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #15
  br label %27

16:                                               ; preds = %1
  %17 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl16createChildModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %25

18:                                               ; preds = %1
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 17, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %19) #15
  br label %27

25:                                               ; preds = %12, %16
  %26 = phi ptr [ %17, %16 ], [ %7, %12 ]
  ret ptr %26

27:                                               ; preds = %23, %14
  %28 = phi { ptr, i32 } [ %15, %14 ], [ %24, %23 ]
  resume { ptr, i32 } %28
}

declare void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl16createChildModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 22, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  br label %105

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !132
  %21 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !134
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 18, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #15
  br label %105

30:                                               ; preds = %18, %14
  %31 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !135
  switch i32 %32, label %84 [
    i32 0, label %33
    i32 4, label %41
    i32 5, label %41
    i32 3, label %67
    i32 2, label %67
    i32 1, label %67
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %35)
  %37 = load ptr, ptr %15, align 8, !tbaa !130
  %38 = load ptr, ptr %34, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %36, i1 noundef zeroext true, ptr noundef %37, ptr noundef null, i32 noundef 0, ptr noundef %38)
          to label %103 unwind label %39

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #15
  br label %105

41:                                               ; preds = %30, %30
  %42 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !135
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !137
  %50 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !135
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %47
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %55)
  %57 = load ptr, ptr %42, align 8, !tbaa !136
  %58 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !130
  %60 = load ptr, ptr %48, align 8, !tbaa !137
  %61 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !130
  %63 = load i32, ptr %31, align 8, !tbaa !135
  %64 = load ptr, ptr %54, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %56, i1 noundef zeroext true, ptr noundef %59, ptr noundef %62, i32 noundef %63, ptr noundef %64)
          to label %103 unwind label %65

65:                                               ; preds = %53
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %55) #15
  br label %105

67:                                               ; preds = %30, %30, %30
  %68 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !136
  %70 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %69, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !135
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %75)
  %77 = load ptr, ptr %68, align 8, !tbaa !136
  %78 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !130
  %80 = load i32, ptr %31, align 8, !tbaa !135
  %81 = load ptr, ptr %74, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %76, i1 noundef zeroext true, ptr noundef %79, ptr noundef null, i32 noundef %80, ptr noundef %81)
          to label %103 unwind label %82

82:                                               ; preds = %73
  %83 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %76, ptr noundef %75) #15
  br label %105

84:                                               ; preds = %30
  %85 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %85, ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 22, ptr noundef %87)
          to label %88 unwind label %89

88:                                               ; preds = %84
  tail call void @__cxa_throw(ptr nonnull %85, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

89:                                               ; preds = %84
  %90 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %85) #15
  br label %105

91:                                               ; preds = %41, %47, %67
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !73
  %94 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %93)
  %95 = load ptr, ptr %0, align 8, !tbaa !46
  %96 = getelementptr inbounds ptr, ptr %95, i64 11
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %99 unwind label %101

99:                                               ; preds = %91
  %100 = load ptr, ptr %92, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %94, i1 noundef zeroext true, ptr noundef %98, ptr noundef %100)
          to label %103 unwind label %101

101:                                              ; preds = %99, %91
  %102 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %94, ptr noundef %93) #15
  br label %105

103:                                              ; preds = %99, %73, %53, %33
  %104 = phi ptr [ %36, %33 ], [ %56, %53 ], [ %76, %73 ], [ %94, %99 ]
  ret ptr %104

105:                                              ; preds = %101, %89, %82, %65, %39, %28, %12
  %106 = phi { ptr, i32 } [ %29, %28 ], [ %40, %39 ], [ %66, %65 ], [ %102, %101 ], [ %83, %82 ], [ %90, %89 ], [ %13, %12 ]
  resume { ptr, i32 } %106
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %7 = zext i1 %1 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %4, ptr %9, align 8, !tbaa !138
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  store i8 %7, ptr %10, align 4, !tbaa !139
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  store ptr %5, ptr %11, align 8, !tbaa !140
  %12 = icmp eq ptr %2, null
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  br i1 %12, label %17, label %14, !prof !56

14:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %21 unwind label %15, !prof !141

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %33

17:                                               ; preds = %6
  %18 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !134
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %18, ptr noundef %5)
          to label %21 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %33

21:                                               ; preds = %17, %14
  store ptr %13, ptr %8, align 8, !tbaa !49
  %22 = icmp eq ptr %3, null
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  br i1 %22, label %27, label %24, !prof !142

24:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %31 unwind label %25, !prof !143

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %21
  %28 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !134
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %28, ptr noundef %5)
          to label %31 unwind label %29, !prof !144

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  store ptr %23, ptr %32, align 8, !tbaa !58
  ret void

33:                                               ; preds = %29, %25, %19, %15
  %34 = phi ptr [ %23, %29 ], [ %23, %25 ], [ %13, %19 ], [ %13, %15 ]
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %26, %25 ], [ %20, %19 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %5) #15
  resume { ptr, i32 } %35
}

declare void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !95
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !145
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !102
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %12 = load ptr, ptr %0, align 8, !tbaa !94
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !91
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %0)
  invoke void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %0)
          to label %3 unwind label %6

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %2, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  ret ptr %2

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DTDElementDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !59 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714DTDElementDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !59 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %4 = load i16, ptr %1, align 8, !tbaa !146
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9DTDAttDefEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15)
  br label %26

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %17 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %18 = load i32, ptr %3, align 4, !tbaa !134
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9DTDAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %20, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %22 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_713DTDAttDefList18classDTDAttDefListE)
  store ptr %22, ptr %21, align 8, !tbaa !89
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %24 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE)
  store ptr %24, ptr %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %26

26:                                               ; preds = %16, %6
  ret void
}

declare void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9DTDAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9DTDAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl13getObjectTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !59 {
  ret i32 1
}

declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !59 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !134
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl15getContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl16makeContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr %6, ptr %2, align 8, !tbaa !72
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %12)
  store ptr null, ptr %11, align 8, !tbaa !74
  br label %20

20:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !59 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !59 {
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !95
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !102
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !102
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !95
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = load i8, ptr %11, align 8, !tbaa !103, !range !104, !noundef !105
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !101
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !94
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !152

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !95
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !89
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !93
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !153

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !94
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %12, ptr %2, align 8, !tbaa !154
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !156
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !93
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = load ptr, ptr %2, align 8, !tbaa !154
  store ptr null, ptr %2, align 8, !tbaa !154
  store ptr %23, ptr %21, align 8, !tbaa !95
  store i32 %5, ptr %3, align 8, !tbaa !93
  %24 = load ptr, ptr %0, align 8, !tbaa !94
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !95
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !89
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = load ptr, ptr %19, align 8, !tbaa !91
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = load ptr, ptr %0, align 8, !tbaa !94
  %42 = load ptr, ptr %38, align 8, !tbaa !46
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !89
  store ptr %48, ptr %36, align 8, !tbaa !106
  store ptr %35, ptr %47, align 8, !tbaa !89
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !157

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !93
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !158

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  store ptr %7, ptr %2, align 8, !tbaa !109
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !109
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !112
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !93
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = load i32, ptr %12, align 8, !tbaa !112
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !112
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !llvm.loop !159

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !109
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !112
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !94
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !93
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !95
  %21 = load i32, ptr %12, align 8, !tbaa !93
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !89
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !160
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!36 = !{ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, i64 47}
!37 = !{ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti, i64 47}
!38 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, i64 47}
!39 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD0Ev, ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, i64 47}
!40 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 47}
!41 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!42 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 15}
!43 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 9}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 12}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !52, i64 8}
!50 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !51, i64 0, !52, i64 8, !52, i64 16, !54, i64 24, !55, i64 28, !52, i64 32}
!51 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !48, i64 0}
!54 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !53, i64 0}
!55 = !{!"bool", !53, i64 0}
!56 = !{!"branch_weights", i32 0, i32 12}
!57 = !{!"VP", i32 0, i64 12, i64 7173745605608799217, i64 12}
!58 = !{!50, !52, i64 16}
!59 = !{!"function_entry_count", i64 0}
!60 = !{!61, !66, i64 36}
!61 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !62, i64 0, !66, i64 36, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72}
!62 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !63, i64 0, !52, i64 8, !52, i64 16, !64, i64 24, !65, i64 28, !55, i64 32}
!63 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!64 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !53, i64 0}
!65 = !{!"int", !53, i64 0}
!66 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !53, i64 0}
!67 = !{!"function_entry_count", i64 47}
!68 = !{!"branch_weights", i32 47, i32 0}
!69 = !{!61, !52, i64 40}
!70 = !{!61, !52, i64 48}
!71 = !{!61, !52, i64 56}
!72 = !{!61, !52, i64 64}
!73 = !{!62, !52, i64 8}
!74 = !{!61, !52, i64 72}
!75 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!76 = !{!62, !65, i64 28}
!77 = !{!78, !65, i64 56}
!78 = !{!"_ZTSN11xercesc_2_79DTDAttDefE", !79, i64 0, !65, i64 56, !52, i64 64}
!79 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !63, i64 0, !80, i64 8, !81, i64 12, !82, i64 16, !55, i64 20, !55, i64 21, !65, i64 24, !52, i64 32, !52, i64 40, !52, i64 48}
!80 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !53, i64 0}
!81 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !53, i64 0}
!82 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !53, i64 0}
!83 = !{!84, !65, i64 44}
!84 = !{!"_ZTSN11xercesc_2_713DTDAttDefListE", !85, i64 0, !52, i64 16, !52, i64 24, !52, i64 32, !65, i64 40, !65, i64 44}
!85 = !{!"_ZTSN11xercesc_2_713XMLAttDefListE", !63, i64 0, !52, i64 8}
!86 = !{!84, !65, i64 40}
!87 = !{!85, !52, i64 8}
!88 = !{!84, !52, i64 32}
!89 = !{!52, !52, i64 0}
!90 = !{!55, !55, i64 0}
!91 = !{!92, !52, i64 40}
!92 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEE", !52, i64 0, !55, i64 8, !52, i64 16, !65, i64 24, !65, i64 28, !65, i64 32, !52, i64 40}
!93 = !{!92, !65, i64 24}
!94 = !{!92, !52, i64 0}
!95 = !{!92, !52, i64 16}
!96 = !{!97, !52, i64 16}
!97 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9DTDAttDefEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!97, !52, i64 0}
!102 = !{!92, !65, i64 32}
!103 = !{!92, !55, i64 8}
!104 = !{i8 0, i8 2}
!105 = !{}
!106 = !{!97, !52, i64 8}
!107 = !{!"function_entry_count", i64 1490}
!108 = !{!"branch_weights", i32 1490, i32 0}
!109 = !{!110, !52, i64 16}
!110 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE", !111, i64 0, !55, i64 8, !52, i64 16, !65, i64 24, !52, i64 32, !52, i64 40}
!111 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE"}
!112 = !{!110, !65, i64 24}
!113 = !{!110, !52, i64 32}
!114 = !{!79, !55, i64 20}
!115 = distinct !{!115, !99, !100}
!116 = !{!110, !55, i64 8}
!117 = !{!110, !52, i64 40}
!118 = !{!119, !119, i64 0}
!119 = !{!"short", !53, i64 0}
!120 = distinct !{!120, !99, !100}
!121 = !{!122, !65, i64 0}
!122 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !65, i64 0, !65, i64 4, !65, i64 8, !55, i64 12, !52, i64 16, !52, i64 24, !52, i64 32}
!123 = !{!122, !65, i64 4}
!124 = !{!122, !65, i64 8}
!125 = !{!122, !55, i64 12}
!126 = !{!122, !52, i64 16}
!127 = !{!122, !52, i64 32}
!128 = !{!"function_entry_count", i64 872}
!129 = !{!"branch_weights", i32 872, i32 0}
!130 = !{!131, !52, i64 16}
!131 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !63, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !54, i64 48, !55, i64 52, !55, i64 53, !65, i64 56, !65, i64 60}
!132 = !{!133, !65, i64 20}
!133 = !{!"_ZTSN11xercesc_2_75QNameE", !63, i64 0, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48}
!134 = !{!65, !65, i64 0}
!135 = !{!131, !54, i64 48}
!136 = !{!131, !52, i64 32}
!137 = !{!131, !52, i64 40}
!138 = !{!50, !54, i64 24}
!139 = !{!50, !55, i64 28}
!140 = !{!50, !52, i64 32}
!141 = !{!"branch_weights", i32 12, i32 0}
!142 = !{!"branch_weights", i32 9, i32 3}
!143 = !{!"branch_weights", i32 3, i32 0}
!144 = !{!"branch_weights", i32 9, i32 0}
!145 = !{!92, !65, i64 28}
!146 = !{!147, !119, i64 0}
!147 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !119, i64 0, !119, i64 2, !52, i64 8, !52, i64 16, !52, i64 24, !148, i64 32, !148, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !65, i64 96}
!148 = !{!"long", !53, i64 0}
!149 = !{!150, !52, i64 40}
!150 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !151, i64 8, !52, i64 16, !65, i64 24, !52, i64 32, !52, i64 40}
!151 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}
!152 = distinct !{!152, !99, !100}
!153 = distinct !{!153, !99, !100}
!154 = !{!155, !52, i64 0}
!155 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEEE", !52, i64 0, !52, i64 8}
!156 = !{!155, !52, i64 8}
!157 = distinct !{!157, !99, !100}
!158 = distinct !{!158, !99, !100}
!159 = distinct !{!159, !99, !100}
!160 = distinct !{!160, !99, !100}
