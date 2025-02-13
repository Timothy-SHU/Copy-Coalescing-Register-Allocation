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
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DTDAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDAttDefList" = type { %"class.xercesc_2_7::XMLAttDefList", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLAttDefList" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_718SimpleContentModelD2Ev = comdat any

$_ZN11xercesc_2_718SimpleContentModelD0Ev = comdat any

$_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj = comdat any

$_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl15getContentModelEv = comdat any

$_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE = comdat any

$_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEED2Ev = comdat any

$_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_79DTDAttDef9setElemIdEj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_713DTDAttDefList9addAttDefEPNS_9DTDAttDefE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_9DTDAttDefEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE5resetEPS4_ = comdat any

$_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv = comdat any

$_ZN11xercesc_2_79XMLAttDef11setProvidedEb = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_715XMLContentModelC2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_13DTDAttDefListE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_715XMLContentModelE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718SimpleContentModelE, ptr @_ZN11xercesc_2_718SimpleContentModelD2Ev, ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718SimpleContentModelE\00", comdat, align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718SimpleContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, comdat, align 8
@_ZTVN11xercesc_2_714DTDElementDeclE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DTDElementDeclE, ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_714DTDElementDeclD0Ev, ptr @_ZNK11xercesc_2_714DTDElementDecl14isSerializableEv, ptr @_ZN11xercesc_2_714DTDElementDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_714DTDElementDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_714DTDElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb, ptr @_ZNK11xercesc_2_714DTDElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_714DTDElementDecl15getCharDataOptsEv, ptr @_ZNK11xercesc_2_714DTDElementDecl10hasAttDefsEv, ptr @_ZN11xercesc_2_714DTDElementDecl9resetDefsEv, ptr @_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_714DTDElementDecl14setContentSpecEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714DTDElementDecl15getContentModelEv, ptr @_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE, ptr @_ZNK11xercesc_2_714DTDElementDecl24getFormattedContentModelEv, ptr @_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv, ptr @_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv, ptr @_ZNK11xercesc_2_714DTDElementDecl13getObjectTypeEv] }, align 8
@_ZTSN11xercesc_2_714DTDElementDeclE = dso_local constant [32 x i8] c"N11xercesc_2_714DTDElementDeclE\00", align 1
@_ZTIN11xercesc_2_714XMLElementDeclE = external constant ptr
@_ZTIN11xercesc_2_714DTDElementDeclE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DTDElementDeclE, ptr @_ZTIN11xercesc_2_714XMLElementDeclE }, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv] }, comdat, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant [58 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgAnyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgEmptyStringE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [19 x i8] c"DTDElementDecl.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLContentModelE, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.2, ptr @_ZN11xercesc_2_714DTDElementDecl12createObjectEPNS_13MemoryManagerE }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"DTDElementDecl\00", align 1
@_ZN11xercesc_2_713DTDAttDefList18classDTDAttDefListE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4

@_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclC1EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_714DTDElementDeclC2EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_714DTDElementDeclD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !53 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !54
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !66
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_714DTDElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DTDElementDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !65 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !65 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  br i1 %4, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9DTDAttDefEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13) #13
  %15 = load ptr, ptr %5, align 8, !tbaa !76
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15) #13
  br label %26

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %18 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %19 = load i32, ptr %3, align 4, !tbaa !66
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !68
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9DTDAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %21, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %23 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_13DTDAttDefListE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  %24 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %26

26:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714DTDElementDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 %2, ptr nocapture readnone %3, ptr nocapture readnone %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %1) #13
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i32 %5, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %23) #13
  %25 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef %1, i32 noundef 0, i32 noundef 4, ptr noundef %25) #13
          to label %26 unwind label %42

26:                                               ; preds = %22
  %27 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  tail call void @_ZN11xercesc_2_79DTDAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef %27) #13
  %28 = load ptr, ptr %8, align 8, !tbaa !74
  %29 = load ptr, ptr %24, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(72) %24) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %32, ptr noundef nonnull %24) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %37) #13
  %39 = load ptr, ptr %8, align 8, !tbaa !74
  %40 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef %39, ptr noundef %40) #13
          to label %41 unwind label %44

41:                                               ; preds = %36
  store ptr %38, ptr %33, align 8, !tbaa !75
  br label %46

42:                                               ; preds = %22
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #12
  br label %51

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #12
  br label %51

46:                                               ; preds = %41, %26
  %47 = phi ptr [ %38, %41 ], [ %34, %26 ]
  tail call void @_ZN11xercesc_2_713DTDAttDefList9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull %24) #13
  br label %48

48:                                               ; preds = %13, %46
  %49 = phi i8 [ 1, %46 ], [ 0, %13 ]
  %50 = phi ptr [ %24, %46 ], [ %14, %13 ]
  store i8 %49, ptr %6, align 1, !tbaa !77
  ret ptr %50

51:                                               ; preds = %44, %42
  %52 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_714DTDElementDecl13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %11) #13
  %13 = load ptr, ptr %6, align 8, !tbaa !74
  %14 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %13, ptr noundef %14) #13
          to label %15 unwind label %16

15:                                               ; preds = %10
  store ptr %12, ptr %2, align 8, !tbaa !75
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #12
  resume { ptr, i32 } %17

18:                                               ; preds = %15, %1
  %19 = phi ptr [ %12, %15 ], [ %3, %1 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(48) %19) #13
  %23 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl15getCharDataOptsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !68
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 2
  %6 = icmp eq i32 %3, 3
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DTDElementDecl10hasAttDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !79

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  %7 = xor i1 %6, true
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i1 [ %7, %5 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714DTDElementDecl9resetDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef %7) #13
  %8 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
  br i1 %8, label %9, label %15

9:                                                ; preds = %6, %11
  %10 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
          to label %11 unwind label %13

11:                                               ; preds = %9
  call void @_ZN11xercesc_2_79XMLAttDef11setProvidedEb(ptr noundef nonnull align 8 dereferenceable(56) %10, i1 noundef zeroext false) #13
  %12 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
  br i1 %12, label %9, label %15, !llvm.loop !80

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %6
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  br label %16

16:                                               ; preds = %1, %15
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(64) %4) #12
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !76
  %11 = load ptr, ptr %0, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 14
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl15getContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl16makeContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  store ptr %6, ptr %2, align 8, !tbaa !82
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DTDElementDecl15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %16 = load ptr, ptr %11, align 8, !tbaa !83
  %17 = load ptr, ptr %15, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %16) #13
  store ptr null, ptr %11, align 8, !tbaa !83
  br label %20

20:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  store ptr %6, ptr %2, align 8, !tbaa !83
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DTDElementDecl13getObjectTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !65 {
  ret i32 1
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) #13
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !68
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2) #13
          to label %8 unwind label %9

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclC2EPNS_5QNameENS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714DTDElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(48) %8) #12
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !54
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #12
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !54
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24) #12
  br label %30

30:                                               ; preds = %26, %22
  %31 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = load ptr, ptr %31, align 8, !tbaa !54
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33) #13
          to label %37 unwind label %38

37:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  ret void

38:                                               ; preds = %30
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = load ptr, ptr %2, align 8, !tbaa !54
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !89
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !54
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !92
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !89
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  %23 = load i8, ptr %9, align 8, !tbaa !96, !range !97, !noundef !98
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !99
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !87
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !100

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !89
  %40 = load i32, ptr %4, align 8, !tbaa !91
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !93
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !101

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !99
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 29, i1 noundef zeroext true, ptr noundef %4) #13
          to label %5 unwind label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  store ptr %3, ptr %6, align 8, !tbaa !74
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #12
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DTDAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !108
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !96, !range !97, !noundef !98
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !54
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(72) %21) #12
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !99
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !109
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !87
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load i32, ptr %4, align 4, !tbaa !66
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_9DTDAttDefEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #13
  %41 = load ptr, ptr %35, align 8, !tbaa !89
  %42 = load i32, ptr %4, align 4, !tbaa !66
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !93
  %45 = load i32, ptr %9, align 8, !tbaa !92
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !92
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDAttDefList9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !110
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  br label %32

11:                                               ; preds = %2
  %12 = shl i32 %4, 1
  store i32 %12, ptr %5, align 8, !tbaa !113
  %13 = tail call noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %14 = load i32, ptr %5, align 8, !tbaa !113
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %13, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %16) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDefList", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = load i32, ptr %3, align 4, !tbaa !110
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 %25, i1 false)
  %26 = tail call noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %27 = load ptr, ptr %21, align 8, !tbaa !114
  %28 = load ptr, ptr %26, align 8, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #13
  store ptr %20, ptr %21, align 8, !tbaa !114
  %31 = load i32, ptr %3, align 4, !tbaa !110
  br label %32

32:                                               ; preds = %8, %11
  %33 = phi i32 [ %4, %8 ], [ %31, %11 ]
  %34 = phi ptr [ %10, %8 ], [ %20, %11 ]
  %35 = add i32 %33, 1
  store i32 %35, ptr %3, align 4, !tbaa !110
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %1, ptr %37, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr %0, align 8, !tbaa !87
  %9 = load ptr, ptr %5, align 8, !tbaa !54
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !66
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !90
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  %23 = load ptr, ptr %20, align 8, !tbaa !54
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !115

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !87
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !91
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !89
  store i32 %5, ptr %3, align 8, !tbaa !91
  %23 = load ptr, ptr %0, align 8, !tbaa !87
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !89
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = load ptr, ptr %18, align 8, !tbaa !90
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = load ptr, ptr %0, align 8, !tbaa !87
  %42 = load ptr, ptr %38, align 8, !tbaa !54
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  store ptr %48, ptr %36, align 8, !tbaa !94
  store ptr %35, ptr %47, align 8, !tbaa !93
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !116

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !91
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !117

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_9DTDAttDefEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  store ptr %2, ptr %0, align 8, !tbaa !99
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  store ptr null, ptr %0, align 8, !tbaa !118
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !121 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !54
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !118
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !120
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !127
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !130
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = load ptr, ptr %10, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 527, i32 noundef 15, ptr noundef %14) #13
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 575, i32 noundef 30, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef11setProvidedEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !124, !range !97, !noundef !98
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #12
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  store ptr %7, ptr %2, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !128
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !91
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !128
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !132

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !127
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !128
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !68
  switch i32 %4, label %11 [
    i32 1, label %5
    i32 0, label %8
  ]

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgAnyStringE, ptr noundef %6) #13
  br label %25

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, ptr noundef %9) #13
  br label %25

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %12 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1023, ptr noundef %12) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !54
  %14 = getelementptr inbounds ptr, ptr %13, i64 10
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
          to label %17 unwind label %23

17:                                               ; preds = %11
  invoke void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
          to label %18 unwind label %23

18:                                               ; preds = %17
  %19 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %20 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %21 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %20) #13
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  br label %25

23:                                               ; preds = %18, %17, %11
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %8, %22, %5
  %26 = phi ptr [ %7, %5 ], [ %10, %8 ], [ %21, %22 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !136 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !137

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_714DTDElementDecl17faultInAttDefListEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  tail call void @_ZN11xercesc_2_79DTDAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %8) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !74
  %10 = load ptr, ptr %1, align 8, !tbaa !54
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %13, ptr noundef nonnull %1) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %18) #13
  %20 = load ptr, ptr %3, align 8, !tbaa !74
  %21 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_713DTDAttDefListC1EPNS_14RefHashTableOfINS_9DTDAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %20, ptr noundef %21) #13
          to label %22 unwind label %23

22:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !75
  br label %25

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #12
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %7
  %26 = phi ptr [ %19, %22 ], [ %15, %7 ]
  tail call void @_ZN11xercesc_2_713DTDAttDefList9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !138 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !139

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !140 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !141
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !143
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !144
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !145
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !146
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !54
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !147
  store i16 0, ptr %16, align 2, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = load i32, ptr %0, align 8, !tbaa !141
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !148
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !140 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = load ptr, ptr %3, align 8, !tbaa !54
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !152

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !148
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !153

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !148
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !154, !llvm.loop !155

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl16makeContentModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !68
  switch i32 %3, label %17 [
    i32 2, label %4
    i32 3, label %15
  ]

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %5) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
          to label %11 unwind label %13

11:                                               ; preds = %4
  %12 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, i1 noundef zeroext true, ptr noundef %10, i1 noundef zeroext false, ptr noundef %12) #13
          to label %23 unwind label %13

13:                                               ; preds = %11, %4
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #12
  br label %25

15:                                               ; preds = %1
  %16 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl16createChildModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  br label %23

17:                                               ; preds = %1
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str.1, i32 noundef 332, i32 noundef 17, ptr noundef %19) #13
          to label %20 unwind label %21

20:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  br label %25

23:                                               ; preds = %11, %15
  %24 = phi ptr [ %16, %15 ], [ %6, %11 ]
  ret ptr %24

25:                                               ; preds = %21, %13
  %26 = phi { ptr, i32 } [ %14, %13 ], [ %22, %21 ]
  resume { ptr, i32 } %26
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl16createChildModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds ptr, ptr %2, i64 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 344, i32 noundef 22, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  br label %103

13:                                               ; preds = %1
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %18 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %17) #13
  %19 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !66
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %23 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 18, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #14
  br label %103

27:                                               ; preds = %16, %13
  %28 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %31) #13
  %33 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %34 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %32, i1 noundef zeroext true, ptr noundef %33, ptr noundef null, i32 noundef 0, ptr noundef %34) #13
          to label %101 unwind label %35

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %32, ptr noundef %31) #12
  br label %103

37:                                               ; preds = %27
  %38 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %62

43:                                               ; preds = %40, %37
  %44 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %45 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %44) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %43
  %48 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %49 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %48) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %52) #13
  %54 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %55 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %54) #13
  %56 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %57 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %56) #13
  %58 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %59 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i1 noundef zeroext true, ptr noundef %55, ptr noundef %57, i32 noundef %58, ptr noundef %59) #13
          to label %101 unwind label %60

60:                                               ; preds = %51
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %53, ptr noundef %52) #12
  br label %103

62:                                               ; preds = %40
  %63 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %84

71:                                               ; preds = %68, %65, %62
  %72 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %73 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %72) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %77 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %76) #13
  %78 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %79 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %78) #13
  %80 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %81 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %77, i1 noundef zeroext true, ptr noundef %79, ptr noundef null, i32 noundef %80, ptr noundef %81) #13
          to label %101 unwind label %82

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %77, ptr noundef %76) #12
  br label %103

84:                                               ; preds = %68
  %85 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %86 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %85, ptr noundef nonnull @.str.1, i32 noundef 414, i32 noundef 22, ptr noundef %86) #13
          to label %87 unwind label %88

87:                                               ; preds = %84
  tail call void @__cxa_throw(ptr nonnull %85, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

88:                                               ; preds = %84
  %89 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %85) #14
  br label %103

90:                                               ; preds = %47, %43, %71
  %91 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  %92 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %91) #13
  %93 = load ptr, ptr %0, align 8, !tbaa !54
  %94 = getelementptr inbounds ptr, ptr %93, i64 11
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
          to label %97 unwind label %99

97:                                               ; preds = %90
  %98 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  invoke void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %92, i1 noundef zeroext true, ptr noundef %96, ptr noundef %98) #13
          to label %101 unwind label %99

99:                                               ; preds = %97, %90
  %100 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %92, ptr noundef %91) #12
  br label %103

101:                                              ; preds = %97, %75, %51, %30
  %102 = phi ptr [ %32, %30 ], [ %53, %51 ], [ %77, %75 ], [ %92, %97 ]
  ret ptr %102

103:                                              ; preds = %99, %88, %82, %60, %35, %25, %11
  %104 = phi { ptr, i32 } [ %26, %25 ], [ %36, %35 ], [ %61, %60 ], [ %100, %99 ], [ %83, %82 ], [ %89, %88 ], [ %12, %11 ]
  resume { ptr, i32 } %104
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !159 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !160
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !163
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %7 = zext i1 %1 to i8
  tail call void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %8 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %4, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  store i8 %7, ptr %10, align 4, !tbaa !165
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  store ptr %5, ptr %11, align 8, !tbaa !166
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13, !prof !167

13:                                               ; preds = %6
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %2) #13
          to label %26 unwind label %18

16:                                               ; preds = %34, %29, %20, %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %43

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %5) #12
  br label %43

20:                                               ; preds = %6
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %22 unwind label %16

22:                                               ; preds = %20
  %23 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !66
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %23, ptr noundef %5) #13
          to label %26 unwind label %24

24:                                               ; preds = %22
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %5) #12
  br label %43

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %14, %15 ], [ %21, %22 ]
  store ptr %27, ptr %8, align 8, !tbaa !57
  %28 = icmp eq ptr %3, null
  br i1 %28, label %34, label %29, !prof !168

29:                                               ; preds = %26
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %31 unwind label %16

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(56) %3) #13
          to label %40 unwind label %32

32:                                               ; preds = %31
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %5) #12
  br label %43

34:                                               ; preds = %26
  %35 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %36 unwind label %16

36:                                               ; preds = %34
  %37 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !66
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %37, ptr noundef %5) #13
          to label %40 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %5) #12
  br label %43

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %30, %31 ], [ %35, %36 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !64
  ret void

43:                                               ; preds = %38, %32, %24, %18, %16
  %44 = phi { ptr, i32 } [ %33, %32 ], [ %17, %16 ], [ %39, %38 ], [ %19, %18 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !173 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !174
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !92
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !87
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !90
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #12
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !87
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !91
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !89
  %21 = load i32, ptr %12, align 8, !tbaa !91
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !89
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !93
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !175
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !133
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DTDElementDecl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %0) #13
  invoke void @_ZN11xercesc_2_714DTDElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %0) #13
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
declare void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = load i16, ptr %0, align 8, !tbaa !176
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9DTDAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !65 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #13
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9DTDAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_13DTDAttDefListE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !65 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_713DTDAttDefList18classDTDAttDefListE) #13
  store ptr %3, ptr %1, align 8, !tbaa !93
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !65 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE) #13
  store ptr %3, ptr %1, align 8, !tbaa !93
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!52}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !{ptr @_ZN11xercesc_2_718SimpleContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, i64 12}
!37 = !{ptr @_ZNK11xercesc_2_714DTDElementDecl10hasAttDefsEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE7isEmptyEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, i64 47}
!39 = !{ptr @_ZN11xercesc_2_714DTDElementDeclC2EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti, i64 47}
!40 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEED2Ev, i64 29}
!41 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 29}
!42 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv, i64 47}
!43 = !{ptr @_ZN11xercesc_2_714DTDElementDeclD2Ev, ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, i64 47}
!44 = !{ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEE3getEPKv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!46 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!47 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, i64 12}
!48 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!49 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 14}
!50 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 10}
!51 = !{ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 24}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 12}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!58, !60, i64 8}
!58 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !59, i64 0, !60, i64 8, !60, i64 16, !62, i64 24, !63, i64 28, !60, i64 32}
!59 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !56, i64 0}
!62 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !61, i64 0}
!63 = !{!"bool", !61, i64 0}
!64 = !{!58, !60, i64 16}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !61, i64 0}
!68 = !{!69, !73, i64 36}
!69 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !70, i64 0, !73, i64 36, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72}
!70 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !71, i64 0, !60, i64 8, !60, i64 16, !72, i64 24, !67, i64 28, !63, i64 32}
!71 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!72 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !61, i64 0}
!73 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !61, i64 0}
!74 = !{!69, !60, i64 40}
!75 = !{!69, !60, i64 48}
!76 = !{!69, !60, i64 56}
!77 = !{!63, !63, i64 0}
!78 = !{!"function_entry_count", i64 1490}
!79 = !{!"branch_weights", i32 1491, i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!69, !60, i64 64}
!83 = !{!69, !60, i64 72}
!84 = !{!"function_entry_count", i64 47}
!85 = !{!"function_entry_count", i64 128}
!86 = !{!70, !60, i64 8}
!87 = !{!88, !60, i64 0}
!88 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9DTDAttDefEEE", !60, i64 0, !63, i64 8, !60, i64 16, !67, i64 24, !67, i64 28, !67, i64 32, !60, i64 40}
!89 = !{!88, !60, i64 16}
!90 = !{!88, !60, i64 40}
!91 = !{!88, !67, i64 24}
!92 = !{!88, !67, i64 32}
!93 = !{!60, !60, i64 0}
!94 = !{!95, !60, i64 8}
!95 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9DTDAttDefEEE", !60, i64 0, !60, i64 8, !60, i64 16}
!96 = !{!88, !63, i64 8}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!95, !60, i64 0}
!100 = distinct !{!100, !81}
!101 = distinct !{!101, !81}
!102 = !{!103, !67, i64 56}
!103 = !{!"_ZTSN11xercesc_2_79DTDAttDefE", !104, i64 0, !67, i64 56, !60, i64 64}
!104 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !71, i64 0, !105, i64 8, !106, i64 12, !107, i64 16, !63, i64 20, !63, i64 21, !67, i64 24, !60, i64 32, !60, i64 40, !60, i64 48}
!105 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !61, i64 0}
!106 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !61, i64 0}
!107 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !61, i64 0}
!108 = !{!70, !67, i64 28}
!109 = !{!95, !60, i64 16}
!110 = !{!111, !67, i64 44}
!111 = !{!"_ZTSN11xercesc_2_713DTDAttDefListE", !112, i64 0, !60, i64 16, !60, i64 24, !60, i64 32, !67, i64 40, !67, i64 44}
!112 = !{!"_ZTSN11xercesc_2_713XMLAttDefListE", !71, i64 0, !60, i64 8}
!113 = !{!111, !67, i64 40}
!114 = !{!111, !60, i64 32}
!115 = distinct !{!115, !81}
!116 = distinct !{!116, !81}
!117 = distinct !{!117, !81}
!118 = !{!119, !60, i64 0}
!119 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_9DTDAttDefEEEEE", !60, i64 0, !60, i64 8}
!120 = !{!119, !60, i64 8}
!121 = !{!"function_entry_count", i64 5836268}
!122 = !{!"function_entry_count", i64 120}
!123 = !{!112, !60, i64 8}
!124 = !{!125, !63, i64 8}
!125 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9DTDAttDefEEE", !126, i64 0, !63, i64 8, !60, i64 16, !67, i64 24, !60, i64 32, !60, i64 40}
!126 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_9DTDAttDefEEE"}
!127 = !{!125, !60, i64 16}
!128 = !{!125, !67, i64 24}
!129 = !{!125, !60, i64 32}
!130 = !{!125, !60, i64 40}
!131 = !{!104, !63, i64 20}
!132 = distinct !{!132, !81}
!133 = !{!134, !60, i64 40}
!134 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !135, i64 8, !60, i64 16, !67, i64 24, !60, i64 32, !60, i64 40}
!135 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !61, i64 0}
!136 = !{!"function_entry_count", i64 872}
!137 = !{!"branch_weights", i32 873, i32 1}
!138 = !{!"function_entry_count", i64 558789}
!139 = !{!"branch_weights", i32 158605, i32 400186}
!140 = !{!"function_entry_count", i64 496321}
!141 = !{!142, !67, i64 0}
!142 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !67, i64 0, !67, i64 4, !67, i64 8, !63, i64 12, !60, i64 16, !60, i64 24, !60, i64 32}
!143 = !{!142, !67, i64 4}
!144 = !{!142, !67, i64 8}
!145 = !{!142, !63, i64 12}
!146 = !{!142, !60, i64 16}
!147 = !{!142, !60, i64 32}
!148 = !{!149, !149, i64 0}
!149 = !{!"short", !61, i64 0}
!150 = !{!"function_entry_count", i64 10769804}
!151 = !{!"function_entry_count", i64 2453164456}
!152 = !{!"branch_weights", i32 1, i32 -1841802839}
!153 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!154 = !{!"branch_weights", i32 408669070, i32 -279908792}
!155 = distinct !{!155, !81}
!156 = !{!"function_entry_count", i64 110}
!157 = !{!158, !60, i64 16}
!158 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !71, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !62, i64 48, !63, i64 52, !63, i64 53, !67, i64 56, !67, i64 60}
!159 = !{!"function_entry_count", i64 6553673}
!160 = !{!161, !67, i64 20}
!161 = !{!"_ZTSN11xercesc_2_75QNameE", !71, i64 0, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48}
!162 = !{!"function_entry_count", i64 353}
!163 = !{!158, !62, i64 48}
!164 = !{!58, !62, i64 24}
!165 = !{!58, !63, i64 28}
!166 = !{!58, !60, i64 32}
!167 = !{!"branch_weights", i32 1, i32 13}
!168 = !{!"branch_weights", i32 10, i32 4}
!169 = !{!"function_entry_count", i64 180}
!170 = !{!158, !60, i64 32}
!171 = !{!"function_entry_count", i64 155}
!172 = !{!158, !60, i64 40}
!173 = !{!"function_entry_count", i64 24}
!174 = !{!88, !67, i64 28}
!175 = distinct !{!175, !81}
!176 = !{!177, !149, i64 0}
!177 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !149, i64 0, !149, i64 2, !60, i64 8, !60, i64 16, !60, i64 24, !178, i64 32, !178, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !67, i64 96}
!178 = !{!"long", !61, i64 0}
