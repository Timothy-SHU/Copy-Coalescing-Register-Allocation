; ModuleID = 'ComplexTypeInfo.cpp'
source_filename = "ComplexTypeInfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SimpleContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDefList" = type { %"class.xercesc_2_7::XMLAttDefList", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLAttDefList" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_718SimpleContentModelD0Ev = comdat any

$_ZN11xercesc_2_718SimpleContentModelD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ContentSpecNode7setTypeENS0_9NodeTypesE = comdat any

$_ZN11xercesc_2_715ContentSpecNode12setMinOccursEi = comdat any

$_ZN11xercesc_2_715ContentSpecNode12setMaxOccursEi = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo22setBaseComplexTypeInfoEPS0_ = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo12setDerivedByEi = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo14setContentTypeEi = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo14setAttWildCardEPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_712SchemaAttDef9setElemIdEj = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12getElementIdEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_ = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15setContentModelEPNS_15XMLContentModelE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv = comdat any

$_ZN11xercesc_2_79XMLAttDef11setProvidedEb = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb = comdat any

$_ZN11xercesc_2_715ContentSpecNode8setFirstEPS0_ = comdat any

$_ZN11xercesc_2_715ContentSpecNode14setAdoptSecondEb = comdat any

$_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_16SchemaAttDefListE = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715XMLContentModelC2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD0Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_ = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTVN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_718SimpleContentModelE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718SimpleContentModelE, ptr @_ZN11xercesc_2_718SimpleContentModelD2Ev, ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj] }, comdat, align 8
@_ZN11xercesc_2_7L14anyTypeCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L13sAnyTypeMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_715ComplexTypeInfoE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ComplexTypeInfoE, ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_715ComplexTypeInfoD0Ev, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14isSerializableEv, ptr @_ZN11xercesc_2_715ComplexTypeInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo12getProtoTypeEv] }, align 8
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni11fgAnyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgEmptyStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [20 x i8] c"ComplexTypeInfo.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ComplexTypeInfo\00", align 1
@_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_715ComplexTypeInfo12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718SimpleContentModelE\00", comdat, align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_718SimpleContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718SimpleContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, comdat, align 8
@_ZTSN11xercesc_2_715ComplexTypeInfoE = dso_local constant [33 x i8] c"N11xercesc_2_715ComplexTypeInfoE\00", align 1
@_ZTIN11xercesc_2_715ComplexTypeInfoE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ComplexTypeInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLContentModelE, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_716SchemaAttDefList21classSchemaAttDefListE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev, ptr @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE5ResetEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local constant [67 x i8] c"N11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE }, comdat, align 8
@_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
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
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ComplexTypeInfo.cpp, ptr null }]

@_ZN11xercesc_2_715ComplexTypeInfoC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715ComplexTypeInfoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 !prof !126 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !130, !range !138, !noundef !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !140

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !142, !range !138, !noundef !139
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !143

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !127
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #13
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !127
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  br label %33

33:                                               ; preds = %29, %25
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !146 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !127
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !127
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L14anyTypeCleanupE) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo13reinitAnyTypeEv() #1 align 2 !prof !151 {
  %1 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !127
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  %8 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %7
  store ptr null, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  store i1 false, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv() local_unnamed_addr #6 align 2 !prof !151 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef 1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = alloca [128 x i16], align 16
  %5 = load i1, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !152
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %10) #16
  %11 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #16
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #16
          to label %17 unwind label %20

17:                                               ; preds = %15
  store ptr %14, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  br label %22

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %24

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %14) #13
  br label %24

22:                                               ; preds = %17, %9
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %23 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !152
  br label %26

24:                                               ; preds = %20, %18
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %90

26:                                               ; preds = %22, %6
  %27 = phi ptr [ %23, %22 ], [ %7, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %27) #16
  %28 = load i1, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  br i1 %28, label %87, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #14
  %30 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #16
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #16
          to label %31 unwind label %65

31:                                               ; preds = %29
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %32
  store i16 44, ptr %33, align 2, !tbaa !153
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %34, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE) #16
          to label %35 unwind label %65

35:                                               ; preds = %31
  %36 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 176) #16
          to label %37 unwind label %65

37:                                               ; preds = %35
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(176) %36, ptr noundef %38) #16
          to label %39 unwind label %67

39:                                               ; preds = %37
  store ptr %36, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  %40 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 64) #16
          to label %41 unwind label %69

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 56) #16
          to label %43 unwind label %71

43:                                               ; preds = %41
  %44 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %42, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %0, ptr noundef %44) #16
          to label %45 unwind label %73

45:                                               ; preds = %43
  %46 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %40, ptr noundef nonnull %42, i1 noundef zeroext false, ptr noundef %46) #16
          to label %47 unwind label %71

47:                                               ; preds = %45
  call void @_ZN11xercesc_2_715ContentSpecNode7setTypeENS0_9NodeTypesE(ptr noundef nonnull align 8 dereferenceable(64) %40, i32 noundef 22) #16
  call void @_ZN11xercesc_2_715ContentSpecNode12setMinOccursEi(ptr noundef nonnull align 8 dereferenceable(64) %40, i32 noundef 0) #16
  call void @_ZN11xercesc_2_715ContentSpecNode12setMaxOccursEi(ptr noundef nonnull align 8 dereferenceable(64) %40, i32 noundef -1) #16
  %48 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 64) #16
          to label %49 unwind label %77

49:                                               ; preds = %47
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %48, i32 noundef 21, ptr noundef nonnull %40, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %50) #16
          to label %51 unwind label %79

51:                                               ; preds = %49
  %52 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 120) #16
          to label %53 unwind label %81

53:                                               ; preds = %51
  %54 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %52, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %0, i32 noundef 11, i32 noundef 6, ptr noundef %54) #16
          to label %55 unwind label %83

55:                                               ; preds = %53
  %56 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt(ptr noundef nonnull align 8 dereferenceable(176) %56, ptr noundef nonnull %4) #16
          to label %57 unwind label %81

57:                                               ; preds = %55
  %58 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  call void @_ZN11xercesc_2_715ComplexTypeInfo22setBaseComplexTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(176) %58, ptr noundef %58) #16
  %59 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  call void @_ZN11xercesc_2_715ComplexTypeInfo12setDerivedByEi(ptr noundef nonnull align 8 dereferenceable(176) %59, i32 noundef 4) #16
  %60 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  call void @_ZN11xercesc_2_715ComplexTypeInfo14setContentTypeEi(ptr noundef nonnull align 8 dereferenceable(176) %60, i32 noundef 3) #16
  %61 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(176) %61, ptr noundef nonnull %48) #16
          to label %62 unwind label %81

62:                                               ; preds = %57
  %63 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  call void @_ZN11xercesc_2_715ComplexTypeInfo14setAttWildCardEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(176) %63, ptr noundef nonnull %52) #16
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L14anyTypeCleanupE, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo13reinitAnyTypeEv) #16
          to label %64 unwind label %81

64:                                               ; preds = %62
  store i1 true, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  br label %87

65:                                               ; preds = %35, %31, %29
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %85

67:                                               ; preds = %37
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %36) #13
  br label %85

69:                                               ; preds = %39
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %85

71:                                               ; preds = %45, %41
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %75

73:                                               ; preds = %43
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %42) #13
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %72, %71 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %40) #13
  br label %85

77:                                               ; preds = %47
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %49
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %48) #13
  br label %85

81:                                               ; preds = %62, %57, %55, %51
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %53
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %52) #13
  br label %85

85:                                               ; preds = %69, %75, %81, %83, %79, %77, %67, %65
  %86 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ], [ %76, %75 ], [ %70, %69 ], [ %80, %79 ], [ %78, %77 ], [ %82, %81 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %90

87:                                               ; preds = %64, %26
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %88

88:                                               ; preds = %87, %1
  %89 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !152
  ret ptr %89

90:                                               ; preds = %85, %24
  %91 = phi { ptr, i32 } [ %86, %85 ], [ %25, %24 ]
  resume { ptr, i32 } %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !155 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !156

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !153
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !157

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !153
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !158, !llvm.loop !159

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store i8 1, ptr %7, align 4, !tbaa !130
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %8, align 1, !tbaa !142
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %9, align 8, !tbaa !162
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %10, align 4, !tbaa !163
  br i1 %2, label %11, label %20

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #16
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %1) #16
          to label %20 unwind label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %23

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %3) #13
  br label %23

20:                                               ; preds = %4, %15
  %21 = phi ptr [ %14, %15 ], [ %1, %4 ]
  store ptr %21, ptr %6, align 8, !tbaa !145
  br label %22

22:                                               ; preds = %20, %11
  ret void

23:                                               ; preds = %18, %16
  %24 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode7setTypeENS0_9NodeTypesE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode12setMinOccursEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode12setMaxOccursEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 4, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %8 = zext i1 %4 to i8
  %9 = zext i1 %5 to i8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !161
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %2, ptr %12, align 8, !tbaa !141
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  store ptr %3, ptr %13, align 8, !tbaa !144
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  store i32 %1, ptr %14, align 8, !tbaa !164
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 %8, ptr %15, align 4, !tbaa !130
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 %9, ptr %16, align 1, !tbaa !142
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %17, align 8, !tbaa !162
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %18, align 4, !tbaa !163
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = load ptr, ptr %4, align 8, !tbaa !127
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #16
  %10 = load ptr, ptr %3, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = load ptr, ptr %10, align 8, !tbaa !127
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #16
  %16 = load ptr, ptr %3, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !173
  %19 = load ptr, ptr %16, align 8, !tbaa !127
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #16
  %22 = icmp eq ptr %1, null
  br i1 %22, label %50, label %23, !prof !174

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !169
  %25 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %24) #16
  store ptr %25, ptr %5, align 8, !tbaa !171
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %25, i16 noundef zeroext 44) #16
  %27 = load ptr, ptr %5, align 8, !tbaa !171
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %27) #16
  %29 = load ptr, ptr %3, align 8, !tbaa !169
  %30 = sub i32 %28, %26
  %31 = add i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 1
  %34 = load ptr, ptr %29, align 8, !tbaa !127
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %33) #16
  store ptr %37, ptr %11, align 8, !tbaa !172
  %38 = load ptr, ptr %5, align 8, !tbaa !171
  %39 = add nsw i32 %26, 1
  %40 = load ptr, ptr %3, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %28, ptr noundef %40) #16
  %41 = load ptr, ptr %3, align 8, !tbaa !169
  %42 = sext i32 %39 to i64
  %43 = shl nsw i64 %42, 1
  %44 = load ptr, ptr %41, align 8, !tbaa !127
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %43) #16
  store ptr %47, ptr %17, align 8, !tbaa !173
  %48 = load ptr, ptr %5, align 8, !tbaa !171
  %49 = load ptr, ptr %3, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %47, ptr noundef %48, i32 noundef 0, i32 noundef %26, ptr noundef %49) #16
  br label %51

50:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %51

51:                                               ; preds = %50, %23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo22setBaseComplexTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  store ptr %1, ptr %3, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo12setDerivedByEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo14setContentTypeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 2, !range !138
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %14, label %10, !prof !180

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !127
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  br label %14

14:                                               ; preds = %10, %2
  store ptr %1, ptr %3, align 8, !tbaa !179
  tail call void @_ZN11xercesc_2_715ComplexTypeInfo15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef null) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo14setAttWildCardEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !127
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(120) %4) #13
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ComplexTypeInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %3, align 8, !tbaa !182
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  store i8 0, ptr %4, align 4, !tbaa !183
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -2>, ptr %5, align 8, !tbaa !184
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  store i32 0, ptr %6, align 8, !tbaa !178
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %8 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !184
  store i32 %8, ptr %7, align 4, !tbaa !185
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  store i32 0, ptr %9, align 8, !tbaa !186
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  store i32 16, ptr %10, align 4, !tbaa !187
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %11, i8 0, i64 120, i1 false)
  store ptr %1, ptr %13, align 8, !tbaa !169
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #16
          to label %15 unwind label %25

15:                                               ; preds = %2
  %16 = load ptr, ptr %13, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 29, i1 noundef zeroext true, ptr noundef %16) #16
          to label %17 unwind label %27

17:                                               ; preds = %15
  store ptr %14, ptr %12, align 8, !tbaa !188
  %18 = load ptr, ptr %13, align 8, !tbaa !169
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %18) #16
          to label %20 unwind label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr %12, align 8, !tbaa !188
  %22 = load ptr, ptr %13, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %21, ptr noundef %22) #16
          to label %23 unwind label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  store ptr %19, ptr %24, align 8, !tbaa !189
  ret void

25:                                               ; preds = %17, %2
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %31

27:                                               ; preds = %15
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %1) #13
  br label %31

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #13
  br label %31

31:                                               ; preds = %29, %27, %25
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %26, %25 ], [ %28, %27 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !190 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !191 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %3, ptr %0, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !194
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !195
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !196
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !197
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !198
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !192
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11) #16
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !198
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %15
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ComplexTypeInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = load ptr, ptr %3, align 8, !tbaa !127
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %95

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = load ptr, ptr %10, align 8, !tbaa !127
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #16
          to label %16 unwind label %95

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !169
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = load ptr, ptr %17, align 8, !tbaa !127
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #16
          to label %23 unwind label %95

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 2, !tbaa !199, !range !138, !noundef !139
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !174

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !179
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !127
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(64) %29) #13
  br label %35

35:                                               ; preds = %27, %31, %23
  %36 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !127
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(120) %37) #13
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %45 = load ptr, ptr %44, align 8, !tbaa !188
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %45) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #13
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %50 = load ptr, ptr %49, align 8, !tbaa !189
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !127
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(48) %50) #13
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %58 = load ptr, ptr %57, align 8, !tbaa !200
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !127
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(40) %58) #13
  br label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 28
  %66 = load ptr, ptr %65, align 8, !tbaa !201
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %66, align 8, !tbaa !127
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(40) %66) #13
  br label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %74 = load ptr, ptr %73, align 8, !tbaa !202
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !127
  %78 = getelementptr inbounds ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %74) #13
  br label %80

80:                                               ; preds = %76, %72
  %81 = load ptr, ptr %2, align 8, !tbaa !169
  %82 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %83 = load ptr, ptr %82, align 8, !tbaa !203
  %84 = load ptr, ptr %81, align 8, !tbaa !127
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %83) #16
          to label %87 unwind label %95

87:                                               ; preds = %80
  %88 = load ptr, ptr %2, align 8, !tbaa !169
  %89 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %90 = load ptr, ptr %89, align 8, !tbaa !204
  %91 = load ptr, ptr %88, align 8, !tbaa !127
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %90) #16
          to label %94 unwind label %95

94:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void

95:                                               ; preds = %87, %80, %16, %9, %1
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  tail call void @__clang_call_terminate(ptr %97) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !192
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = load ptr, ptr %3, align 8, !tbaa !127
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !198
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !127
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
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
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_715ComplexTypeInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !166 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getElementIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #16
  tail call void @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #16
  %7 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #16
  %8 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #16
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %7, i32 noundef %9, ptr noundef nonnull %1) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  tail call void @_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getElementIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !185
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 !prof !166 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !196
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !197
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !214

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !214

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !194, !range !138, !noundef !139
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !215
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !127
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(120) %21) #13
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !215
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !217
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !218
  br label %48

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !192
  %32 = load ptr, ptr %31, align 8, !tbaa !127
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32) #16
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !195
  %38 = load i32, ptr %5, align 4, !tbaa !184
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !152
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %35, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %41) #16
  %42 = load ptr, ptr %36, align 8, !tbaa !195
  %43 = load i32, ptr %5, align 4, !tbaa !184
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %35, ptr %45, align 8, !tbaa !152
  %46 = load i32, ptr %9, align 4, !tbaa !197
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !197
  br label %48

48:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !219 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !224 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !225
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !166 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !226
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !229
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8, !prof !230

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !231
  br label %32

11:                                               ; preds = %2
  %12 = shl i32 %4, 1
  store i32 %12, ptr %5, align 8, !tbaa !229
  %13 = tail call noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %14 = load i32, ptr %5, align 8, !tbaa !229
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %13, align 8, !tbaa !127
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %16) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !231
  %23 = load i32, ptr %3, align 4, !tbaa !226
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 %25, i1 false)
  %26 = tail call noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %27 = load ptr, ptr %21, align 8, !tbaa !231
  %28 = load ptr, ptr %26, align 8, !tbaa !127
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #16
  store ptr %20, ptr %21, align 8, !tbaa !231
  %31 = load i32, ptr %3, align 4, !tbaa !226
  br label %32

32:                                               ; preds = %8, %11
  %33 = phi i32 [ %4, %8 ], [ %31, %11 ]
  %34 = phi ptr [ %10, %8 ], [ %20, %11 ]
  %35 = add i32 %33, 1
  store i32 %35, ptr %3, align 4, !tbaa !226
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %1, ptr %37, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !127
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !202
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !203
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !232

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %12) #16
  store ptr null, ptr %11, align 8, !tbaa !203
  br label %20

20:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo10setLocatorEPNS_10XSDLocatorE(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !127
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #8 align 2 !prof !233 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #16
  store ptr %6, ptr %2, align 8, !tbaa !203
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo18formatContentModelEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !178
  switch i32 %4, label %13 [
    i32 1, label %5
    i32 0, label %9
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgAnyStringE, ptr noundef %7) #16
  br label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, ptr noundef %11) #16
  br label %27

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1023, ptr noundef %19) #16
  invoke void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
          to label %20 unwind label %25

20:                                               ; preds = %17
  %21 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  %22 = load ptr, ptr %18, align 8, !tbaa !169
  %23 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %22) #16
          to label %24 unwind label %25

24:                                               ; preds = %20
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  br label %27

25:                                               ; preds = %20, %17
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  resume { ptr, i32 } %26

27:                                               ; preds = %13, %24, %9, %5
  %28 = phi ptr [ %8, %5 ], [ %12, %9 ], [ %23, %24 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  %10 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %3, i32 noundef %2) #16
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i32 %5, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %16) #16
  %18 = load ptr, ptr %15, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %17, ptr noundef %4, ptr noundef %3, i32 noundef %2, i32 noundef 0, i32 noundef 4, ptr noundef %18) #16
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getElementIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #16
  tail call void @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(120) %17, i32 noundef %20) #16
  %21 = load ptr, ptr %8, align 8, !tbaa !188
  %22 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %17) #16
  %23 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %22) #16
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %23, i32 noundef %2, ptr noundef nonnull %17) #16
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  tail call void @_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull %17) #16
  br label %28

26:                                               ; preds = %14
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #13
  resume { ptr, i32 } %27

28:                                               ; preds = %7, %19
  %29 = phi i8 [ 1, %19 ], [ 0, %7 ]
  %30 = phi ptr [ %17, %19 ], [ %10, %7 ]
  store i8 %29, ptr %6, align 1, !tbaa !182
  ret ptr %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !234 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !235

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !215
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6) #16
  %7 = call noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  br i1 %7, label %8, label %14

8:                                                ; preds = %1, %10
  %9 = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
          to label %10 unwind label %12

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79XMLAttDef11setProvidedEb(ptr noundef nonnull align 8 dereferenceable(56) %9, i1 noundef zeroext false) #16
  %11 = call noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  br i1 %11, label %8, label %14, !llvm.loop !236

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %10, %1
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !237
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !240
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !241
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !242
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !243
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !244
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %21, !prof !174

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %15 = load ptr, ptr %10, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.2, i32 noundef 522, i32 noundef 15, ptr noundef %15) #16
          to label %16 unwind label %17

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %25 unwind label %19

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #14
  br label %23

19:                                               ; preds = %21, %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
          to label %22 unwind label %19

22:                                               ; preds = %21
  ret void

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !242
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 559, i32 noundef 30, ptr noundef %9) #16
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !215
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef11setProvidedEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 !prof !168 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !237, !range !138, !noundef !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !232

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 !prof !151 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext true) #16
  store ptr %14, ptr %10, align 8, !tbaa !202
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !204
  %19 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !172
  %21 = load ptr, ptr %14, align 8, !tbaa !127
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %18, ptr noundef %20) #16
  br label %24

24:                                               ; preds = %13, %16, %9, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #16
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
          to label %8 unwind label %20

8:                                                ; preds = %2
  br i1 %1, label %9, label %22, !prof !247

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !187
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = load ptr, ptr %10, align 8, !tbaa !127
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %14) #16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  store ptr %18, ptr %19, align 8, !tbaa !204
  br label %22

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %21

22:                                               ; preds = %9, %8
  %23 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %5, i1 noundef zeroext %1) #16
  %24 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %23) #16
  %25 = icmp eq ptr %23, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %23, align 8, !tbaa !127
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(64) %23) #13
  br label %30

30:                                               ; preds = %26, %22
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715ComplexTypeInfo17faultInAttDefListEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #16
  %5 = load ptr, ptr %2, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 29, i1 noundef zeroext true, ptr noundef %5) #16
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  store ptr %4, ptr %7, align 8, !tbaa !188
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !248 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !249

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !127
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !250 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i32 0, ptr %0, align 8, !tbaa !251
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !253
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !254
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !255
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !256
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !127
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #16
  store ptr %16, ptr %9, align 8, !tbaa !257
  store i16 0, ptr %16, align 2, !tbaa !153
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !258 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  %4 = load i32, ptr %0, align 8, !tbaa !251
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !153
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !250 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !257
  %6 = load ptr, ptr %3, align 8, !tbaa !127
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !259 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %64, label %5, !prof !260

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  br i1 %2, label %7, label %29, !prof !260

7:                                                ; preds = %5
  %8 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !186
  %13 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !187
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_715ComplexTypeInfo23resizeContentSpecOrgURIEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #16
  br label %17

17:                                               ; preds = %16, %10
  %18 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %19 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %18) #16
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %21 = load ptr, ptr %20, align 8, !tbaa !204
  %22 = load i32, ptr %11, align 8, !tbaa !186
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 %19, ptr %24, align 4, !tbaa !184
  %25 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %26 = load i32, ptr %11, align 8, !tbaa !186
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %25, i32 noundef %26) #16
  %27 = load i32, ptr %11, align 8, !tbaa !186
  %28 = add i32 %27, 1
  store i32 %28, ptr %11, align 8, !tbaa !186
  br label %29

29:                                               ; preds = %7, %17, %5
  %30 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %31 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %32 = and i32 %6, 14
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %39, label %34, !prof !261

34:                                               ; preds = %29
  %35 = and i32 %6, 15
  %36 = icmp eq i32 %35, 8
  %37 = icmp eq i32 %6, 0
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %41, !prof !262

39:                                               ; preds = %29, %34
  %40 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %31) #16
  br label %64

41:                                               ; preds = %34
  %42 = icmp eq i32 %6, 9
  %43 = icmp eq i32 %32, 4
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %47 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %46, i1 noundef zeroext %2) #16
  %48 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55, !prof !263

50:                                               ; preds = %45
  %51 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %47, i32 noundef %30, i32 noundef %31) #16
  tail call void @_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false) #16
  %52 = load ptr, ptr %1, align 8, !tbaa !127
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  br label %64

55:                                               ; preds = %45
  %56 = icmp eq ptr %47, %46
  br i1 %56, label %58, label %57, !prof !264

57:                                               ; preds = %55
  tail call void @_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false) #16
  tail call void @_ZN11xercesc_2_715ContentSpecNode8setFirstEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %47) #16
  tail call void @_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true) #16
  br label %58

58:                                               ; preds = %57, %55
  %59 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %48, i1 noundef zeroext %2) #16
  %60 = icmp eq ptr %59, %48
  br i1 %60, label %62, label %61, !prof !265

61:                                               ; preds = %58
  tail call void @_ZN11xercesc_2_715ContentSpecNode14setAdoptSecondEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false) #16
  tail call void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %59) #16
  tail call void @_ZN11xercesc_2_715ContentSpecNode14setAdoptSecondEb(ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true) #16
  br label %62

62:                                               ; preds = %61, %58
  %63 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %31) #16
  br label %64

64:                                               ; preds = %50, %62, %41, %39, %3
  %65 = phi ptr [ null, %3 ], [ %40, %39 ], [ %1, %41 ], [ %63, %62 ], [ %51, %50 ]
  ret ptr %65
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !178
  switch i32 %4, label %13 [
    i32 5, label %23
    i32 2, label %5
    i32 3, label %20
    i32 4, label %12
  ], !prof !266

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i1 noundef zeroext false, ptr noundef %1, i1 noundef zeroext false, ptr noundef %9) #16
          to label %23 unwind label %10

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  br label %25

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 437, i32 noundef 17, ptr noundef %16) #16
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #14
  br label %25

20:                                               ; preds = %2, %12
  %21 = phi i1 [ false, %12 ], [ true, %2 ]
  %22 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %21) #16
  br label %23

23:                                               ; preds = %20, %2, %5
  %24 = phi ptr [ null, %2 ], [ %8, %5 ], [ %22, %20 ]
  ret ptr %24

25:                                               ; preds = %18, %10
  %26 = phi { ptr, i32 } [ %11, %10 ], [ %19, %18 ]
  resume { ptr, i32 } %26
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %12, !prof !247

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 22, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  br label %137

12:                                               ; preds = %3
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !267

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %18 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %17) #16
  %19 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !184
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %23 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 458, i32 noundef 18, ptr noundef %24) #16
          to label %25 unwind label %26

25:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #14
  br label %137

28:                                               ; preds = %16, %12
  %29 = and i32 %13, 15
  %30 = add nsw i32 %29, -6
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %128, label %32, !prof !268

32:                                               ; preds = %28
  br i1 %2, label %33, label %53, !prof !269

33:                                               ; preds = %32
  switch i32 %13, label %128 [
    i32 9, label %34
    i32 1, label %41
  ], !prof !270

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  %37 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %36) #16
  %38 = load ptr, ptr %35, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %37, ptr noundef nonnull %1, i1 noundef zeroext true, ptr noundef %38) #16
          to label %135 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %37, ptr noundef %36) #13
  br label %137

41:                                               ; preds = %33
  %42 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %43 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %42) #16
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %128

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !169
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %47) #16
  %49 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %50 = load ptr, ptr %46, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %48, ptr noundef %49, i1 noundef zeroext true, ptr noundef %50) #16
          to label %135 unwind label %51

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #13
  br label %137

53:                                               ; preds = %32
  %54 = icmp eq i32 %13, 0
  br i1 %54, label %55, label %63, !prof !271

55:                                               ; preds = %53
  %56 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %57 = load ptr, ptr %56, align 8, !tbaa !169
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %57) #16
  %59 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %60 = load ptr, ptr %56, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %58, i1 noundef zeroext false, ptr noundef %59, ptr noundef null, i32 noundef 0, ptr noundef %60) #16
          to label %135 unwind label %61

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #13
  br label %137

63:                                               ; preds = %53
  %64 = and i32 %13, 14
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %88, !prof !272

66:                                               ; preds = %63
  %67 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %68 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %67) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %128, !prof !273

70:                                               ; preds = %66
  %71 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %128, label %73, !prof !274

73:                                               ; preds = %70
  %74 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %75 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %74) #16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %128, !prof !275

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %79 = load ptr, ptr %78, align 8, !tbaa !169
  %80 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %79) #16
  %81 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %82 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %81) #16
  %83 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %84 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %83) #16
  %85 = load ptr, ptr %78, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %80, i1 noundef zeroext false, ptr noundef %82, ptr noundef %84, i32 noundef %13, ptr noundef %85) #16
          to label %135 unwind label %86

86:                                               ; preds = %77
  %87 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #13
  br label %137

88:                                               ; preds = %63
  switch i32 %13, label %121 [
    i32 3, label %89
    i32 2, label %89
    i32 1, label %89
    i32 9, label %114
  ], !prof !276

89:                                               ; preds = %88, %88, %88
  %90 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %91 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %90) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102, !prof !277

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %95 = load ptr, ptr %94, align 8, !tbaa !169
  %96 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %95) #16
  %97 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %98 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %97) #16
  %99 = load ptr, ptr %94, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %96, i1 noundef zeroext false, ptr noundef %98, ptr noundef null, i32 noundef %13, ptr noundef %99) #16
          to label %135 unwind label %100

100:                                              ; preds = %93
  %101 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %96, ptr noundef %95) #13
  br label %137

102:                                              ; preds = %89
  %103 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %104 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %103) #16
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %108 = load ptr, ptr %107, align 8, !tbaa !169
  %109 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %108) #16
  %110 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %111 = load ptr, ptr %107, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %109, ptr noundef %110, i1 noundef zeroext false, ptr noundef %111) #16
          to label %135 unwind label %112

112:                                              ; preds = %106
  %113 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %109, ptr noundef %108) #13
  br label %137

114:                                              ; preds = %88
  %115 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %116 = load ptr, ptr %115, align 8, !tbaa !169
  %117 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %116) #16
  %118 = load ptr, ptr %115, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %117, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %118) #16
          to label %135 unwind label %119

119:                                              ; preds = %114
  %120 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %117, ptr noundef %116) #13
  br label %137

121:                                              ; preds = %88
  %122 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %123 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %124 = load ptr, ptr %123, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %122, ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 22, ptr noundef %124) #16
          to label %125 unwind label %126

125:                                              ; preds = %121
  tail call void @__cxa_throw(ptr nonnull %122, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

126:                                              ; preds = %121
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %122) #14
  br label %137

128:                                              ; preds = %28, %33, %41, %73, %70, %66, %102
  %129 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %130 = load ptr, ptr %129, align 8, !tbaa !169
  %131 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %130) #16
  %132 = load ptr, ptr %129, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %131, i1 noundef zeroext false, ptr noundef nonnull %1, i1 noundef zeroext %2, ptr noundef %132) #16
          to label %135 unwind label %133

133:                                              ; preds = %128
  %134 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %131, ptr noundef %130) #13
  br label %137

135:                                              ; preds = %128, %114, %106, %93, %77, %55, %45, %34
  %136 = phi ptr [ %37, %34 ], [ %48, %45 ], [ %58, %55 ], [ %80, %77 ], [ %96, %93 ], [ %109, %106 ], [ %117, %114 ], [ %131, %128 ]
  ret ptr %136

137:                                              ; preds = %26, %39, %51, %61, %86, %100, %112, %119, %126, %133, %10
  %138 = phi { ptr, i32 } [ %11, %10 ], [ %27, %26 ], [ %134, %133 ], [ %40, %39 ], [ %52, %51 ], [ %62, %61 ], [ %87, %86 ], [ %101, %100 ], [ %113, %112 ], [ %120, %119 ], [ %127, %126 ]
  resume { ptr, i32 } %138
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !164
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46), ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %7 = zext i1 %1 to i8
  tail call void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %8 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %4, ptr %9, align 8, !tbaa !281
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  store i8 %7, ptr %10, align 4, !tbaa !282
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  store ptr %5, ptr %11, align 8, !tbaa !283
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13, !prof !284

13:                                               ; preds = %6
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #16
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %2) #16
          to label %26 unwind label %18

16:                                               ; preds = %34, %29, %20, %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %43

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %5) #13
  br label %43

20:                                               ; preds = %6
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #16
          to label %22 unwind label %16

22:                                               ; preds = %20
  %23 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !184
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %23, ptr noundef %5) #16
          to label %26 unwind label %24

24:                                               ; preds = %22
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %5) #13
  br label %43

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %14, %15 ], [ %21, %22 ]
  store ptr %27, ptr %8, align 8, !tbaa !147
  %28 = icmp eq ptr %3, null
  br i1 %28, label %34, label %29, !prof !285

29:                                               ; preds = %26
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #16
          to label %31 unwind label %16

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(56) %3) #16
          to label %40 unwind label %32

32:                                               ; preds = %31
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %5) #13
  br label %43

34:                                               ; preds = %26
  %35 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #16
          to label %36 unwind label %16

36:                                               ; preds = %34
  %37 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !184
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %37, ptr noundef %5) #16
          to label %40 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %5) #13
  br label %43

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %30, %31 ], [ %35, %36 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !150
  ret void

43:                                               ; preds = %38, %32, %24, %18, %16
  %44 = phi { ptr, i32 } [ %33, %32 ], [ %17, %16 ], [ %39, %38 ], [ %19, %18 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo23resizeContentSpecOrgURIEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !187
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !127
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #16
  %13 = load i32, ptr %2, align 4, !tbaa !187
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !204
  br label %32

18:                                               ; preds = %32
  %19 = trunc i64 %37 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = getelementptr i8, ptr %12, i64 %25
  %27 = xor i32 %21, -1
  %28 = add i32 %4, %27
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = add nuw nsw i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !184
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !184
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !184
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 4, !tbaa !187
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !287

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !169
  %43 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !204
  %45 = load ptr, ptr %42, align 8, !tbaa !127
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44) #16
  store ptr %12, ptr %43, align 8, !tbaa !204
  store i32 %4, ptr %2, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !288 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !289 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !162
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !163
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !259 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %141, label %6, !prof !260

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 1
  %8 = icmp eq i32 %3, 1
  %9 = and i1 %7, %8
  br i1 %9, label %141, label %10, !prof !291

10:                                               ; preds = %6
  %11 = icmp eq i32 %2, 0
  %12 = and i1 %11, %8
  br i1 %12, label %13, label %20, !prof !292

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %15) #16
  %17 = load ptr, ptr %14, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %16, i32 noundef 1, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %17) #16
          to label %141 unwind label %18

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #13
  br label %139

20:                                               ; preds = %10
  %21 = icmp eq i32 %3, -1
  %22 = and i1 %11, %21
  br i1 %22, label %23, label %30, !prof !293

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %25 = load ptr, ptr %24, align 8, !tbaa !169
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %25) #16
  %27 = load ptr, ptr %24, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %26, i32 noundef 2, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %27) #16
          to label %141 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #13
  br label %139

30:                                               ; preds = %20
  %31 = and i1 %7, %21
  br i1 %31, label %32, label %39, !prof !294

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %34 = load ptr, ptr %33, align 8, !tbaa !169
  %35 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %34) #16
  %36 = load ptr, ptr %33, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %35, i32 noundef 3, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %36) #16
          to label %141 unwind label %37

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %34) #13
  br label %139

39:                                               ; preds = %30
  br i1 %21, label %40, label %62

40:                                               ; preds = %39
  %41 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %42 = load ptr, ptr %41, align 8, !tbaa !169
  %43 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %42) #16
  %44 = load ptr, ptr %41, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %43, i32 noundef 3, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %44) #16
          to label %45 unwind label %49

45:                                               ; preds = %40
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %141

47:                                               ; preds = %45
  %48 = add nsw i32 %2, -2
  br label %51

49:                                               ; preds = %40
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #13
  br label %139

51:                                               ; preds = %47, %57
  %52 = phi ptr [ %55, %57 ], [ %43, %47 ]
  %53 = phi i32 [ %58, %57 ], [ 0, %47 ]
  %54 = load ptr, ptr %41, align 8, !tbaa !169
  %55 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %54) #16
  %56 = load ptr, ptr %41, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %55, i32 noundef 5, ptr noundef nonnull %1, ptr noundef nonnull %52, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %56) #16
          to label %57 unwind label %60

57:                                               ; preds = %51
  %58 = add nuw nsw i32 %53, 1
  %59 = icmp eq i32 %53, %48
  br i1 %59, label %141, label %51, !llvm.loop !295

60:                                               ; preds = %51
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %55, ptr noundef %54) #13
  br label %139

62:                                               ; preds = %39
  br i1 %11, label %63, label %85

63:                                               ; preds = %62
  %64 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %65 = load ptr, ptr %64, align 8, !tbaa !169
  %66 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %65) #16
  %67 = load ptr, ptr %64, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %66, i32 noundef 1, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %67) #16
          to label %68 unwind label %72

68:                                               ; preds = %63
  %69 = icmp sgt i32 %3, 1
  br i1 %69, label %70, label %141

70:                                               ; preds = %68
  %71 = add nsw i32 %3, -2
  br label %74

72:                                               ; preds = %63
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %66, ptr noundef %65) #13
  br label %139

74:                                               ; preds = %70, %80
  %75 = phi ptr [ %78, %80 ], [ %66, %70 ]
  %76 = phi i32 [ %81, %80 ], [ 0, %70 ]
  %77 = load ptr, ptr %64, align 8, !tbaa !169
  %78 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %77) #16
  %79 = load ptr, ptr %64, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %78, i32 noundef 5, ptr noundef nonnull %75, ptr noundef nonnull %66, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %79) #16
          to label %80 unwind label %83

80:                                               ; preds = %74
  %81 = add nuw nsw i32 %76, 1
  %82 = icmp eq i32 %76, %71
  br i1 %82, label %141, label %74, !llvm.loop !296

83:                                               ; preds = %74
  %84 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %78, ptr noundef %77) #13
  br label %139

85:                                               ; preds = %62
  %86 = icmp sgt i32 %2, 1
  br i1 %86, label %87, label %109

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %89 = load ptr, ptr %88, align 8, !tbaa !169
  %90 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %89) #16
  %91 = load ptr, ptr %88, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %90, i32 noundef 5, ptr noundef nonnull %1, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %91) #16
          to label %92 unwind label %96

92:                                               ; preds = %87
  %93 = icmp eq i32 %2, 2
  br i1 %93, label %109, label %94

94:                                               ; preds = %92
  %95 = add nsw i32 %2, -2
  br label %98

96:                                               ; preds = %87
  %97 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %90, ptr noundef %89) #13
  br label %139

98:                                               ; preds = %94, %104
  %99 = phi ptr [ %102, %104 ], [ %90, %94 ]
  %100 = phi i32 [ %105, %104 ], [ 1, %94 ]
  %101 = load ptr, ptr %88, align 8, !tbaa !169
  %102 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %101) #16
  %103 = load ptr, ptr %88, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %102, i32 noundef 5, ptr noundef nonnull %99, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %103) #16
          to label %104 unwind label %107

104:                                              ; preds = %98
  %105 = add nuw nsw i32 %100, 1
  %106 = icmp eq i32 %100, %95
  br i1 %106, label %109, label %98, !llvm.loop !297

107:                                              ; preds = %98
  %108 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %102, ptr noundef %101) #13
  br label %139

109:                                              ; preds = %104, %92, %85
  %110 = phi ptr [ %1, %85 ], [ %90, %92 ], [ %102, %104 ]
  %111 = sub nsw i32 %3, %2
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %115 = load ptr, ptr %114, align 8, !tbaa !169
  %116 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %115) #16
  %117 = load ptr, ptr %114, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %116, i32 noundef 1, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %117) #16
          to label %118 unwind label %124

118:                                              ; preds = %113
  %119 = load ptr, ptr %114, align 8, !tbaa !169
  %120 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %119) #16
  %121 = load ptr, ptr %114, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %120, i32 noundef 5, ptr noundef nonnull %110, ptr noundef nonnull %116, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %121) #16
          to label %122 unwind label %126

122:                                              ; preds = %118
  %123 = icmp eq i32 %111, 1
  br i1 %123, label %141, label %128

124:                                              ; preds = %113
  %125 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %116, ptr noundef %115) #13
  br label %139

126:                                              ; preds = %118
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %120, ptr noundef %119) #13
  br label %139

128:                                              ; preds = %122, %134
  %129 = phi i32 [ %135, %134 ], [ 1, %122 ]
  %130 = phi ptr [ %132, %134 ], [ %120, %122 ]
  %131 = load ptr, ptr %114, align 8, !tbaa !169
  %132 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %131) #16
  %133 = load ptr, ptr %114, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %132, i32 noundef 5, ptr noundef nonnull %130, ptr noundef nonnull %116, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %133) #16
          to label %134 unwind label %137

134:                                              ; preds = %128
  %135 = add nuw nsw i32 %129, 1
  %136 = icmp eq i32 %135, %111
  br i1 %136, label %141, label %128, !llvm.loop !298

137:                                              ; preds = %128
  %138 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %132, ptr noundef %131) #13
  br label %139

139:                                              ; preds = %124, %126, %137, %72, %83, %107, %96, %60, %49, %37, %28, %18
  %140 = phi { ptr, i32 } [ %19, %18 ], [ %29, %28 ], [ %38, %37 ], [ %61, %60 ], [ %50, %49 ], [ %108, %107 ], [ %97, %96 ], [ %84, %83 ], [ %73, %72 ], [ %138, %137 ], [ %127, %126 ], [ %125, %124 ]
  resume { ptr, i32 } %140

141:                                              ; preds = %134, %80, %57, %122, %68, %45, %6, %13, %23, %32, %109, %4
  %142 = phi ptr [ null, %4 ], [ %1, %6 ], [ %16, %13 ], [ %26, %23 ], [ %35, %32 ], [ %110, %109 ], [ %43, %45 ], [ %66, %68 ], [ %120, %122 ], [ %55, %57 ], [ %78, %80 ], [ %132, %134 ]
  ret ptr %142
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !299 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 %3, ptr %4, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode8setFirstEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !300 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 4, !tbaa !130, !range !138, !noundef !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6, !prof !301

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !127
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(64) %8) #13
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode14setAdoptSecondEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !302 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 1, !tbaa !142
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !303 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !142, !range !138, !noundef !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6, !prof !304

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !127
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(64) %8) #13
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 176, ptr noundef %0) #16
  invoke void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %0) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #13
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !151 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715ComplexTypeInfo12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #6 align 2 !prof !151 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %69

5:                                                ; preds = %2
  %6 = load i8, ptr %4, align 8, !tbaa !305, !range !138, !noundef !139
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %7) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 1, !tbaa !306, !range !138, !noundef !139
  %11 = icmp ne i8 %10, 0
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %11) #16
  %13 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !199, !range !138, !noundef !139
  %15 = icmp ne i8 %14, 0
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %15) #16
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !307, !range !138, !noundef !139
  %19 = icmp ne i8 %18, 0
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %19) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  %22 = load i8, ptr %21, align 4, !tbaa !183, !range !138, !noundef !139
  %23 = icmp ne i8 %22, 0
  %24 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %23) #16
  %25 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !176
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %26) #16
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !308
  %30 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %29) #16
  %31 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !309
  %33 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %32) #16
  %34 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !310
  %36 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %35) #16
  %37 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !178
  %39 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %38) #16
  %40 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %41 = load i32, ptr %40, align 4, !tbaa !185
  %42 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %41) #16
  %43 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %44, i32 noundef 0, i1 noundef zeroext false) #16
  %45 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !172
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %46, i32 noundef 0, i1 noundef zeroext false) #16
  %47 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !173
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %48, i32 noundef 0, i1 noundef zeroext false) #16
  %49 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !311
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %50) #16
  %51 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !312
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %52) #16
  %53 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !175
  %55 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %54) #16
  %56 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !179
  %58 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %57) #16
  %59 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !181
  %61 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %60) #16
  %62 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %63) #16
  %65 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %66 = load ptr, ptr %65, align 8, !tbaa !200
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %66, ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %67 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %68 = load ptr, ptr %67, align 8, !tbaa !188
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %68, ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  br label %123

69:                                               ; preds = %2
  %70 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  %71 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  %72 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %71) #16
  %73 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %74 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %73) #16
  %75 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 4
  %76 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %75) #16
  %77 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  %78 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %77) #16
  %79 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %80 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %79) #16
  %81 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  %82 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %81) #16
  %83 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 8
  %84 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %83) #16
  %85 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %86 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %85) #16
  %87 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %88 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %87) #16
  %89 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %90 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %89) #16
  %91 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %91) #16
  %92 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %92) #16
  %93 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %93) #16
  %94 = tail call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %95 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  store ptr %94, ptr %95, align 8, !tbaa !311
  %96 = tail call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %97 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  store ptr %96, ptr %97, align 8, !tbaa !312
  %98 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %99 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %98) #16
  %100 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %101 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %100) #16
  %102 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %103 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %102) #16
  %104 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %105 = load ptr, ptr %104, align 8, !tbaa !189
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %69
  %108 = load ptr, ptr %105, align 8, !tbaa !127
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(48) %105) #13
  br label %111

111:                                              ; preds = %107, %69
  %112 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_16SchemaAttDefListE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %104) #16
  %113 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17SchemaElementDeclEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %113, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %114 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %115 = load ptr, ptr %114, align 8, !tbaa !188
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %115) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %115) #13
  br label %118

118:                                              ; preds = %117, %111
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %114, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #16
  %119 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %120 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  store i32 0, ptr %120, align 4, !tbaa !187
  %121 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  store i32 0, ptr %121, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %119, i8 0, i64 24, i1 false)
  %122 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext false) #16
  br label %123

123:                                              ; preds = %118, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = load i16, ptr %0, align 8, !tbaa !313
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !151 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #16
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !151 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !151 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE) #16
  store ptr %3, ptr %1, align 8, !tbaa !152
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !151 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE) #16
  store ptr %3, ptr %1, align 8, !tbaa !152
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !151 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE) #16
  store ptr %3, ptr %1, align 8, !tbaa !152
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_16SchemaAttDefListE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !151 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_716SchemaAttDefList21classSchemaAttDefListE) #16
  store ptr %3, ptr %1, align 8, !tbaa !152
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17SchemaElementDeclEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !316 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !317

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !247

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #16
  store ptr %11, ptr %3, align 8, !tbaa !202
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !151 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !184
  ret i32 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !318 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !246 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !246 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 !prof !324 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !196
  %9 = load ptr, ptr %0, align 8, !tbaa !192
  %10 = load ptr, ptr %6, align 8, !tbaa !127
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #16
  store i32 %12, ptr %3, align 4, !tbaa !184
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !325

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !218
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !326

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !198
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !217
  %28 = load ptr, ptr %25, align 8, !tbaa !127
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #16
  br i1 %31, label %36, label %32, !prof !326

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !152
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !327, !llvm.loop !328

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !168 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !240
  %7 = icmp eq ptr %6, null
  br i1 %4, label %51, label %8, !prof !232

8:                                                ; preds = %1
  br i1 %7, label %9, label %18

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !242
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !195
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !241
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  br label %20

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %17, %9 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  store ptr %22, ptr %5, align 8, !tbaa !240
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %39
  %27 = phi ptr [ %22, %24 ], [ %41, %39 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !242
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !198
  %31 = load ptr, ptr %2, align 8, !tbaa !244
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = load ptr, ptr %30, align 8, !tbaa !127
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef %33) #16
  %38 = load ptr, ptr %5, align 8, !tbaa !240
  br i1 %37, label %43, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !152
  store ptr %41, ptr %5, align 8, !tbaa !240
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %26, !llvm.loop !329

43:                                               ; preds = %26
  %44 = icmp eq ptr %38, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %39, %20, %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !242
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !196
  %50 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %49, ptr %50, align 8, !tbaa !241
  br label %78

51:                                               ; preds = %1
  br i1 %7, label %56, label %52, !prof !232

52:                                               ; preds = %51
  %53 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !330
  store ptr %54, ptr %5, align 8, !tbaa !240
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %78, !prof !331

56:                                               ; preds = %51, %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !241
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !241
  %60 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !242
  %62 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !196
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %78, label %65, !prof !174

65:                                               ; preds = %56
  %66 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %61, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !195
  br label %68

68:                                               ; preds = %65, %74
  %69 = phi i32 [ %59, %65 ], [ %75, %74 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !152
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77, !prof !332

74:                                               ; preds = %68
  %75 = add i32 %69, 1
  store i32 %75, ptr %57, align 8, !tbaa !241
  %76 = icmp eq i32 %75, %63
  br i1 %76, label %78, label %68, !prof !333, !llvm.loop !334

77:                                               ; preds = %68
  store ptr %72, ptr %5, align 8, !tbaa !240
  br label %78

78:                                               ; preds = %74, %56, %43, %45, %77, %52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  %14 = load ptr, ptr %9, align 8, !tbaa !127
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %13) #16
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ %16, %5 ], [ -1, %1 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !240
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !168 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !174

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !192
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6) #16
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
  %11 = load ptr, ptr %0, align 8, !tbaa !192
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !196
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !127
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #16
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !195
  %21 = load i32, ptr %12, align 8, !tbaa !196
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !335

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !195
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !152
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !336, !llvm.loop !337
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !168 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  br i1 %2, label %48, label %3, !prof !338

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !196
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !339

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !197
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !195
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !340

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !330
  %23 = load i8, ptr %9, align 8, !tbaa !194, !range !138, !noundef !139
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !230

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !215
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !127
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(120) %26) #13
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !192
  %34 = load ptr, ptr %33, align 8, !tbaa !127
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #16
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !341, !llvm.loop !342

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !195
  %40 = load i32, ptr %4, align 8, !tbaa !196
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !152
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !343, !llvm.loop !344

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !345 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !197
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !196
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !192
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !192
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !196
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !195
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  store ptr %23, ptr %21, align 8, !tbaa !195
  store i32 %6, ptr %3, align 8, !tbaa !196
  %24 = load ptr, ptr %0, align 8, !tbaa !192
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #16
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !195
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !152
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !330
  %39 = load ptr, ptr %19, align 8, !tbaa !198
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !217
  %42 = load ptr, ptr %0, align 8, !tbaa !192
  %43 = load ptr, ptr %39, align 8, !tbaa !127
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #16
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  store ptr %49, ptr %37, align 8, !tbaa !330
  store ptr %36, ptr %48, align 8, !tbaa !152
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !346

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !196
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !347

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !166 {
  store ptr %3, ptr %0, align 8, !tbaa !215
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !330
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !217
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !348
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !348
  store ptr null, ptr %0, align 8, !tbaa !348
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !348
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !350
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !348
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !350
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ComplexTypeInfo.cpp() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { optsize }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!125}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 339}
!36 = !{ptr @_ZN11xercesc_2_718SimpleContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, i64 12}
!37 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 96}
!38 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 96}
!39 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 29}
!40 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 29}
!41 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 29}
!42 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE, i64 58}
!43 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo14setContentSpecEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ComplexTypeInfo15setContentModelEPNS_15XMLContentModelE, i64 30}
!44 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 30}
!45 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 30}
!46 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 60}
!47 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, i64 30}
!48 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE, i64 30}
!49 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 30}
!50 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, i64 30}
!51 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 30}
!52 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 30}
!53 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, i64 19}
!54 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 19}
!55 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 30}
!56 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, i64 30}
!57 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo12getElementIdEv, i64 13}
!58 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj, i64 13}
!59 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv, i64 26}
!60 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 13}
!61 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 13}
!62 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, i64 13}
!63 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE, i64 13}
!64 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv, i64 1}
!65 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 13}
!66 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_, i64 12}
!67 = !{ptr @_ZN11xercesc_2_716SchemaAttDefList9addAttDefEPNS_12SchemaAttDefE, ptr @_ZNK11xercesc_2_713XMLAttDefList16getMemoryManagerEv, i64 2}
!68 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 349768}
!69 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEC2Ev, i64 30}
!70 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 30}
!71 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!72 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv, i64 29}
!74 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev, i64 1}
!75 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, i64 1}
!76 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!77 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEED2Ev, i64 30}
!78 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!79 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_, i64 24}
!80 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, i64 24}
!81 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, i64 24}
!82 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!83 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!84 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv, i64 156}
!85 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv, i64 3}
!86 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1}
!87 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_75QName6setURIEj, i64 1}
!88 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv, i64 156}
!89 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv, i64 156}
!90 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii, i64 122}
!91 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv, i64 35}
!92 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, i64 65}
!93 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv, i64 35}
!94 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode13setAdoptFirstEb, i64 7}
!95 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode8setFirstEPS0_, i64 1}
!96 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode14setAdoptSecondEb, i64 14}
!97 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_, i64 7}
!98 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!99 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, i64 1}
!100 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @__cxa_allocate_exception, i64 1}
!101 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!102 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, i64 21}
!103 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @__cxa_allocate_exception, i64 2}
!104 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!105 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv, i64 43}
!106 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv, i64 34}
!107 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1}
!108 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 22}
!109 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, i64 2}
!110 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 8}
!111 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv, i64 25}
!112 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv, i64 7}
!113 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, i64 12}
!114 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, i64 12}
!115 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!116 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 14}
!117 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 10}
!118 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 57}
!119 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii, ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, i64 57}
!120 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!121 = !{ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 24}
!122 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!123 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!124 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 30}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = !{!"function_entry_count", i64 339}
!127 = !{!128, !128, i64 0}
!128 = !{!"vtable pointer", !129, i64 0}
!129 = !{!"Simple C++ TBAA"}
!130 = !{!131, !136, i64 52}
!131 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !132, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !135, i64 48, !136, i64 52, !136, i64 53, !137, i64 56, !137, i64 60}
!132 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !129, i64 0}
!135 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !134, i64 0}
!136 = !{!"bool", !134, i64 0}
!137 = !{!"int", !134, i64 0}
!138 = !{i8 0, i8 2}
!139 = !{}
!140 = !{!"branch_weights", i32 10, i32 331}
!141 = !{!131, !133, i64 32}
!142 = !{!131, !136, i64 53}
!143 = !{!"branch_weights", i32 1, i32 340}
!144 = !{!131, !133, i64 40}
!145 = !{!131, !133, i64 16}
!146 = !{!"function_entry_count", i64 12}
!147 = !{!148, !133, i64 8}
!148 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !149, i64 0, !133, i64 8, !133, i64 16, !135, i64 24, !136, i64 28, !133, i64 32}
!149 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!150 = !{!148, !133, i64 16}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!133, !133, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"short", !134, i64 0}
!155 = !{!"function_entry_count", i64 2453164456}
!156 = !{!"branch_weights", i32 1, i32 -1841802839}
!157 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!158 = !{!"branch_weights", i32 408669070, i32 -279908794}
!159 = distinct !{!159, !160}
!160 = !{!"llvm.loop.mustprogress"}
!161 = !{!131, !133, i64 8}
!162 = !{!131, !137, i64 56}
!163 = !{!131, !137, i64 60}
!164 = !{!131, !135, i64 48}
!165 = !{!"function_entry_count", i64 17}
!166 = !{!"function_entry_count", i64 13}
!167 = !{!"function_entry_count", i64 96}
!168 = !{!"function_entry_count", i64 30}
!169 = !{!170, !133, i64 168}
!170 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !132, i64 0, !136, i64 8, !136, i64 9, !136, i64 10, !136, i64 11, !136, i64 12, !137, i64 16, !137, i64 20, !137, i64 24, !137, i64 28, !137, i64 32, !137, i64 36, !137, i64 40, !137, i64 44, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112, !133, i64 120, !133, i64 128, !133, i64 136, !133, i64 144, !133, i64 152, !133, i64 160, !133, i64 168}
!171 = !{!170, !133, i64 48}
!172 = !{!170, !133, i64 56}
!173 = !{!170, !133, i64 64}
!174 = !{!"branch_weights", i32 1, i32 31}
!175 = !{!170, !133, i64 88}
!176 = !{!170, !137, i64 16}
!177 = !{!"function_entry_count", i64 36}
!178 = !{!170, !137, i64 32}
!179 = !{!170, !133, i64 96}
!180 = !{!"branch_weights", i32 63, i32 1}
!181 = !{!170, !133, i64 104}
!182 = !{!136, !136, i64 0}
!183 = !{!170, !136, i64 12}
!184 = !{!137, !137, i64 0}
!185 = !{!170, !137, i64 36}
!186 = !{!170, !137, i64 40}
!187 = !{!170, !137, i64 44}
!188 = !{!170, !133, i64 128}
!189 = !{!170, !133, i64 112}
!190 = !{!"function_entry_count", i64 1068727}
!191 = !{!"function_entry_count", i64 5836268}
!192 = !{!193, !133, i64 0}
!193 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !133, i64 0, !136, i64 8, !133, i64 16, !137, i64 24, !137, i64 28, !133, i64 32}
!194 = !{!193, !136, i64 8}
!195 = !{!193, !133, i64 16}
!196 = !{!193, !137, i64 24}
!197 = !{!193, !137, i64 28}
!198 = !{!193, !133, i64 32}
!199 = !{!170, !136, i64 10}
!200 = !{!170, !133, i64 120}
!201 = !{!170, !133, i64 160}
!202 = !{!170, !133, i64 136}
!203 = !{!170, !133, i64 144}
!204 = !{!170, !133, i64 152}
!205 = !{!206, !137, i64 56}
!206 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !207, i64 0, !137, i64 56, !211, i64 60, !212, i64 64, !213, i64 68, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112}
!207 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !132, i64 0, !208, i64 8, !209, i64 12, !210, i64 16, !136, i64 20, !136, i64 21, !137, i64 24, !133, i64 32, !133, i64 40, !133, i64 48}
!208 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !134, i64 0}
!209 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !134, i64 0}
!210 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !134, i64 0}
!211 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !134, i64 0}
!212 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !134, i64 0}
!213 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !134, i64 0}
!214 = !{!"branch_weights", i32 14, i32 1}
!215 = !{!216, !133, i64 0}
!216 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !133, i64 0, !133, i64 8, !133, i64 16, !137, i64 24}
!217 = !{!216, !133, i64 16}
!218 = !{!216, !137, i64 24}
!219 = !{!"function_entry_count", i64 9774}
!220 = !{!206, !133, i64 72}
!221 = !{!"function_entry_count", i64 2192223}
!222 = !{!223, !133, i64 32}
!223 = !{!"_ZTSN11xercesc_2_75QNameE", !132, i64 0, !137, i64 8, !137, i64 12, !137, i64 16, !137, i64 20, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48}
!224 = !{!"function_entry_count", i64 6553673}
!225 = !{!223, !137, i64 20}
!226 = !{!227, !137, i64 44}
!227 = !{!"_ZTSN11xercesc_2_716SchemaAttDefListE", !228, i64 0, !133, i64 16, !133, i64 24, !133, i64 32, !137, i64 40, !137, i64 44}
!228 = !{!"_ZTSN11xercesc_2_713XMLAttDefListE", !132, i64 0, !133, i64 8}
!229 = !{!227, !137, i64 40}
!230 = !{!"branch_weights", i32 1, i32 14}
!231 = !{!227, !133, i64 32}
!232 = !{!"branch_weights", i32 31, i32 1}
!233 = !{!"function_entry_count", i64 189549}
!234 = !{!"function_entry_count", i64 349768}
!235 = !{!"branch_weights", i32 14, i32 349756}
!236 = distinct !{!236, !160}
!237 = !{!238, !136, i64 8}
!238 = !{!"_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE", !239, i64 0, !136, i64 8, !133, i64 16, !137, i64 24, !133, i64 32, !133, i64 40, !133, i64 48}
!239 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE"}
!240 = !{!238, !133, i64 16}
!241 = !{!238, !137, i64 24}
!242 = !{!238, !133, i64 32}
!243 = !{!238, !133, i64 40}
!244 = !{!238, !133, i64 48}
!245 = !{!207, !136, i64 20}
!246 = !{!"function_entry_count", i64 24}
!247 = !{!"branch_weights", i32 1, i32 25}
!248 = !{!"function_entry_count", i64 558789}
!249 = !{!"branch_weights", i32 158605, i32 400186}
!250 = !{!"function_entry_count", i64 496321}
!251 = !{!252, !137, i64 0}
!252 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !137, i64 0, !137, i64 4, !137, i64 8, !136, i64 12, !133, i64 16, !133, i64 24, !133, i64 32}
!253 = !{!252, !137, i64 4}
!254 = !{!252, !137, i64 8}
!255 = !{!252, !136, i64 12}
!256 = !{!252, !133, i64 16}
!257 = !{!252, !133, i64 32}
!258 = !{!"function_entry_count", i64 10769804}
!259 = !{!"function_entry_count", i64 157}
!260 = !{!"branch_weights", i32 1, i32 158}
!261 = !{!"branch_weights", i32 317, i32 24964}
!262 = !{!"branch_weights", i32 13905, i32 11376}
!263 = !{!"branch_weights", i32 10, i32 63}
!264 = !{!"branch_weights", i32 62, i32 2}
!265 = !{!"branch_weights", i32 49, i32 15}
!266 = !{!"branch_weights", i32 15000, i32 16900, i32 16250, i32 31250, i32 360000}
!267 = !{!"branch_weights", i32 25, i32 1}
!268 = !{!"branch_weights", i32 1951, i32 15625}
!269 = !{!"branch_weights", i32 2, i32 24}
!270 = !{!"branch_weights", i32 4, i32 3, i32 2}
!271 = !{!"branch_weights", i32 1, i32 24}
!272 = !{!"branch_weights", i32 347, i32 253}
!273 = !{!"branch_weights", i32 4, i32 11}
!274 = !{!"branch_weights", i32 1, i32 4}
!275 = !{!"branch_weights", i32 4, i32 1}
!276 = !{!"branch_weights", i32 1, i32 3, i32 3, i32 3, i32 2}
!277 = !{!"branch_weights", i32 10, i32 1}
!278 = !{!"function_entry_count", i64 353}
!279 = !{!"function_entry_count", i64 110}
!280 = !{!"function_entry_count", i64 180}
!281 = !{!148, !135, i64 24}
!282 = !{!148, !136, i64 28}
!283 = !{!148, !133, i64 32}
!284 = !{!"branch_weights", i32 1, i32 13}
!285 = !{!"branch_weights", i32 10, i32 4}
!286 = !{!"function_entry_count", i64 155}
!287 = distinct !{!287, !160}
!288 = !{!"function_entry_count", i64 76}
!289 = !{!"function_entry_count", i64 251}
!290 = !{!"function_entry_count", i64 254}
!291 = !{!"branch_weights", i32 18753, i32 3825}
!292 = !{!"branch_weights", i32 234, i32 279}
!293 = !{!"branch_weights", i32 36, i32 69}
!294 = !{!"branch_weights", i32 81, i32 19}
!295 = distinct !{!295, !160}
!296 = distinct !{!296, !160}
!297 = distinct !{!297, !160}
!298 = distinct !{!298, !160}
!299 = !{!"function_entry_count", i64 11}
!300 = !{!"function_entry_count", i64 1}
!301 = !{!"branch_weights", i32 2, i32 1}
!302 = !{!"function_entry_count", i64 28}
!303 = !{!"function_entry_count", i64 14}
!304 = !{!"branch_weights", i32 15, i32 1}
!305 = !{!170, !136, i64 8}
!306 = !{!170, !136, i64 9}
!307 = !{!170, !136, i64 11}
!308 = !{!170, !137, i64 20}
!309 = !{!170, !137, i64 24}
!310 = !{!170, !137, i64 28}
!311 = !{!170, !133, i64 72}
!312 = !{!170, !133, i64 80}
!313 = !{!314, !154, i64 0}
!314 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !154, i64 0, !154, i64 2, !133, i64 8, !133, i64 16, !133, i64 24, !315, i64 32, !315, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !137, i64 96}
!315 = !{!"long", !134, i64 0}
!316 = !{!"function_entry_count", i64 1176128}
!317 = !{!"branch_weights", i32 25, i32 1176105}
!318 = !{!"function_entry_count", i64 1069174}
!319 = !{!"function_entry_count", i64 120}
!320 = !{!228, !133, i64 8}
!321 = !{!322, !133, i64 40}
!322 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !323, i64 8, !133, i64 16, !137, i64 24, !133, i64 32, !133, i64 40}
!323 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !134, i64 0}
!324 = !{!"function_entry_count", i64 349781}
!325 = !{!"branch_weights", i32 1, i32 215}
!326 = !{!"branch_weights", i32 349756, i32 1}
!327 = !{!"branch_weights", i32 215, i32 2797833}
!328 = distinct !{!328, !160}
!329 = distinct !{!329, !160}
!330 = !{!216, !133, i64 8}
!331 = !{!"branch_weights", i32 0, i32 -2147483648}
!332 = !{!"branch_weights", i32 871, i32 1}
!333 = !{!"branch_weights", i32 31, i32 841}
!334 = distinct !{!334, !160}
!335 = !{!"branch_weights", i32 1, i32 247}
!336 = !{!"branch_weights", i32 247, i32 6721}
!337 = distinct !{!337, !160}
!338 = !{!"branch_weights", i32 20, i32 12}
!339 = !{!"branch_weights", i32 1, i32 191}
!340 = !{!"branch_weights", i32 306, i32 14}
!341 = !{!"branch_weights", i32 14, i32 0}
!342 = distinct !{!342, !160}
!343 = !{!"branch_weights", i32 4929, i32 191}
!344 = distinct !{!344, !160}
!345 = !{!"function_entry_count", i64 496246}
!346 = distinct !{!346, !160}
!347 = distinct !{!347, !160}
!348 = !{!349, !133, i64 0}
!349 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEE", !133, i64 0, !133, i64 8}
!350 = !{!349, !133, i64 8}
