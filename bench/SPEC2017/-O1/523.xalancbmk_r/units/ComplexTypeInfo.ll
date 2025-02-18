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
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDefList" = type { %"class.xercesc_2_7::XMLAttDefList", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLAttDefList" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
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

$_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev = comdat any

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

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE = comdat any

$_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE = comdat any

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
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
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

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !80, !range !88, !noundef !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !90

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !92

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !77
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #16, !prof !93
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !94, !range !88, !noundef !89
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !95

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !97

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #16, !prof !98
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !100

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !77
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #16, !prof !101
  br label %33

33:                                               ; preds = %25, %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 !prof !102 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !80, !range !88, !noundef !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !77
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !94, !range !88, !noundef !89
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #16
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !77
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #16
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !103 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !107

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #16, !prof !108
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !107

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !77
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #16, !prof !108
  br label %17

17:                                               ; preds = %9, %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !102 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !77
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(56) %11) #16
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !102 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo13reinitAnyTypeEv() #4 align 2 !prof !102 {
  %1 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !77
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(176) %1) #16
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  %8 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %7
  store ptr null, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  store i1 false, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv() local_unnamed_addr #5 align 2 !prof !102 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef 1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = alloca [128 x i16], align 16
  %5 = load i1, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  br i1 %5, label %120, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !110
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %10)
  %11 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16)
          to label %17 unwind label %20

17:                                               ; preds = %15
  store ptr %14, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  br label %22

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %14) #16
  br label %23

22:                                               ; preds = %17, %9
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %25

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %122

25:                                               ; preds = %22, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %26 = load ptr, ptr @_ZN11xercesc_2_7L13sAnyTypeMutexE, align 8, !tbaa !110
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %26)
  %27 = load i1, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  br i1 %27, label %119, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %29 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !111
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %33, %31 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %28 ]
  %33 = getelementptr inbounds i16, ptr %32, i64 1
  %34 = load i16, ptr %33, align 2, !tbaa !111
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %31, !llvm.loop !113

36:                                               ; preds = %31
  %37 = ptrtoint ptr %33 to i64
  %38 = sub i64 %37, ptrtoint (ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE to i64)
  %39 = lshr exact i64 %38, 1
  %40 = and i64 %39, 4294967295
  br label %41

41:                                               ; preds = %28, %36
  %42 = phi i64 [ %40, %36 ], [ 0, %28 ]
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %4, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
          to label %43 unwind label %99

43:                                               ; preds = %41
  %44 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %42
  store i16 44, ptr %44, align 2, !tbaa !111
  %45 = getelementptr inbounds i16, ptr %4, i64 %42
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %46, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE)
          to label %47 unwind label %99

47:                                               ; preds = %43
  %48 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 176)
          to label %49 unwind label %99

49:                                               ; preds = %47
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(176) %48, ptr noundef %50)
          to label %51 unwind label %101

51:                                               ; preds = %49
  store ptr %48, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  %52 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 64)
          to label %53 unwind label %103

53:                                               ; preds = %51
  %54 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 56)
          to label %55 unwind label %105

55:                                               ; preds = %53
  %56 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %54, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %0, ptr noundef %56)
          to label %57 unwind label %107

57:                                               ; preds = %55
  %58 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %52, align 8, !tbaa !77
  %59 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !116
  %60 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 2
  %61 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 6
  %62 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %60, i8 0, i64 36, i1 false)
  store i8 1, ptr %62, align 4, !tbaa !80
  %63 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 8
  store i8 1, ptr %63, align 1, !tbaa !94
  %64 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 9
  store i32 1, ptr %64, align 8, !tbaa !117
  %65 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %52, i64 0, i32 10
  store i32 1, ptr %65, align 4, !tbaa !118
  store ptr %54, ptr %60, align 8, !tbaa !99
  store i32 22, ptr %61, align 8, !tbaa !119
  store i32 0, ptr %64, align 8, !tbaa !117
  store i32 -1, ptr %65, align 4, !tbaa !118
  %66 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 64)
          to label %67 unwind label %111

67:                                               ; preds = %57
  %68 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %66, align 8, !tbaa !77
  %69 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !116
  %70 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 2
  %71 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  store ptr %52, ptr %71, align 8, !tbaa !91
  %72 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 5
  store ptr null, ptr %72, align 8, !tbaa !96
  %73 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 6
  store i32 21, ptr %73, align 8, !tbaa !119
  %74 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 7
  store i8 1, ptr %74, align 4, !tbaa !80
  %75 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 8
  store i8 1, ptr %75, align 1, !tbaa !94
  %76 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 9
  store i32 1, ptr %76, align 8, !tbaa !117
  %77 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %66, i64 0, i32 10
  store i32 1, ptr %77, align 4, !tbaa !118
  %78 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 120)
          to label %79 unwind label %113

79:                                               ; preds = %67
  %80 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %78, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %0, i32 noundef 11, i32 noundef 6, ptr noundef %80)
          to label %81 unwind label %115

81:                                               ; preds = %79
  %82 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt(ptr noundef nonnull align 8 dereferenceable(176) %82, ptr noundef nonnull %4)
          to label %83 unwind label %113

83:                                               ; preds = %81
  %84 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  %85 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %84, i64 0, i32 19
  store ptr %84, ptr %85, align 8, !tbaa !120
  %86 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %84, i64 0, i32 6
  store i32 4, ptr %86, align 8, !tbaa !122
  %87 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %84, i64 0, i32 10
  store i32 3, ptr %87, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(176) %84, ptr noundef nonnull %66)
          to label %88 unwind label %113

88:                                               ; preds = %83
  %89 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  %90 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %89, i64 0, i32 21
  %91 = load ptr, ptr %90, align 8, !tbaa !124
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %91, align 8, !tbaa !77
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8
  call void %96(ptr noundef nonnull align 8 dereferenceable(120) %91) #16
  br label %97

97:                                               ; preds = %88, %93
  store ptr %78, ptr %90, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L14anyTypeCleanupE, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo13reinitAnyTypeEv)
          to label %98 unwind label %113

98:                                               ; preds = %97
  store i1 true, ptr @_ZN11xercesc_2_7L23sAnyTypeMutexRegisteredE, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  br label %119

99:                                               ; preds = %47, %43, %41
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %117

101:                                              ; preds = %49
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %48) #16
  br label %117

103:                                              ; preds = %51
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %117

105:                                              ; preds = %53
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %109

107:                                              ; preds = %55
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %54) #16
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi { ptr, i32 } [ %106, %105 ], [ %108, %107 ]
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %52) #16
  br label %117

111:                                              ; preds = %57
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %117

113:                                              ; preds = %97, %83, %81, %67
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %79
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %78) #16
  br label %117

117:                                              ; preds = %103, %109, %113, %115, %111, %101, %99
  %118 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ], [ %110, %109 ], [ %104, %103 ], [ %112, %111 ], [ %114, %113 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %122

119:                                              ; preds = %98, %25
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %120

120:                                              ; preds = %119, %1
  %121 = load ptr, ptr @_ZN11xercesc_2_715ComplexTypeInfo8fAnyTypeE, align 8, !tbaa !110
  ret ptr %121

122:                                              ; preds = %117, %23
  %123 = phi { ptr, i32 } [ %118, %117 ], [ %24, %23 ]
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !125 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = load ptr, ptr %4, align 8, !tbaa !77
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6), !prof !128
  %10 = load ptr, ptr %3, align 8, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12), !prof !128
  %16 = load ptr, ptr %3, align 8, !tbaa !126
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = load ptr, ptr %16, align 8, !tbaa !77
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18), !prof !128
  %22 = icmp eq ptr %1, null
  br i1 %22, label %84, label %23, !prof !131

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !126
  %25 = load i16, ptr %1, align 2, !tbaa !111
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27, !prof !131

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %29, %27 ], [ %1, %23 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !111
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !prof !132, !llvm.loop !113

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %1 to i64
  %35 = sub i64 %33, %34
  %36 = add i64 %35, 2
  %37 = and i64 %36, 8589934590
  br label %38

38:                                               ; preds = %32, %23
  %39 = phi i64 [ %37, %32 ], [ 2, %23 ]
  %40 = load ptr, ptr %24, align 8, !tbaa !77
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %39), !prof !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr nonnull align 2 %1, i64 %39, i1 false), !prof !134
  store ptr %43, ptr %5, align 8, !tbaa !127
  %44 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %43, i16 noundef zeroext 44)
  %45 = load ptr, ptr %5, align 8, !tbaa !127
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47, !prof !131

47:                                               ; preds = %38
  %48 = load i16, ptr %45, align 2, !tbaa !111
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %50, !prof !131

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %52, %50 ], [ %45, %47 ]
  %52 = getelementptr inbounds i16, ptr %51, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !111
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %50, !prof !132, !llvm.loop !113

55:                                               ; preds = %50
  %56 = ptrtoint ptr %52 to i64
  %57 = ptrtoint ptr %45 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %38, %47, %55
  %62 = phi i32 [ %60, %55 ], [ 0, %47 ], [ 0, %38 ]
  %63 = load ptr, ptr %3, align 8, !tbaa !126
  %64 = sub i32 %62, %44
  %65 = add i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = shl nsw i64 %66, 1
  %68 = load ptr, ptr %63, align 8, !tbaa !77
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %67), !prof !133
  store ptr %71, ptr %11, align 8, !tbaa !129
  %72 = load ptr, ptr %5, align 8, !tbaa !127
  %73 = add nsw i32 %44, 1
  %74 = load ptr, ptr %3, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef %62, ptr noundef %74)
  %75 = load ptr, ptr %3, align 8, !tbaa !126
  %76 = sext i32 %73 to i64
  %77 = shl nsw i64 %76, 1
  %78 = load ptr, ptr %75, align 8, !tbaa !77
  %79 = getelementptr inbounds ptr, ptr %78, i64 2
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %75, i64 noundef %77), !prof !133
  store ptr %81, ptr %17, align 8, !tbaa !130
  %82 = load ptr, ptr %5, align 8, !tbaa !127
  %83 = load ptr, ptr %3, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %81, ptr noundef %82, i32 noundef 0, i32 noundef %44, ptr noundef %83)
  br label %85

84:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %85

85:                                               ; preds = %84, %61
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo14setContentSpecEPNS_15ContentSpecNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !125 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 2, !range !88
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 true, i1 %8, !prof !136
  br i1 %9, label %14, label %10, !prof !136

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !77
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  br label %14

14:                                               ; preds = %10, %2
  store ptr %1, ptr %3, align 8, !tbaa !135
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !136

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !77
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #16
  br label %22

22:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !137
  %23 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26, !prof !136

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %28 = load ptr, ptr %27, align 8, !tbaa !126
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %24)
  store ptr null, ptr %23, align 8, !tbaa !138
  br label %32

32:                                               ; preds = %22, %26
  ret void
}

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ComplexTypeInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !139
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !140
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  store i8 1, ptr %5, align 2, !tbaa !141
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 4
  store i8 0, ptr %6, align 1, !tbaa !142
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  store i8 0, ptr %7, align 4, !tbaa !143
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !144
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 8
  store i32 0, ptr %10, align 8, !tbaa !145
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  store i32 -2, ptr %11, align 4, !tbaa !146
  %12 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  store i32 0, ptr %12, align 8, !tbaa !123
  %13 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %14 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !147
  store i32 %14, ptr %13, align 4, !tbaa !148
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  store i32 0, ptr %15, align 8, !tbaa !149
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  store i32 16, ptr %16, align 4, !tbaa !150
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %17, i8 0, i64 120, i1 false)
  store ptr %1, ptr %18, align 8, !tbaa !126
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  %20 = load ptr, ptr %18, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 29, i1 noundef zeroext true, ptr noundef %20)
          to label %21 unwind label %29, !prof !136

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  store ptr %19, ptr %22, align 8, !tbaa !151
  %23 = load ptr, ptr %18, align 8, !tbaa !126
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %23)
  %25 = load ptr, ptr %22, align 8, !tbaa !151
  %26 = load ptr, ptr %18, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %25, ptr noundef %26)
          to label %27 unwind label %31, !prof !136

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  store ptr %24, ptr %28, align 8, !tbaa !152
  ret void

29:                                               ; preds = %2
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %1) #16
  br label %33

31:                                               ; preds = %21
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  resume { ptr, i32 } %34
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !153
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !156
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !157
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !158
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %11 = load ptr, ptr %0, align 8, !tbaa !153
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %14, !prof !136

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !159
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #16
  resume { ptr, i32 } %15
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ComplexTypeInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %95, !prof !128

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %95, !prof !128

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !126
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = load ptr, ptr %17, align 8, !tbaa !77
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %95, !prof !128

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 2, !tbaa !141, !range !88, !noundef !89
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !131

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !160

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !77
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(64) %29) #16, !prof !161
  br label %35

35:                                               ; preds = %27, %31, %23
  %36 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !136

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !77
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(120) %37) #16
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %45 = load ptr, ptr %44, align 8, !tbaa !151
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !131

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %45) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #16
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %50 = load ptr, ptr %49, align 8, !tbaa !152
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52, !prof !131

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !77
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(48) %50) #16, !prof !162
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %58 = load ptr, ptr %57, align 8, !tbaa !163
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60, !prof !160

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !77
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(40) %58) #16, !prof !164
  br label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 28
  %66 = load ptr, ptr %65, align 8, !tbaa !165
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68, !prof !136

68:                                               ; preds = %64
  %69 = load ptr, ptr %66, align 8, !tbaa !77
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(40) %66) #16
  br label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !160

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !77
  %78 = getelementptr inbounds ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %74) #16, !prof !166
  br label %80

80:                                               ; preds = %76, %72
  %81 = load ptr, ptr %2, align 8, !tbaa !126
  %82 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %83 = load ptr, ptr %82, align 8, !tbaa !138
  %84 = load ptr, ptr %81, align 8, !tbaa !77
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %83)
          to label %87 unwind label %95, !prof !128

87:                                               ; preds = %80
  %88 = load ptr, ptr %2, align 8, !tbaa !126
  %89 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %90 = load ptr, ptr %89, align 8, !tbaa !167
  %91 = load ptr, ptr %88, align 8, !tbaa !77
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %90)
          to label %94 unwind label %95, !prof !128

94:                                               ; preds = %87
  ret void

95:                                               ; preds = %87, %80, %16, %9, %1
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  tail call void @__clang_call_terminate(ptr %97) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !136

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !128

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !131

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !77
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #16, !prof !168
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

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 !prof !125 {
  tail call void @_ZN11xercesc_2_715ComplexTypeInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !169 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !148
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 1
  store i32 %4, ptr %5, align 8, !tbaa !170
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !180
  %12 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !182
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %11, i32 noundef %13, ptr noundef nonnull %1)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !183
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %15, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !186
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %41, !prof !187

21:                                               ; preds = %2
  %22 = shl i32 %19, 1
  store i32 %22, ptr %18, align 8, !tbaa !186
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  %25 = zext i32 %22 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %24, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26)
  %31 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %15, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  %33 = load i32, ptr %16, align 4, !tbaa !183
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %32, i64 %35, i1 false)
  %36 = load ptr, ptr %23, align 8, !tbaa !188
  %37 = load ptr, ptr %31, align 8, !tbaa !189
  %38 = load ptr, ptr %36, align 8, !tbaa !77
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %37)
  store ptr %30, ptr %31, align 8, !tbaa !189
  br label %41

41:                                               ; preds = %2, %21
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %15, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !189
  %44 = load i32, ptr %16, align 4, !tbaa !183
  %45 = add i32 %44, 1
  store i32 %45, ptr %16, align 4, !tbaa !183
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  store ptr %1, ptr %47, align 8, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 !prof !169 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !157
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !158
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !190

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !190

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !155, !range !88, !noundef !89
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !191
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !77
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(120) %21) #16
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !191
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !193
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !194
  br label %47

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !153
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32), !prof !195
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = load i32, ptr %5, align 4, !tbaa !147
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !110
  store ptr %3, ptr %35, align 8, !tbaa !191
  %42 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !196
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !193
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 3
  store i32 %2, ptr %44, align 8, !tbaa !194
  store ptr %35, ptr %40, align 8, !tbaa !110
  %45 = load i32, ptr %9, align 4, !tbaa !158
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 4, !tbaa !158
  br label %47

47:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo10setLocatorEPNS_10XSDLocatorE(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !77
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #8 align 2 !prof !197 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo18formatContentModelEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  store ptr %6, ptr %2, align 8, !tbaa !138
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !138
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo18formatContentModelEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !123
  switch i32 %4, label %45 [
    i32 1, label %5
    i32 0, label %25
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgAnyStringE, align 2, !tbaa !111
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %12, %10 ], [ @_ZN11xercesc_2_76XMLUni11fgAnyStringE, %5 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !111
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !113

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = add i64 %16, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni11fgAnyStringE to i64)), i64 2)
  %18 = and i64 %17, 8589934590
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i64 [ %18, %15 ], [ 2, %5 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !77
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %20)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %24, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni11fgAnyStringE, i64 %20, i1 false)
  br label %112

25:                                               ; preds = %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %27 = load ptr, ptr %26, align 8, !tbaa !126
  %28 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, align 2, !tbaa !111
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %32, %30 ], [ @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, %25 ]
  %32 = getelementptr inbounds i16, ptr %31, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !111
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %30, !llvm.loop !113

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i64
  %37 = add i64 %36, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni13fgEmptyStringE to i64)), i64 2)
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %25, %35
  %40 = phi i64 [ %38, %35 ], [ 2, %25 ]
  %41 = load ptr, ptr %27, align 8, !tbaa !77
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %40)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni13fgEmptyStringE, i64 %40, i1 false)
  br label %112

45:                                               ; preds = %1
  %46 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !135
  %48 = icmp eq ptr %47, null
  br i1 %48, label %112, label %49

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  %50 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  store i32 0, ptr %2, align 8, !tbaa !198
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  store i32 1023, ptr %52, align 4, !tbaa !200
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 2
  store i32 0, ptr %53, align 8, !tbaa !201
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 3
  store i8 0, ptr %54, align 4, !tbaa !202
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 4
  store ptr %51, ptr %55, align 8, !tbaa !203
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 5
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  %58 = load ptr, ptr %51, align 8, !tbaa !77
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 2048)
  store ptr %61, ptr %57, align 8, !tbaa !204
  store i16 0, ptr %61, align 2, !tbaa !111
  invoke void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %62 unwind label %101

62:                                               ; preds = %49
  %63 = load ptr, ptr %57, align 8, !tbaa !204
  %64 = load i32, ptr %2, align 8, !tbaa !198
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %63, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !111
  %67 = load ptr, ptr %50, align 8, !tbaa !126
  %68 = icmp eq ptr %63, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %62
  %70 = load i16, ptr %63, align 2, !tbaa !111
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69, %72
  %73 = phi ptr [ %74, %72 ], [ %63, %69 ]
  %74 = getelementptr inbounds i16, ptr %73, i64 1
  %75 = load i16, ptr %74, align 2, !tbaa !111
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %72, !llvm.loop !113

77:                                               ; preds = %72
  %78 = ptrtoint ptr %74 to i64
  %79 = ptrtoint ptr %63 to i64
  %80 = sub i64 %78, %79
  %81 = add i64 %80, 2
  %82 = and i64 %81, 8589934590
  br label %83

83:                                               ; preds = %77, %69
  %84 = phi i64 [ %82, %77 ], [ 2, %69 ]
  %85 = load ptr, ptr %67, align 8, !tbaa !77
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef %84)
          to label %89 unwind label %101

89:                                               ; preds = %83
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %88, ptr nonnull align 2 %63, i64 %84, i1 false)
  br label %90

90:                                               ; preds = %89, %62
  %91 = phi ptr [ %88, %89 ], [ null, %62 ]
  %92 = load ptr, ptr %55, align 8, !tbaa !203
  %93 = load ptr, ptr %57, align 8, !tbaa !204
  %94 = load ptr, ptr %92, align 8, !tbaa !77
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef %93)
          to label %100 unwind label %97

97:                                               ; preds = %90
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #17
  unreachable

100:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  br label %112

101:                                              ; preds = %83, %49
  %102 = landingpad { ptr, i32 }
          cleanup
  %103 = load ptr, ptr %55, align 8, !tbaa !203
  %104 = load ptr, ptr %57, align 8, !tbaa !204
  %105 = load ptr, ptr %103, align 8, !tbaa !77
  %106 = getelementptr inbounds ptr, ptr %105, i64 3
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %104)
          to label %111 unwind label %108

108:                                              ; preds = %101
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #17
  unreachable

111:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  resume { ptr, i32 } %102

112:                                              ; preds = %45, %100, %39, %19
  %113 = phi ptr [ %24, %19 ], [ %44, %39 ], [ %91, %100 ], [ null, %45 ]
  ret ptr %113
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %11 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %3, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %11, align 8, !tbaa !191
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %5, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %22)
  %24 = load ptr, ptr %21, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %23, ptr noundef %4, ptr noundef %3, i32 noundef %2, i32 noundef 0, i32 noundef 4, ptr noundef %24)
          to label %25 unwind label %68

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 4, !tbaa !148
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %23, i64 0, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !170
  %29 = load ptr, ptr %9, align 8, !tbaa !151
  %30 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %23, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef %33, i32 noundef %2, ptr noundef nonnull %23)
  %34 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %35 = load ptr, ptr %34, align 8, !tbaa !152
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !183
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %35, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !186
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %25
  %42 = shl i32 %39, 1
  store i32 %42, ptr %38, align 8, !tbaa !186
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDefList", ptr %35, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !188
  %45 = zext i32 %42 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !77
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46)
  %51 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %35, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !189
  %53 = load i32, ptr %36, align 4, !tbaa !183
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %52, i64 %55, i1 false)
  %56 = load ptr, ptr %43, align 8, !tbaa !188
  %57 = load ptr, ptr %51, align 8, !tbaa !189
  %58 = load ptr, ptr %56, align 8, !tbaa !77
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57)
  store ptr %50, ptr %51, align 8, !tbaa !189
  br label %61

61:                                               ; preds = %25, %41
  %62 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDefList", ptr %35, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = load i32, ptr %36, align 4, !tbaa !183
  %65 = add i32 %64, 1
  store i32 %65, ptr %36, align 4, !tbaa !183
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  store ptr %23, ptr %67, align 8, !tbaa !110
  br label %70

68:                                               ; preds = %20
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #16
  resume { ptr, i32 } %69

70:                                               ; preds = %15, %61
  %71 = phi i8 [ 1, %61 ], [ 0, %15 ]
  %72 = phi ptr [ %23, %61 ], [ %16, %15 ]
  store i8 %71, ptr %6, align 1, !tbaa !205
  ret ptr %72
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load ptr, ptr %7, align 8, !tbaa !206
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %8, align 8, !tbaa !209
  %15 = load ptr, ptr %9, align 8, !tbaa !210
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !157
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %13, %10
  %20 = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %21 unwind label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %20, i64 0, i32 4
  store i8 0, ptr %22, align 4, !tbaa !211
  br label %10, !llvm.loop !212

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !77
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !213, !range !88, !noundef !89
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !210
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %30) #16
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %30) #16
  br label %33

33:                                               ; preds = %23, %28, %32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  resume { ptr, i32 } %24

34:                                               ; preds = %13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !77
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %2, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !213, !range !88, !noundef !89
  %37 = icmp eq i8 %36, 0
  %38 = icmp eq ptr %15, null
  %39 = or i1 %38, %37
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #16
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #16
  br label %41

41:                                               ; preds = %34, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !213
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !206
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !209
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !210
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !214
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !215
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %19, !prof !131

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %15 = load ptr, ptr %10, align 8, !tbaa !214
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.2, i32 noundef 522, i32 noundef 15, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %18

19:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !209
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !210
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !157
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = load ptr, ptr %0, align 8, !tbaa !77
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 559, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !191
  ret ptr %16
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !213, !range !88, !noundef !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 align 2 !prof !102 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext true)
  store ptr %14, ptr %10, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !167
  %19 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = load ptr, ptr %14, align 8, !tbaa !77
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %18, ptr noundef %20)
  br label %24

24:                                               ; preds = %13, %16, %9, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !216 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %8 unwind label %20, !prof !217

8:                                                ; preds = %2
  br i1 %1, label %9, label %22, !prof !218

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 8, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !150
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = load ptr, ptr %10, align 8, !tbaa !77
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  store ptr %18, ptr %19, align 8, !tbaa !167
  br label %22

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #16
  resume { ptr, i32 } %21

22:                                               ; preds = %9, %8
  %23 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %5, i1 noundef zeroext %1)
  %24 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %23)
  %25 = icmp eq ptr %23, null
  br i1 %25, label %30, label %26, !prof !218

26:                                               ; preds = %22
  %27 = load ptr, ptr %23, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(64) %23) #16, !prof !161
  br label %30

30:                                               ; preds = %26, %22
  ret ptr %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715ComplexTypeInfo17faultInAttDefListEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 29, i1 noundef zeroext true, ptr noundef %5)
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  store ptr %4, ptr %7, align 8, !tbaa !151
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %9
}

declare void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 !prof !219 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %72, label %5, !prof !220

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !119
  br i1 %2, label %8, label %30, !prof !220

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !149
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !150
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_715ComplexTypeInfo23resizeContentSpecOrgURIEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr %9, align 8, !tbaa !99
  %21 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !182
  %23 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !167
  %25 = load i32, ptr %13, align 8, !tbaa !149
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  store i32 %22, ptr %27, align 4, !tbaa !147
  %28 = load i32, ptr %13, align 8, !tbaa !149
  store i32 %28, ptr %21, align 4, !tbaa !182
  %29 = add i32 %28, 1
  store i32 %29, ptr %13, align 8, !tbaa !149
  br label %30

30:                                               ; preds = %8, %19, %5
  %31 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !117
  %33 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !118
  %35 = and i32 %7, 14
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %42, label %37, !prof !220

37:                                               ; preds = %30
  %38 = and i32 %7, 15
  %39 = icmp eq i32 %38, 8
  %40 = icmp eq i32 %7, 0
  %41 = or i1 %40, %39
  br i1 %41, label %42, label %44, !prof !221

42:                                               ; preds = %30, %37
  %43 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, i32 noundef %32, i32 noundef %34)
  br label %72

44:                                               ; preds = %37
  %45 = icmp eq i32 %7, 9
  %46 = icmp eq i32 %35, 4
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %72, !prof !222

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %50, i1 noundef zeroext %2)
  %52 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61, !prof !223

55:                                               ; preds = %48
  %56 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %51, i32 noundef %32, i32 noundef %34)
  %57 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 7
  store i8 0, ptr %57, align 4, !tbaa !80
  %58 = load ptr, ptr %1, align 8, !tbaa !77
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(64) %1) #16, !prof !224
  br label %72

61:                                               ; preds = %48
  %62 = icmp eq ptr %51, %50
  br i1 %62, label %65, label %63, !prof !225

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 7
  store i8 0, ptr %64, align 4, !tbaa !80
  store ptr %51, ptr %49, align 8, !tbaa !91
  store i8 1, ptr %64, align 4, !tbaa !80
  br label %65

65:                                               ; preds = %63, %61
  %66 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %53, i1 noundef zeroext %2)
  %67 = icmp eq ptr %66, %53
  br i1 %67, label %70, label %68, !prof !226

68:                                               ; preds = %65
  %69 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 8
  store i8 0, ptr %69, align 1, !tbaa !94
  store ptr %66, ptr %52, align 8, !tbaa !96
  store i8 1, ptr %69, align 1, !tbaa !94
  br label %70

70:                                               ; preds = %68, %65
  %71 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, i32 noundef %32, i32 noundef %34)
  br label %72

72:                                               ; preds = %55, %70, %44, %42, %3
  %73 = phi ptr [ null, %3 ], [ %43, %42 ], [ %1, %44 ], [ %71, %70 ], [ %56, %55 ]
  ret ptr %73
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !216 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !123
  switch i32 %4, label %13 [
    i32 5, label %23
    i32 2, label %5
    i32 3, label %20
    i32 4, label %12
  ], !prof !227

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7)
  %9 = load ptr, ptr %6, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i1 noundef zeroext false, ptr noundef %1, i1 noundef zeroext false, ptr noundef %9)
          to label %23 unwind label %10

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #16
  br label %25

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %15 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 437, i32 noundef 17, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #16
  br label %25

20:                                               ; preds = %2, %12
  %21 = phi i1 [ false, %12 ], [ true, %2 ]
  %22 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %21)
  br label %23

23:                                               ; preds = %20, %2, %5
  %24 = phi ptr [ null, %2 ], [ %8, %5 ], [ %22, %20 ]
  ret ptr %24

25:                                               ; preds = %18, %10
  %26 = phi { ptr, i32 } [ %11, %10 ], [ %19, %18 ]
  resume { ptr, i32 } %26
}

declare void @_ZN11xercesc_2_717MixedContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !216 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %12, !prof !218

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 22, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  br label %144

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !119
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18, !prof !217

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !182
  %21 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !147
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %25 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str, i32 noundef 458, i32 noundef 18, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #16
  br label %144

30:                                               ; preds = %18, %12
  %31 = and i32 %14, 15
  %32 = add nsw i32 %31, -6
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %135, label %34, !prof !218

34:                                               ; preds = %30
  br i1 %2, label %35, label %57, !prof !228

35:                                               ; preds = %34
  switch i32 %14, label %135 [
    i32 9, label %36
    i32 1, label %43
  ], !prof !229

36:                                               ; preds = %35
  %37 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %38)
  %40 = load ptr, ptr %37, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %39, ptr noundef nonnull %1, i1 noundef zeroext true, ptr noundef %40)
          to label %142 unwind label %41

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %39, ptr noundef %38) #16
  br label %144

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !119
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %135

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %51)
  %53 = load ptr, ptr %44, align 8, !tbaa !91
  %54 = load ptr, ptr %50, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %52, ptr noundef %53, i1 noundef zeroext true, ptr noundef %54)
          to label %142 unwind label %55

55:                                               ; preds = %49
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %51) #16
  br label %144

57:                                               ; preds = %34
  %58 = icmp eq i32 %14, 0
  br i1 %58, label %59, label %67, !prof !230

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %61 = load ptr, ptr %60, align 8, !tbaa !126
  %62 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %61)
  %63 = load ptr, ptr %15, align 8, !tbaa !99
  %64 = load ptr, ptr %60, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %62, i1 noundef zeroext false, ptr noundef %63, ptr noundef null, i32 noundef 0, ptr noundef %64)
          to label %142 unwind label %65

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %62, ptr noundef %61) #16
  br label %144

67:                                               ; preds = %57
  %68 = and i32 %14, 14
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %97, !prof !231

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %72, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !119
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %135, !prof !232

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !96
  %79 = icmp eq ptr %78, null
  br i1 %79, label %135, label %80, !prof !233

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %78, i64 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !119
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %135, !prof !234

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %86 = load ptr, ptr %85, align 8, !tbaa !126
  %87 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %86)
  %88 = load ptr, ptr %71, align 8, !tbaa !91
  %89 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !99
  %91 = load ptr, ptr %77, align 8, !tbaa !96
  %92 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !99
  %94 = load ptr, ptr %85, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %87, i1 noundef zeroext false, ptr noundef %90, ptr noundef %93, i32 noundef %14, ptr noundef %94)
          to label %142 unwind label %95, !prof !234

95:                                               ; preds = %84
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %87, ptr noundef %86) #16
  br label %144

97:                                               ; preds = %67
  switch i32 %14, label %128 [
    i32 3, label %98
    i32 2, label %98
    i32 1, label %98
    i32 9, label %121
  ], !prof !235

98:                                               ; preds = %97, %97, %97
  %99 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !91
  %101 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %100, i64 0, i32 6
  %102 = load i32, ptr %101, align 8, !tbaa !119
  switch i32 %102, label %135 [
    i32 0, label %103
    i32 9, label %113
  ], !prof !236

103:                                              ; preds = %98
  %104 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %105 = load ptr, ptr %104, align 8, !tbaa !126
  %106 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %105)
  %107 = load ptr, ptr %99, align 8, !tbaa !91
  %108 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !99
  %110 = load ptr, ptr %104, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %106, i1 noundef zeroext false, ptr noundef %109, ptr noundef null, i32 noundef %14, ptr noundef %110)
          to label %142 unwind label %111, !prof !237

111:                                              ; preds = %103
  %112 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %106, ptr noundef %105) #16
  br label %144

113:                                              ; preds = %98
  %114 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %115 = load ptr, ptr %114, align 8, !tbaa !126
  %116 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %115)
  %117 = load ptr, ptr %99, align 8, !tbaa !91
  %118 = load ptr, ptr %114, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %116, ptr noundef %117, i1 noundef zeroext false, ptr noundef %118)
          to label %142 unwind label %119

119:                                              ; preds = %113
  %120 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %116, ptr noundef %115) #16
  br label %144

121:                                              ; preds = %97
  %122 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %123 = load ptr, ptr %122, align 8, !tbaa !126
  %124 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %123)
  %125 = load ptr, ptr %122, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46) %124, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef %125)
          to label %142 unwind label %126, !prof !238

126:                                              ; preds = %121
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %124, ptr noundef %123) #16
  br label %144

128:                                              ; preds = %97
  %129 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %130 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %131 = load ptr, ptr %130, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %129, ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 22, ptr noundef %131)
          to label %132 unwind label %133

132:                                              ; preds = %128
  tail call void @__cxa_throw(ptr nonnull %129, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

133:                                              ; preds = %128
  %134 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %129) #16
  br label %144

135:                                              ; preds = %98, %30, %35, %43, %80, %76, %70
  %136 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %137 = load ptr, ptr %136, align 8, !tbaa !126
  %138 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %137)
  %139 = load ptr, ptr %136, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %138, i1 noundef zeroext false, ptr noundef nonnull %1, i1 noundef zeroext %2, ptr noundef %139)
          to label %142 unwind label %140, !prof !239

140:                                              ; preds = %135
  %141 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %138, ptr noundef %137) #16
  br label %144

142:                                              ; preds = %135, %121, %113, %103, %84, %59, %49, %36
  %143 = phi ptr [ %39, %36 ], [ %52, %49 ], [ %62, %59 ], [ %87, %84 ], [ %106, %103 ], [ %116, %113 ], [ %124, %121 ], [ %138, %135 ]
  ret ptr %143

144:                                              ; preds = %28, %41, %55, %65, %95, %111, %119, %126, %133, %140, %10
  %145 = phi { ptr, i32 } [ %11, %10 ], [ %29, %28 ], [ %141, %140 ], [ %42, %41 ], [ %56, %55 ], [ %66, %65 ], [ %96, %95 ], [ %112, %111 ], [ %120, %119 ], [ %127, %126 ], [ %134, %133 ]
  resume { ptr, i32 } %145
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(46), ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %7 = zext i1 %1 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_718SimpleContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %8 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %4, ptr %9, align 8, !tbaa !240
  %10 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  store i8 %7, ptr %10, align 4, !tbaa !241
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  store ptr %5, ptr %11, align 8, !tbaa !242
  %12 = icmp eq ptr %2, null
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  br i1 %12, label %17, label %14, !prof !107

14:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %21 unwind label %15, !prof !243

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %33

17:                                               ; preds = %6
  %18 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !147
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %18, ptr noundef %5)
          to label %21 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %33

21:                                               ; preds = %17, %14
  store ptr %13, ptr %8, align 8, !tbaa !104
  %22 = icmp eq ptr %3, null
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  br i1 %22, label %27, label %24, !prof !244

24:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %31 unwind label %25, !prof !234

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %21
  %28 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !147
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %28, ptr noundef %5)
          to label %31 unwind label %29, !prof !237

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  store ptr %23, ptr %32, align 8, !tbaa !109
  ret void

33:                                               ; preds = %29, %25, %19, %15
  %34 = phi ptr [ %23, %29 ], [ %23, %25 ], [ %13, %19 ], [ %13, %15 ]
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %26, %25 ], [ %20, %19 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %5) #16
  resume { ptr, i32 } %35
}

declare void @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo23resizeContentSpecOrgURIEv(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !77
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  %13 = load i32, ptr %2, align 4, !tbaa !150
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !167
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !147
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !147
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !147
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 4, !tbaa !150
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !245

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !126
  %43 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !167
  %45 = load ptr, ptr %42, align 8, !tbaa !77
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44)
  store ptr %12, ptr %43, align 8, !tbaa !167
  store i32 %4, ptr %2, align 4, !tbaa !150
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !219 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %186, label %6, !prof !220

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 1
  %8 = icmp eq i32 %3, 1
  %9 = and i1 %7, %8
  br i1 %9, label %186, label %10, !prof !246

10:                                               ; preds = %6
  %11 = icmp eq i32 %2, 0
  %12 = and i1 %11, %8
  br i1 %12, label %171, label %13, !prof !247

13:                                               ; preds = %10
  %14 = icmp eq i32 %3, -1
  %15 = and i1 %11, %14
  br i1 %15, label %171, label %16, !prof !248

16:                                               ; preds = %13
  %17 = and i1 %7, %14
  br i1 %17, label %171, label %18, !prof !249

18:                                               ; preds = %16
  br i1 %14, label %19, label %53

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %21)
  %23 = load ptr, ptr %20, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !116
  %25 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 2
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store ptr %1, ptr %26, align 8, !tbaa !91
  %27 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 5
  store ptr null, ptr %27, align 8, !tbaa !96
  %28 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 6
  store i32 3, ptr %28, align 8, !tbaa !119
  %29 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 7
  store i8 1, ptr %29, align 4, !tbaa !80
  %30 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 8
  store i8 1, ptr %30, align 1, !tbaa !94
  %31 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 9
  store i32 1, ptr %31, align 8, !tbaa !117
  %32 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %22, i64 0, i32 10
  store i32 1, ptr %32, align 4, !tbaa !118
  %33 = icmp sgt i32 %2, 1
  br i1 %33, label %34, label %186

34:                                               ; preds = %19
  %35 = add nsw i32 %2, -2
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %40, %36 ], [ %22, %34 ]
  %38 = phi i32 [ %51, %36 ], [ 0, %34 ]
  %39 = load ptr, ptr %20, align 8, !tbaa !126
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %39)
  %41 = load ptr, ptr %20, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %40, align 8, !tbaa !77
  %42 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !116
  %43 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 2
  %44 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store ptr %1, ptr %44, align 8, !tbaa !91
  %45 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 5
  store ptr %37, ptr %45, align 8, !tbaa !96
  %46 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 6
  store i32 5, ptr %46, align 8, !tbaa !119
  %47 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 7
  store i8 0, ptr %47, align 4, !tbaa !80
  %48 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 8
  store i8 1, ptr %48, align 1, !tbaa !94
  %49 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 9
  store i32 1, ptr %49, align 8, !tbaa !117
  %50 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %40, i64 0, i32 10
  store i32 1, ptr %50, align 4, !tbaa !118
  %51 = add nuw nsw i32 %38, 1
  %52 = icmp eq i32 %38, %35
  br i1 %52, label %186, label %36, !llvm.loop !250

53:                                               ; preds = %18
  br i1 %11, label %54, label %88

54:                                               ; preds = %53
  %55 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %56 = load ptr, ptr %55, align 8, !tbaa !126
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %56)
  %58 = load ptr, ptr %55, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %57, align 8, !tbaa !77
  %59 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !116
  %60 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 2
  %61 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  store ptr %1, ptr %61, align 8, !tbaa !91
  %62 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 5
  store ptr null, ptr %62, align 8, !tbaa !96
  %63 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 6
  store i32 1, ptr %63, align 8, !tbaa !119
  %64 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 7
  store i8 1, ptr %64, align 4, !tbaa !80
  %65 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 8
  store i8 1, ptr %65, align 1, !tbaa !94
  %66 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 9
  store i32 1, ptr %66, align 8, !tbaa !117
  %67 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %57, i64 0, i32 10
  store i32 1, ptr %67, align 4, !tbaa !118
  %68 = icmp sgt i32 %3, 1
  br i1 %68, label %69, label %186

69:                                               ; preds = %54
  %70 = add nsw i32 %3, -2
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi ptr [ %75, %71 ], [ %57, %69 ]
  %73 = phi i32 [ %86, %71 ], [ 0, %69 ]
  %74 = load ptr, ptr %55, align 8, !tbaa !126
  %75 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %74)
  %76 = load ptr, ptr %55, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %75, align 8, !tbaa !77
  %77 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 1
  store ptr %76, ptr %77, align 8, !tbaa !116
  %78 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 2
  %79 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  store ptr %72, ptr %79, align 8, !tbaa !91
  %80 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 5
  store ptr %57, ptr %80, align 8, !tbaa !96
  %81 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 6
  store i32 5, ptr %81, align 8, !tbaa !119
  %82 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 7
  store i8 1, ptr %82, align 4, !tbaa !80
  %83 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 8
  store i8 0, ptr %83, align 1, !tbaa !94
  %84 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 9
  store i32 1, ptr %84, align 8, !tbaa !117
  %85 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %75, i64 0, i32 10
  store i32 1, ptr %85, align 4, !tbaa !118
  %86 = add nuw nsw i32 %73, 1
  %87 = icmp eq i32 %73, %70
  br i1 %87, label %186, label %71, !llvm.loop !251

88:                                               ; preds = %53
  %89 = icmp sgt i32 %2, 1
  br i1 %89, label %90, label %124

90:                                               ; preds = %88
  %91 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %92 = load ptr, ptr %91, align 8, !tbaa !126
  %93 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %92)
  %94 = load ptr, ptr %91, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %93, align 8, !tbaa !77
  %95 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 1
  store ptr %94, ptr %95, align 8, !tbaa !116
  %96 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 2
  %97 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, i8 0, i64 16, i1 false)
  store ptr %1, ptr %97, align 8, !tbaa !91
  %98 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 5
  store ptr %1, ptr %98, align 8, !tbaa !96
  %99 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 6
  store i32 5, ptr %99, align 8, !tbaa !119
  %100 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 7
  store i8 1, ptr %100, align 4, !tbaa !80
  %101 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 8
  store i8 0, ptr %101, align 1, !tbaa !94
  %102 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 9
  store i32 1, ptr %102, align 8, !tbaa !117
  %103 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %93, i64 0, i32 10
  store i32 1, ptr %103, align 4, !tbaa !118
  %104 = icmp eq i32 %2, 2
  br i1 %104, label %124, label %105

105:                                              ; preds = %90
  %106 = add nsw i32 %2, -2
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi ptr [ %111, %107 ], [ %93, %105 ]
  %109 = phi i32 [ %122, %107 ], [ 1, %105 ]
  %110 = load ptr, ptr %91, align 8, !tbaa !126
  %111 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %110)
  %112 = load ptr, ptr %91, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %111, align 8, !tbaa !77
  %113 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !116
  %114 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 2
  %115 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %114, i8 0, i64 16, i1 false)
  store ptr %108, ptr %115, align 8, !tbaa !91
  %116 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 5
  store ptr %1, ptr %116, align 8, !tbaa !96
  %117 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 6
  store i32 5, ptr %117, align 8, !tbaa !119
  %118 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 7
  store i8 1, ptr %118, align 4, !tbaa !80
  %119 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 8
  store i8 0, ptr %119, align 1, !tbaa !94
  %120 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 9
  store i32 1, ptr %120, align 8, !tbaa !117
  %121 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %111, i64 0, i32 10
  store i32 1, ptr %121, align 4, !tbaa !118
  %122 = add nuw nsw i32 %109, 1
  %123 = icmp eq i32 %109, %106
  br i1 %123, label %124, label %107, !llvm.loop !252

124:                                              ; preds = %107, %90, %88
  %125 = phi ptr [ %1, %88 ], [ %93, %90 ], [ %111, %107 ]
  %126 = sub nsw i32 %3, %2
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %124
  %129 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %130 = load ptr, ptr %129, align 8, !tbaa !126
  %131 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %130)
  %132 = load ptr, ptr %129, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %131, align 8, !tbaa !77
  %133 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !116
  %134 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 2
  %135 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  store ptr %1, ptr %135, align 8, !tbaa !91
  %136 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 5
  store ptr null, ptr %136, align 8, !tbaa !96
  %137 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 6
  store i32 1, ptr %137, align 8, !tbaa !119
  %138 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 7
  store i8 0, ptr %138, align 4, !tbaa !80
  %139 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 8
  store i8 1, ptr %139, align 1, !tbaa !94
  %140 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 9
  store i32 1, ptr %140, align 8, !tbaa !117
  %141 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %131, i64 0, i32 10
  store i32 1, ptr %141, align 4, !tbaa !118
  %142 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %132)
  %143 = load ptr, ptr %129, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %142, align 8, !tbaa !77
  %144 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 1
  store ptr %143, ptr %144, align 8, !tbaa !116
  %145 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 2
  %146 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %145, i8 0, i64 16, i1 false)
  store ptr %125, ptr %146, align 8, !tbaa !91
  %147 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 5
  store ptr %131, ptr %147, align 8, !tbaa !96
  %148 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 6
  store i32 5, ptr %148, align 8, !tbaa !119
  %149 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 7
  store i8 1, ptr %149, align 4, !tbaa !80
  %150 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 8
  store i8 1, ptr %150, align 1, !tbaa !94
  %151 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 9
  store i32 1, ptr %151, align 8, !tbaa !117
  %152 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %142, i64 0, i32 10
  store i32 1, ptr %152, align 4, !tbaa !118
  %153 = icmp eq i32 %126, 1
  br i1 %153, label %186, label %154

154:                                              ; preds = %128, %154
  %155 = phi i32 [ %169, %154 ], [ 1, %128 ]
  %156 = phi ptr [ %158, %154 ], [ %142, %128 ]
  %157 = load ptr, ptr %129, align 8, !tbaa !126
  %158 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %157)
  %159 = load ptr, ptr %129, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %158, align 8, !tbaa !77
  %160 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 1
  store ptr %159, ptr %160, align 8, !tbaa !116
  %161 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 2
  %162 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %161, i8 0, i64 16, i1 false)
  store ptr %156, ptr %162, align 8, !tbaa !91
  %163 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 5
  store ptr %131, ptr %163, align 8, !tbaa !96
  %164 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 6
  store i32 5, ptr %164, align 8, !tbaa !119
  %165 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 7
  store i8 1, ptr %165, align 4, !tbaa !80
  %166 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 8
  store i8 0, ptr %166, align 1, !tbaa !94
  %167 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 9
  store i32 1, ptr %167, align 8, !tbaa !117
  %168 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %158, i64 0, i32 10
  store i32 1, ptr %168, align 4, !tbaa !118
  %169 = add nuw nsw i32 %155, 1
  %170 = icmp eq i32 %169, %126
  br i1 %170, label %186, label %154, !llvm.loop !253

171:                                              ; preds = %16, %13, %10
  %172 = phi i32 [ 1, %10 ], [ 2, %13 ], [ 3, %16 ]
  %173 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 29
  %174 = load ptr, ptr %173, align 8, !tbaa !126
  %175 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %174)
  %176 = load ptr, ptr %173, align 8, !tbaa !126
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %175, align 8, !tbaa !77
  %177 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 1
  store ptr %176, ptr %177, align 8, !tbaa !116
  %178 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 2
  %179 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %178, i8 0, i64 16, i1 false)
  store ptr %1, ptr %179, align 8, !tbaa !91
  %180 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 5
  store ptr null, ptr %180, align 8, !tbaa !96
  %181 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 6
  store i32 %172, ptr %181, align 8, !tbaa !119
  %182 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 7
  store i8 1, ptr %182, align 4, !tbaa !80
  %183 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 8
  store i8 1, ptr %183, align 1, !tbaa !94
  %184 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 9
  store i32 1, ptr %184, align 8, !tbaa !117
  %185 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %175, i64 0, i32 10
  store i32 1, ptr %185, align 4, !tbaa !118
  br label %186

186:                                              ; preds = %154, %71, %36, %171, %128, %54, %19, %6, %124, %4
  %187 = phi ptr [ null, %4 ], [ %1, %6 ], [ %125, %124 ], [ %22, %19 ], [ %57, %54 ], [ %142, %128 ], [ %175, %171 ], [ %40, %36 ], [ %75, %71 ], [ %158, %154 ]
  ret ptr %187
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 176, ptr noundef %0)
  invoke void @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %0)
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
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !102 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715ComplexTypeInfo12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !102 {
  ret ptr @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ComplexTypeInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #5 align 2 !prof !102 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i16, ptr %1, align 8, !tbaa !254
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %72

12:                                               ; preds = %2
  %13 = load i8, ptr %11, align 8, !tbaa !139, !range !88, !noundef !89
  %14 = icmp ne i8 %13, 0
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 1, !tbaa !140, !range !88, !noundef !89
  %18 = icmp ne i8 %17, 0
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %18)
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !141, !range !88, !noundef !89
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %22)
  %24 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 4
  %25 = load i8, ptr %24, align 1, !tbaa !142, !range !88, !noundef !89
  %26 = icmp ne i8 %25, 0
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  %29 = load i8, ptr %28, align 4, !tbaa !143, !range !88, !noundef !89
  %30 = icmp ne i8 %29, 0
  %31 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %30)
  %32 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !122
  %34 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %33)
  %35 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !144
  %37 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %36)
  %38 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !145
  %40 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %39)
  %41 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %42 = load i32, ptr %41, align 4, !tbaa !146
  %43 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %42)
  %44 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !123
  %46 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %45)
  %47 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !148
  %49 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %48)
  %50 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %51, i32 noundef 0, i1 noundef zeroext false)
  %52 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !129
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %53, i32 noundef 0, i1 noundef zeroext false)
  %54 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !130
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %55, i32 noundef 0, i1 noundef zeroext false)
  %56 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !257
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %57)
  %58 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !258
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %59)
  %60 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !120
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %61)
  %62 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !135
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %63)
  %64 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %65)
  %66 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %67 = load ptr, ptr %66, align 8, !tbaa !152
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %67)
  %68 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %69 = load ptr, ptr %68, align 8, !tbaa !163
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %69, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %70 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %71 = load ptr, ptr %70, align 8, !tbaa !151
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %133

72:                                               ; preds = %2
  %73 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %11)
  %74 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  %75 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %74)
  %76 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 3
  %77 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %76)
  %78 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 4
  %79 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %78)
  %80 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 5
  %81 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %80)
  %82 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %83 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %82)
  %84 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 7
  %85 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %84)
  %86 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 8
  %87 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %86)
  %88 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %89 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %88)
  %90 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %91 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %90)
  %92 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 11
  %93 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %92)
  %94 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %95 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %96 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %97 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %98 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  store ptr %97, ptr %98, align 8, !tbaa !257
  %99 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %100 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  store ptr %99, ptr %100, align 8, !tbaa !258
  %101 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %102 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE)
  store ptr %102, ptr %101, align 8, !tbaa !110
  %103 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %104 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE)
  store ptr %104, ptr %103, align 8, !tbaa !110
  %105 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %106 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE)
  store ptr %106, ptr %105, align 8, !tbaa !110
  %107 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 22
  %108 = load ptr, ptr %107, align 8, !tbaa !152
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %72
  %111 = load ptr, ptr %108, align 8, !tbaa !77
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8
  call void %113(ptr noundef nonnull align 8 dereferenceable(48) %108) #16
  br label %114

114:                                              ; preds = %110, %72
  %115 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_716SchemaAttDefList21classSchemaAttDefListE)
  store ptr %115, ptr %107, align 8, !tbaa !110
  %116 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17SchemaElementDeclEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %116, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %117 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %118 = load ptr, ptr %117, align 8, !tbaa !151
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %118) #16
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %118) #16
  br label %121

121:                                              ; preds = %120, %114
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %117, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %122 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 26
  %123 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 13
  store i32 0, ptr %123, align 4, !tbaa !150
  %124 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 12
  store i32 0, ptr %124, align 8, !tbaa !149
  %125 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, i8 0, i64 24, i1 false)
  %126 = load ptr, ptr %125, align 8, !tbaa !137
  %127 = icmp ne ptr %126, null
  %128 = load ptr, ptr %103, align 8
  %129 = icmp eq ptr %128, null
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  %132 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext false)
  store ptr %132, ptr %125, align 8, !tbaa !137
  br label %133

133:                                              ; preds = %131, %121, %12
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17SchemaElementDeclEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !102 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !147
  ret i32 %4
}

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !77
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #12 comdat align 2 !prof !262 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !157
  %9 = load ptr, ptr %0, align 8, !tbaa !153
  %10 = load ptr, ptr %6, align 8, !tbaa !77
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !263
  store i32 %12, ptr %3, align 4, !tbaa !147
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !264

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !194
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !265

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !159
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !193
  %28 = load ptr, ptr %25, align 8, !tbaa !77
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !266
  br i1 %31, label %36, label %32, !prof !265

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !267, !llvm.loop !268

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #12 comdat align 2 !prof !125 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = icmp eq ptr %6, null
  br i1 %4, label %52, label %8, !prof !136

8:                                                ; preds = %1
  br i1 %7, label %9, label %18

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !209
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  br label %20

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %17, %9 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  store ptr %22, ptr %5, align 8, !tbaa !206
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %38
  %27 = phi ptr [ %22, %24 ], [ %41, %38 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !210
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = load ptr, ptr %2, align 8, !tbaa !215
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !193
  %34 = load ptr, ptr %30, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef %33)
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load ptr, ptr %5, align 8, !tbaa !206
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !110
  store ptr %41, ptr %5, align 8, !tbaa !206
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %26, !llvm.loop !269

43:                                               ; preds = %26, %38, %20
  %44 = load ptr, ptr %5, align 8, !tbaa !206
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !210
  %49 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !157
  %51 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %50, ptr %51, align 8, !tbaa !209
  br label %82

52:                                               ; preds = %1
  br i1 %7, label %56, label %53, !prof !136

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  store ptr %55, ptr %5, align 8, !tbaa !206
  br label %56

56:                                               ; preds = %53, %52
  %57 = load ptr, ptr %5, align 8, !tbaa !206
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %82, !prof !136

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !209
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !209
  %63 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !210
  %65 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !157
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %82, label %68, !prof !131

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %64, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !156
  %71 = load i32, ptr %60, align 8, !tbaa !209
  br label %72

72:                                               ; preds = %68, %78
  %73 = phi i32 [ %71, %68 ], [ %79, %78 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %70, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !110
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81, !prof !270

78:                                               ; preds = %72
  %79 = add i32 %73, 1
  store i32 %79, ptr %60, align 8, !tbaa !209
  %80 = icmp eq i32 %79, %66
  br i1 %80, label %82, label %72, !prof !271, !llvm.loop !272

81:                                               ; preds = %72
  store ptr %76, ptr %5, align 8, !tbaa !206
  br label %82

82:                                               ; preds = %78, %59, %43, %46, %81, %56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !prof !125 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !213, !range !88, !noundef !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !136

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %1, %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !157
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !214
  %14 = load ptr, ptr %9, align 8, !tbaa !77
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %13)
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ %16, %5 ], [ -1, %1 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !209
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !77
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !77
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !131

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !153
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6)
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
  %11 = load ptr, ptr %0, align 8, !tbaa !153
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !157
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !77
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !133
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !156
  %21 = load i32, ptr %12, align 8, !tbaa !157
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !273

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !156
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !110
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !274, !llvm.loop !275
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !102 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !125 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !158
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !276

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !157
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !277

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 4, !tbaa !158
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !278

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = load i8, ptr %11, align 8, !tbaa !155, !range !88, !noundef !89
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !187

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !191
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !187

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(120) %26) #16, !prof !279
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !153
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !280
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !190, !llvm.loop !281

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !156
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !110
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !157
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !282, !llvm.loop !283

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !157
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !153
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !77
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %14 = load ptr, ptr %0, align 8, !tbaa !153
  store ptr %13, ptr %2, align 8, !tbaa !284
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !157
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = load ptr, ptr %2, align 8, !tbaa !284
  store ptr null, ptr %2, align 8, !tbaa !284
  store ptr %24, ptr %22, align 8, !tbaa !156
  store i32 %6, ptr %3, align 8, !tbaa !157
  %25 = load ptr, ptr %0, align 8, !tbaa !153
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !156
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = load ptr, ptr %20, align 8, !tbaa !159
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !193
  %42 = load ptr, ptr %0, align 8, !tbaa !153
  %43 = load ptr, ptr %39, align 8, !tbaa !77
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  store ptr %49, ptr %37, align 8, !tbaa !196
  store ptr %36, ptr %48, align 8, !tbaa !110
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !287

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !157
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !288

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = load ptr, ptr %0, align 8, !tbaa !284
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
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
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ComplexTypeInfo.cpp() #15 section ".text.startup" !prof !289 !PGOFuncName !290 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L14anyTypeCleanupE)
  ret void
}

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!75}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 282}
!36 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 339}
!37 = !{ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!38 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 30}
!39 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE, i64 60}
!40 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 60}
!41 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, i64 30}
!42 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716SchemaAttDefListC1EPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEPNS_13MemoryManagerE, i64 30}
!43 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, i64 30}
!44 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 30}
!45 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 30}
!46 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 24}
!47 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, i64 30}
!48 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 30}
!49 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, ptr @_ZN11xercesc_2_718SimpleContentModelD0Ev, i64 12}
!50 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, i64 30}
!51 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD0Ev, ptr @_ZN11xercesc_2_715ComplexTypeInfoD2Ev, i64 30}
!52 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfoD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 30}
!53 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9addAttDefEPNS_12SchemaAttDefE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, i64 13}
!54 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 13}
!55 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEC2EPNS_19RefHash2KeysTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEE8findNextEv, i64 30}
!56 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!57 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_, i64 24}
!58 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, i64 24}
!59 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, i64 24}
!60 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 24}
!61 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii, i64 157}
!62 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, i64 133}
!63 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo22convertContentSpecTreeEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 9}
!64 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo17buildContentModelEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, i64 24}
!65 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!66 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 12}
!67 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715AllContentModelC1EPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo16createChildModelEPNS_15ContentSpecNodeEb, ptr @_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, i64 11}
!69 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 24}
!70 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 15}
!71 = !{ptr @_ZN11xercesc_2_718SimpleContentModelC2EbPNS_5QNameES2_NS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 9}
!72 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo18expandContentModelEPNS_15ContentSpecNodeEii, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 25}
!73 = !{ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 30}
!74 = !{ptr @_GLOBAL__sub_I_ComplexTypeInfo.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!75 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!76 = !{!"function_entry_count", i64 339}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !79, i64 0}
!79 = !{!"Simple C++ TBAA"}
!80 = !{!81, !86, i64 52}
!81 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !82, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !85, i64 48, !86, i64 52, !86, i64 53, !87, i64 56, !87, i64 60}
!82 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !79, i64 0}
!85 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !84, i64 0}
!86 = !{!"bool", !84, i64 0}
!87 = !{!"int", !84, i64 0}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!"branch_weights", i32 9, i32 330}
!91 = !{!81, !83, i64 32}
!92 = !{!"branch_weights", i32 172, i32 158}
!93 = !{!"VP", i32 0, i64 158, i64 -8455366633691647299, i64 158}
!94 = !{!81, !86, i64 53}
!95 = !{!"branch_weights", i32 0, i32 339}
!96 = !{!81, !83, i64 40}
!97 = !{!"branch_weights", i32 215, i32 124}
!98 = !{!"VP", i32 0, i64 124, i64 -8455366633691647299, i64 124}
!99 = !{!81, !83, i64 16}
!100 = !{!"branch_weights", i32 167, i32 172}
!101 = !{!"VP", i32 0, i64 172, i64 7173745605608799217, i64 172}
!102 = !{!"function_entry_count", i64 0}
!103 = !{!"function_entry_count", i64 12}
!104 = !{!105, !83, i64 8}
!105 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !106, i64 0, !83, i64 8, !83, i64 16, !85, i64 24, !86, i64 28, !83, i64 32}
!106 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!107 = !{!"branch_weights", i32 0, i32 12}
!108 = !{!"VP", i32 0, i64 12, i64 7173745605608799217, i64 12}
!109 = !{!105, !83, i64 16}
!110 = !{!83, !83, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"short", !84, i64 0}
!113 = distinct !{!113, !114, !115}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!81, !83, i64 8}
!117 = !{!81, !87, i64 56}
!118 = !{!81, !87, i64 60}
!119 = !{!81, !85, i64 48}
!120 = !{!121, !83, i64 88}
!121 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !82, i64 0, !86, i64 8, !86, i64 9, !86, i64 10, !86, i64 11, !86, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168}
!122 = !{!121, !87, i64 16}
!123 = !{!121, !87, i64 32}
!124 = !{!121, !83, i64 104}
!125 = !{!"function_entry_count", i64 30}
!126 = !{!121, !83, i64 168}
!127 = !{!121, !83, i64 48}
!128 = !{!"VP", i32 0, i64 30, i64 -7405368087501025645, i64 30}
!129 = !{!121, !83, i64 56}
!130 = !{!121, !83, i64 64}
!131 = !{!"branch_weights", i32 0, i32 30}
!132 = !{!"branch_weights", i32 30, i32 1275}
!133 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!134 = !{!"VP", i32 1, i64 30, i64 65, i64 30}
!135 = !{!121, !83, i64 96}
!136 = !{!"branch_weights", i32 30, i32 0}
!137 = !{!121, !83, i64 136}
!138 = !{!121, !83, i64 144}
!139 = !{!121, !86, i64 8}
!140 = !{!121, !86, i64 9}
!141 = !{!121, !86, i64 10}
!142 = !{!121, !86, i64 11}
!143 = !{!121, !86, i64 12}
!144 = !{!121, !87, i64 20}
!145 = !{!121, !87, i64 24}
!146 = !{!121, !87, i64 28}
!147 = !{!87, !87, i64 0}
!148 = !{!121, !87, i64 36}
!149 = !{!121, !87, i64 40}
!150 = !{!121, !87, i64 44}
!151 = !{!121, !83, i64 128}
!152 = !{!121, !83, i64 112}
!153 = !{!154, !83, i64 0}
!154 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !83, i64 0, !86, i64 8, !83, i64 16, !87, i64 24, !87, i64 28, !83, i64 32}
!155 = !{!154, !86, i64 8}
!156 = !{!154, !83, i64 16}
!157 = !{!154, !87, i64 24}
!158 = !{!154, !87, i64 28}
!159 = !{!154, !83, i64 32}
!160 = !{!"branch_weights", i32 6, i32 24}
!161 = !{!"VP", i32 0, i64 24, i64 -8455366633691647299, i64 24}
!162 = !{!"VP", i32 0, i64 30, i64 -2706408784061173801, i64 30}
!163 = !{!121, !83, i64 120}
!164 = !{!"VP", i32 0, i64 24, i64 -3247400822517287263, i64 24}
!165 = !{!121, !83, i64 160}
!166 = !{!"VP", i32 0, i64 24, i64 -3964400911671940385, i64 12, i64 8885463498645214980, i64 11, i64 8301744561911859351, i64 1}
!167 = !{!121, !83, i64 152}
!168 = !{!"VP", i32 0, i64 30, i64 -5147776714887549805, i64 30}
!169 = !{!"function_entry_count", i64 13}
!170 = !{!171, !87, i64 56}
!171 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !172, i64 0, !87, i64 56, !176, i64 60, !177, i64 64, !178, i64 68, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112}
!172 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !82, i64 0, !173, i64 8, !174, i64 12, !175, i64 16, !86, i64 20, !86, i64 21, !87, i64 24, !83, i64 32, !83, i64 40, !83, i64 48}
!173 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !84, i64 0}
!174 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !84, i64 0}
!175 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !84, i64 0}
!176 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !84, i64 0}
!177 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !84, i64 0}
!178 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !84, i64 0}
!179 = !{!171, !83, i64 72}
!180 = !{!181, !83, i64 32}
!181 = !{!"_ZTSN11xercesc_2_75QNameE", !82, i64 0, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48}
!182 = !{!181, !87, i64 20}
!183 = !{!184, !87, i64 44}
!184 = !{!"_ZTSN11xercesc_2_716SchemaAttDefListE", !185, i64 0, !83, i64 16, !83, i64 24, !83, i64 32, !87, i64 40, !87, i64 44}
!185 = !{!"_ZTSN11xercesc_2_713XMLAttDefListE", !82, i64 0, !83, i64 8}
!186 = !{!184, !87, i64 40}
!187 = !{!"branch_weights", i32 0, i32 13}
!188 = !{!185, !83, i64 8}
!189 = !{!184, !83, i64 32}
!190 = !{!"branch_weights", i32 13, i32 0}
!191 = !{!192, !83, i64 0}
!192 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !83, i64 0, !83, i64 8, !83, i64 16, !87, i64 24}
!193 = !{!192, !83, i64 16}
!194 = !{!192, !87, i64 24}
!195 = !{!"VP", i32 0, i64 13, i64 8345045103670217670, i64 13}
!196 = !{!192, !83, i64 8}
!197 = !{!"function_entry_count", i64 189549}
!198 = !{!199, !87, i64 0}
!199 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !87, i64 0, !87, i64 4, !87, i64 8, !86, i64 12, !83, i64 16, !83, i64 24, !83, i64 32}
!200 = !{!199, !87, i64 4}
!201 = !{!199, !87, i64 8}
!202 = !{!199, !86, i64 12}
!203 = !{!199, !83, i64 16}
!204 = !{!199, !83, i64 32}
!205 = !{!86, !86, i64 0}
!206 = !{!207, !83, i64 16}
!207 = !{!"_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_12SchemaAttDefEEE", !208, i64 0, !86, i64 8, !83, i64 16, !87, i64 24, !83, i64 32, !83, i64 40, !83, i64 48}
!208 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12SchemaAttDefEEE"}
!209 = !{!207, !87, i64 24}
!210 = !{!207, !83, i64 32}
!211 = !{!172, !86, i64 20}
!212 = distinct !{!212, !114, !115}
!213 = !{!207, !86, i64 8}
!214 = !{!207, !83, i64 40}
!215 = !{!207, !83, i64 48}
!216 = !{!"function_entry_count", i64 24}
!217 = !{!"branch_weights", i32 24, i32 0}
!218 = !{!"branch_weights", i32 0, i32 24}
!219 = !{!"function_entry_count", i64 157}
!220 = !{!"branch_weights", i32 0, i32 157}
!221 = !{!"branch_weights", i32 86, i32 71}
!222 = !{!"branch_weights", i32 71, i32 0}
!223 = !{!"branch_weights", i32 9, i32 62}
!224 = !{!"VP", i32 0, i64 9, i64 -8455366633691647299, i64 9}
!225 = !{!"branch_weights", i32 61, i32 1}
!226 = !{!"branch_weights", i32 48, i32 14}
!227 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 1, i32 23}
!228 = !{!"branch_weights", i32 1, i32 23}
!229 = !{!"branch_weights", i32 1, i32 0, i32 0}
!230 = !{!"branch_weights", i32 0, i32 23}
!231 = !{!"branch_weights", i32 13, i32 10}
!232 = !{!"branch_weights", i32 3, i32 10}
!233 = !{!"branch_weights", i32 0, i32 3}
!234 = !{!"branch_weights", i32 3, i32 0}
!235 = !{!"branch_weights", i32 0, i32 7, i32 2, i32 0, i32 1}
!236 = !{!"branch_weights", i32 0, i32 9, i32 0}
!237 = !{!"branch_weights", i32 9, i32 0}
!238 = !{!"branch_weights", i32 1, i32 0}
!239 = !{!"branch_weights", i32 11, i32 0}
!240 = !{!105, !85, i64 24}
!241 = !{!105, !86, i64 28}
!242 = !{!105, !83, i64 32}
!243 = !{!"branch_weights", i32 12, i32 0}
!244 = !{!"branch_weights", i32 9, i32 3}
!245 = distinct !{!245, !114, !115}
!246 = !{!"branch_weights", i32 132, i32 25}
!247 = !{!"branch_weights", i32 12, i32 13}
!248 = !{!"branch_weights", i32 5, i32 8}
!249 = !{!"branch_weights", i32 8, i32 0}
!250 = distinct !{!250, !114, !115}
!251 = distinct !{!251, !114, !115}
!252 = distinct !{!252, !114, !115}
!253 = distinct !{!253, !114, !115}
!254 = !{!255, !112, i64 0}
!255 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !112, i64 0, !112, i64 2, !83, i64 8, !83, i64 16, !83, i64 24, !256, i64 32, !256, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !87, i64 96}
!256 = !{!"long", !84, i64 0}
!257 = !{!121, !83, i64 72}
!258 = !{!121, !83, i64 80}
!259 = !{!260, !83, i64 40}
!260 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !261, i64 8, !83, i64 16, !87, i64 24, !83, i64 32, !83, i64 40}
!261 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !84, i64 0}
!262 = !{!"function_entry_count", i64 349781}
!263 = !{!"VP", i32 0, i64 349781, i64 3024540859536234746, i64 349781}
!264 = !{!"branch_weights", i32 1, i32 207}
!265 = !{!"branch_weights", i32 349755, i32 0}
!266 = !{!"VP", i32 0, i64 349755, i64 -1309333655503989351, i64 349755}
!267 = !{!"branch_weights", i32 207, i32 2797833}
!268 = distinct !{!268, !114, !115}
!269 = distinct !{!269, !114, !115}
!270 = !{!"branch_weights", i32 870, i32 0}
!271 = !{!"branch_weights", i32 30, i32 840}
!272 = distinct !{!272, !114, !115}
!273 = !{!"branch_weights", i32 1, i32 239}
!274 = !{!"branch_weights", i32 239, i32 6721}
!275 = distinct !{!275, !114, !115}
!276 = !{!"branch_weights", i32 19, i32 11}
!277 = !{!"branch_weights", i32 1, i32 175}
!278 = !{!"branch_weights", i32 306, i32 13}
!279 = !{!"VP", i32 0, i64 13, i64 1590338718353004889, i64 13}
!280 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!281 = distinct !{!281, !114, !115}
!282 = !{!"branch_weights", i32 4929, i32 175}
!283 = distinct !{!283, !114, !115}
!284 = !{!285, !83, i64 0}
!285 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEE", !83, i64 0, !83, i64 8}
!286 = !{!285, !83, i64 8}
!287 = distinct !{!287, !114, !115}
!288 = distinct !{!288, !114, !115}
!289 = !{!"function_entry_count", i64 1}
!290 = !{!"ComplexTypeInfo.cpp;_GLOBAL__sub_I_ComplexTypeInfo.cpp"}
