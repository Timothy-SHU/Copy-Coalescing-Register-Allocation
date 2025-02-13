; ModuleID = 'GrammarResolver.cpp'
source_filename = "GrammarResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.1" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::ValueVectorOf.2" = type { i8, i32, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv = comdat any

$_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEEC2EPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_713XMLEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE
@_ZN11xercesc_2_715GrammarResolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715GrammarResolverD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !97
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 2
  store i8 1, ptr %5, align 2, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %2, ptr %8, align 8, !tbaa !99
  %9 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  store ptr %1, ptr %9, align 8, !tbaa !100
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2) #13
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, i32 noundef 29, i1 noundef zeroext true, ptr noundef %2) #13
          to label %12 unwind label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  store ptr %11, ptr %13, align 8, !tbaa !101
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2) #13
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, i32 noundef 29, i1 noundef zeroext false, ptr noundef %2) #13
          to label %15 unwind label %24

15:                                               ; preds = %12
  store ptr %14, ptr %7, align 8, !tbaa !102
  %16 = icmp eq ptr %1, null
  br i1 %16, label %19, label %17, !prof !103

17:                                               ; preds = %15
  %18 = load ptr, ptr %9, align 8, !tbaa !100
  br label %28

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2) #13
  invoke void @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(58) %20, ptr noundef %2) #13
          to label %21 unwind label %26

21:                                               ; preds = %19
  store ptr %20, ptr %9, align 8, !tbaa !100
  store i8 0, ptr %5, align 2, !tbaa !98
  br label %28

22:                                               ; preds = %3
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %39

24:                                               ; preds = %12
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %39

26:                                               ; preds = %19
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %39

28:                                               ; preds = %17, %21
  %29 = phi ptr [ %18, %17 ], [ %20, %21 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = getelementptr inbounds ptr, ptr %30, i64 15
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(17) %29) #13
  store ptr %33, ptr %6, align 8, !tbaa !106
  %34 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2) #13
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 29, ptr noundef %2, i1 noundef zeroext false) #13
          to label %35 unwind label %37

35:                                               ; preds = %28
  %36 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  store ptr %34, ptr %36, align 8, !tbaa !107
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %39

39:                                               ; preds = %37, %26, %24, %22
  %40 = phi ptr [ %34, %37 ], [ %20, %26 ], [ %14, %24 ], [ %11, %22 ]
  %41 = phi { ptr, i32 } [ %38, %37 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %2) #14
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !108 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !110
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !115
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !116
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !110
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !118
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !90 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !119
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !124
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !104
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #13
  store ptr %15, ptr %8, align 8, !tbaa !123
  %16 = load i32, ptr %7, align 8, !tbaa !122
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !125

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !110
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !104
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !114
  %21 = load i32, ptr %12, align 8, !tbaa !115
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !126

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !114
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !127
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !128, !llvm.loop !129
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !131 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolverD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !103

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !104
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 2
  %21 = load i8, ptr %20, align 2, !tbaa !98, !range !136, !noundef !137
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31, !prof !103

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !104
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(17) %25) #14
  br label %31

31:                                               ; preds = %23, %27, %19
  %32 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !103

35:                                               ; preds = %31
  tail call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %33) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %33) #14
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !107
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %38) #14
  br label %41

41:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = load ptr, ptr %3, align 8, !tbaa !104
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
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !104
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !139 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !140

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !141

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !117
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !114
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !142

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = load i8, ptr %9, align 8, !tbaa !113, !range !136, !noundef !137
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !145

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !146
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !104
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !110
  %34 = load ptr, ptr %33, align 8, !tbaa !104
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !147, !llvm.loop !148

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !114
  %40 = load i32, ptr %4, align 8, !tbaa !115
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !127
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !149, !llvm.loop !150

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !117
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %12) #13
  %14 = load ptr, ptr %11, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %14) #13
          to label %15 unwind label %17

15:                                               ; preds = %10
  store ptr %13, ptr %7, align 8, !tbaa !135
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #13
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  br label %19

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  br label %45

19:                                               ; preds = %15, %6
  %20 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %21 = tail call noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef %2) #13
  br label %43

22:                                               ; preds = %3
  %23 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !104
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #13
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %32 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 128, ptr noundef %33) #13
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1) #13
          to label %34 unwind label %41

34:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 44) #13
          to label %35 unwind label %41

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2) #13
          to label %36 unwind label %41

36:                                               ; preds = %35
  %37 = call noundef ptr @_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %23) #13
  %38 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  %39 = invoke noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef %38) #13
          to label %40 unwind label %41

40:                                               ; preds = %36
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %43

41:                                               ; preds = %36, %35, %34, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %45

43:                                               ; preds = %22, %25, %40, %19
  %44 = phi ptr [ %21, %19 ], [ %39, %40 ], [ null, %25 ], [ null, %22 ]
  ret ptr %44

45:                                               ; preds = %41, %17
  %46 = phi { ptr, i32 } [ %18, %17 ], [ %42, %41 ]
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !151 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !152

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !153
  %8 = load i16, ptr %1, align 2, !tbaa !153
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !155

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !156

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !153
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !157

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !158

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !153
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !159

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !160

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !153
  %28 = load i16, ptr %26, align 2, !tbaa !153
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !161, !llvm.loop !162

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !163 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !164

4:                                                ; preds = %2
  %5 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !127
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !164

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %1) #13
  br i1 %8, label %15, label %9, !prof !165

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !169

13:                                               ; preds = %9
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %1) #13
  br i1 %14, label %15, label %19, !prof !170

15:                                               ; preds = %13, %7
  %16 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %7 ], [ %10, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull %1) #13
  br label %19

19:                                               ; preds = %15, %2, %13, %9
  %20 = phi ptr [ null, %9 ], [ null, %13 ], [ null, %2 ], [ %18, %15 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.xercesc_2_7::Janitor", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %48, label %5, !prof !172

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %48, !prof !172

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 1, !tbaa !97, !range !136, !noundef !137
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %1) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(17) %21, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %25) #13
  %26 = load ptr, ptr %20, align 8, !tbaa !100
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(17) %26, ptr noundef %25) #13
          to label %31 unwind label %45

31:                                               ; preds = %19
  %32 = icmp eq ptr %30, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %15, align 8, !tbaa !102
  %35 = load ptr, ptr %30, align 8, !tbaa !104
  %36 = getelementptr inbounds ptr, ptr %35, i64 22
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %30) #13
          to label %39 unwind label %45

39:                                               ; preds = %33
  %40 = load ptr, ptr %38, align 8, !tbaa !104
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(16) %38) #13
          to label %44 unwind label %45

44:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef %43, ptr noundef nonnull %30) #13
          to label %47 unwind label %45

45:                                               ; preds = %44, %39, %33, %19
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %46

47:                                               ; preds = %44, %31
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %48

48:                                               ; preds = %47, %5, %14, %10, %2
  %49 = phi ptr [ null, %2 ], [ %30, %47 ], [ %8, %5 ], [ %17, %14 ], [ null, %10 ]
  ret ptr %49
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !174
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !176
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !178
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !179
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !104
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !180
  store i16 0, ptr %16, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !181 {
  store i32 0, ptr %0, align 8, !tbaa !174
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !182 {
  %3 = load i32, ptr %0, align 8, !tbaa !174
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !176
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !183

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %8 = load i32, ptr %0, align 8, !tbaa !174
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !174
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !184 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !185

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !153
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !186

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !153
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !187, !llvm.loop !188

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !174
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !176
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !189

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !174
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !174
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !174
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = load i32, ptr %0, align 8, !tbaa !174
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !153
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %3, align 8, !tbaa !104
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
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !192 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !193 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !194

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !195
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !192 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !199
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = load ptr, ptr %5, align 8, !tbaa !104
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !203

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !197
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = load ptr, ptr %20, align 8, !tbaa !104
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !205

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !206, !llvm.loop !207

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !208 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !199
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = load ptr, ptr %5, align 8, !tbaa !104
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !209

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !197
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = load ptr, ptr %20, align 8, !tbaa !104
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !210

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !211, !llvm.loop !212

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !213 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !214

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !146
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !217 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !218

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16, !prof !218

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !113, !range !136, !noundef !137
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !146
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !104
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !146
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !219
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !110
  %31 = load ptr, ptr %30, align 8, !tbaa !104
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  %37 = load i32, ptr %4, align 4, !tbaa !201
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !127
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #13
  %41 = load ptr, ptr %35, align 8, !tbaa !114
  %42 = load i32, ptr %4, align 4, !tbaa !201
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !127
  %45 = load i32, ptr %9, align 8, !tbaa !117
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !117
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !220 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = load ptr, ptr %5, align 8, !tbaa !104
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !221

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !118
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !219
  %23 = load ptr, ptr %20, align 8, !tbaa !104
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !222

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !223, !llvm.loop !224

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !115
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !110
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !104
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !110
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !115
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !114
  store i32 %5, ptr %3, align 8, !tbaa !115
  %23 = load ptr, ptr %0, align 8, !tbaa !110
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !114
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !127
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = load ptr, ptr %18, align 8, !tbaa !118
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !219
  %41 = load ptr, ptr %0, align 8, !tbaa !110
  %42 = load ptr, ptr %38, align 8, !tbaa !104
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  store ptr %48, ptr %36, align 8, !tbaa !143
  store ptr %35, ptr %47, align 8, !tbaa !127
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !225

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !115
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !226

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !217 {
  store ptr %2, ptr %0, align 8, !tbaa !146
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !143
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !227
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !131 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  store ptr null, ptr %0, align 8, !tbaa !227
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !131 {
  %3 = load ptr, ptr %0, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !104
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !227
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !229
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !131 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !104
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !217 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %44, label %4, !prof !145

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = load ptr, ptr %1, align 8, !tbaa !104
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %11 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %44, !prof !218

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 1, !tbaa !97, !range !136, !noundef !137
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %44, label %17, !prof !218

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = load ptr, ptr %1, align 8, !tbaa !104
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %24 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %23) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(17) %28, ptr noundef nonnull %1) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %18, align 8, !tbaa !102
  %36 = load ptr, ptr %32, align 8, !tbaa !104
  %37 = getelementptr inbounds ptr, ptr %36, i64 22
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %32) #13
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(16) %39) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %43, ptr noundef nonnull %32) #13
  br label %44

44:                                               ; preds = %4, %17, %34, %26, %13, %2
  %45 = phi ptr [ null, %2 ], [ %11, %4 ], [ %24, %17 ], [ %32, %34 ], [ null, %26 ], [ null, %13 ]
  ret ptr %45
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !190 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !230
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !233
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !234
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !235
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !236
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !237

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !236
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 527, i32 noundef 15, ptr noundef %14) #13
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #11
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !190 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !238

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  store ptr %7, ptr %2, align 8, !tbaa !233
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !239

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !234
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !234
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !115
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !157

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !240

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !234
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !241, !llvm.loop !242

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !233
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !190 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !230, !range !136, !noundef !137
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !243

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !235
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !244 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !245

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !234
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !235
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !243

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6, !prof !247

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 575, i32 noundef 30, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !233
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !234
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !233
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !190 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !131 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !131 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver30getReferencedGrammarEnumeratorEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver26getCachedGrammarEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(17) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715GrammarResolver17containsNameSpaceEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = alloca %"class.xercesc_2_7::Janitor", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %1) #13
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 1, !tbaa !97, !range !136, !noundef !137
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull %1) #13
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(17) %19, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %23) #13
  %24 = load ptr, ptr %18, align 8, !tbaa !100
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(17) %24, ptr noundef %23) #13
          to label %29 unwind label %31

29:                                               ; preds = %17
  %30 = icmp eq ptr %28, null
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %30, label %33, label %34

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %32

33:                                               ; preds = %29, %9
  br label %34

34:                                               ; preds = %29, %13, %5, %2, %33
  %35 = phi i1 [ true, %29 ], [ false, %33 ], [ false, %2 ], [ true, %5 ], [ true, %13 ]
  ret i1 %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !131 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !131 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = load ptr, ptr %5, align 8, !tbaa !104
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !118
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !219
  %23 = load ptr, ptr %20, align 8, !tbaa !104
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !248

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !217 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %34, label %5, !prof !145

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 8, !tbaa !91, !range !136, !noundef !137
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8, !prof !218

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef nonnull %1) #13
  br i1 %14, label %34, label %15

15:                                               ; preds = %8, %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = load ptr, ptr %1, align 8, !tbaa !104
  %19 = getelementptr inbounds ptr, ptr %18, i64 22
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(16) %21) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %25, ptr noundef nonnull %1) #13
  %26 = load ptr, ptr %1, align 8, !tbaa !104
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34, !prof !249

31:                                               ; preds = %15
  %32 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %1, ptr %3, align 8, !tbaa !127
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %34

34:                                               ; preds = %15, %31, %2, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !190 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !127
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !122
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !237

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !104
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #13
  %22 = load i32, ptr %3, align 4, !tbaa !121
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !124
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  %31 = load ptr, ptr %28, align 8, !tbaa !104
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  store ptr %21, ptr %29, align 8, !tbaa !123
  store i32 %13, ptr %6, align 8, !tbaa !122
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !123
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !127
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !127
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !250

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %7) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %9, %1
  store ptr null, ptr %6, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(17) %3) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = alloca %"class.xercesc_2_7::ValueVectorOf.2", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %7, i1 noundef zeroext false, ptr noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %10 = load ptr, ptr %8, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8, ptr noundef %10, i1 noundef zeroext false) #13
          to label %11 unwind label %23

11:                                               ; preds = %1
  %12 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %33

16:                                               ; preds = %11, %20
  %17 = phi i32 [ %21, %20 ], [ 0, %11 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %18 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
          to label %19 unwind label %25

19:                                               ; preds = %16
  store ptr %18, ptr %4, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %20 unwind label %25

20:                                               ; preds = %19
  %21 = add i32 %17, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %22 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #13
  br i1 %22, label %16, label %27, !llvm.loop !251

23:                                               ; preds = %1
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %72

25:                                               ; preds = %19, %16
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %70

27:                                               ; preds = %20
  %28 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %29) #13
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  br label %34

33:                                               ; preds = %67, %13, %27
  call void @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  ret void

34:                                               ; preds = %31, %67
  %35 = phi i32 [ 0, %31 ], [ %68, %67 ]
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %35) #13
          to label %37 unwind label %51

37:                                               ; preds = %34
  %38 = load ptr, ptr %36, align 8, !tbaa !127
  %39 = load ptr, ptr %6, align 8, !tbaa !101
  %40 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef %38) #13
          to label %41 unwind label %53

41:                                               ; preds = %37
  %42 = load ptr, ptr %32, align 8, !tbaa !100
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef zeroext i1 %45(ptr noundef nonnull align 8 dereferenceable(17) %42, ptr noundef %40) #13
          to label %47 unwind label %53

47:                                               ; preds = %41
  br i1 %46, label %48, label %55

48:                                               ; preds = %47
  %49 = load ptr, ptr %6, align 8, !tbaa !101
  %50 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %38) #13
          to label %67 unwind label %53

51:                                               ; preds = %34
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %70

53:                                               ; preds = %55, %48, %41, %37
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %70

55:                                               ; preds = %47
  %56 = load ptr, ptr %40, align 8, !tbaa !104
  %57 = getelementptr inbounds ptr, ptr %56, i64 5
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %40) #13
          to label %60 unwind label %53

60:                                               ; preds = %55
  %61 = icmp eq i32 %59, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = load ptr, ptr %28, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr %40, ptr %5, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %64 unwind label %65

64:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %67

65:                                               ; preds = %62
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %70

67:                                               ; preds = %60, %64, %48
  %68 = add nuw i32 %35, 1
  %69 = icmp eq i32 %35, %17
  br i1 %69, label %33, label %34, !llvm.loop !252

70:                                               ; preds = %51, %65, %53, %25
  %71 = phi { ptr, i32 } [ %26, %25 ], [ %52, %51 ], [ %54, %53 ], [ %66, %65 ]
  call void @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  br label %72

72:                                               ; preds = %70, %23
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  resume { ptr, i32 } %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !90 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !253
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !255
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !256
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !257
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !258
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !104
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #13
  store ptr %15, ptr %8, align 8, !tbaa !257
  %16 = load i32, ptr %7, align 8, !tbaa !256
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 30, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !233
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !219
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !246 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !257
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !255
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !127
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !247

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !258
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !257
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = load ptr, ptr %0, align 8, !tbaa !110
  %8 = load ptr, ptr %4, align 8, !tbaa !104
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !118
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = load ptr, ptr %18, align 8, !tbaa !104
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20) #13
  br i1 %24, label %33, label %49

25:                                               ; preds = %49
  %26 = load ptr, ptr %3, align 8, !tbaa !118
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %52, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !219
  %29 = load ptr, ptr %26, align 8, !tbaa !104
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28) #13
  br i1 %32, label %33, label %49, !llvm.loop !259

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %52, %25 ]
  %35 = phi ptr [ null, %17 ], [ %50, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds ptr, ptr %39, i64 %13
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %42 = select i1 %36, ptr %40, ptr %41
  store ptr %38, ptr %42, align 8, !tbaa !127
  %43 = load ptr, ptr %34, align 8, !tbaa !146
  %44 = load ptr, ptr %0, align 8, !tbaa !110
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull %34) #13
  %48 = icmp eq ptr %43, null
  br i1 %48, label %54, label %60

49:                                               ; preds = %17, %25
  %50 = phi ptr [ %52, %25 ], [ %15, %17 ]
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !127
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %25, !llvm.loop !259

54:                                               ; preds = %49, %2, %33
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %56 = load ptr, ptr %0, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 50, ptr noundef %56) #13
          to label %57 unwind label %58

57:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

58:                                               ; preds = %54
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %55) #11
  resume { ptr, i32 } %59

60:                                               ; preds = %33
  ret ptr %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !257
  %6 = load ptr, ptr %3, align 8, !tbaa !104
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
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !256
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !260

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !258
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !104
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #13
  %22 = load i32, ptr %3, align 4, !tbaa !255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !258
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.2", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !257
  %31 = load ptr, ptr %28, align 8, !tbaa !104
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  store ptr %21, ptr %29, align 8, !tbaa !257
  store i32 %13, ptr %6, align 8, !tbaa !256
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !257
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !127
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !127
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !261

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !131 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !131 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !90 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xercesc_2_715GrammarResolver5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  store i8 %3, ptr %0, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !131 {
  %3 = load i8, ptr %0, align 8, !tbaa !91, !range !136, !noundef !137
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %1) #13
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1) #13
  br label %30

19:                                               ; preds = %5
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %1) #13
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load ptr, ptr %20, align 8, !tbaa !101
  %25 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %1) #13
  br label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %1) #13
  br label %30

30:                                               ; preds = %17, %13, %23, %19, %26
  %31 = phi ptr [ %29, %26 ], [ %11, %17 ], [ %11, %13 ], [ %25, %23 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = load ptr, ptr %0, align 8, !tbaa !110
  %8 = load ptr, ptr %4, align 8, !tbaa !104
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !118
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = load ptr, ptr %18, align 8, !tbaa !104
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20) #13
  br i1 %24, label %33, label %61

25:                                               ; preds = %61
  %26 = load ptr, ptr %3, align 8, !tbaa !118
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %64, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !219
  %29 = load ptr, ptr %26, align 8, !tbaa !104
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28) #13
  br i1 %32, label %33, label %61, !llvm.loop !262

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %64, %25 ]
  %35 = phi ptr [ null, %17 ], [ %62, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !127
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !113, !range !136, !noundef !137
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !146
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !104
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47) #14
  br label %53

53:                                               ; preds = %46, %49, %33
  %54 = load ptr, ptr %0, align 8, !tbaa !110
  %55 = load ptr, ptr %54, align 8, !tbaa !104
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull %34) #13
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !117
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 8, !tbaa !117
  ret void

61:                                               ; preds = %17, %25
  %62 = phi ptr [ %64, %25 ], [ %15, %17 ]
  %63 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !127
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %25, !llvm.loop !262

66:                                               ; preds = %61, %2
  %67 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %68 = load ptr, ptr %0, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 50, ptr noundef %68) #13
          to label %69 unwind label %70

69:                                               ; preds = %66
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

70:                                               ; preds = %66
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %67) #11
  resume { ptr, i32 } %71
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %4 = alloca ptr, align 8
  %5 = load i8, ptr %0, align 8, !tbaa !91, !range !136, !noundef !137
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 1, !range !136
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %130, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %12 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = getelementptr inbounds ptr, ptr %14, i64 14
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(17) %13, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  %18 = load i8, ptr %2, align 1, !tbaa !263, !range !136, !noundef !137
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !264
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #13
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store ptr %17, ptr %21, align 8, !tbaa !264
  br label %126

34:                                               ; preds = %24, %20
  store ptr %17, ptr %21, align 8, !tbaa !264
  %35 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !107
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %37 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %38, i1 noundef zeroext false, ptr noundef %40) #13
  %41 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  br i1 %41, label %42, label %60

42:                                               ; preds = %34, %58
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
          to label %44 unwind label %54

44:                                               ; preds = %42
  %45 = load ptr, ptr %43, align 8, !tbaa !104
  %46 = getelementptr inbounds ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef i32 %47(ptr noundef nonnull align 8 dereferenceable(8) %43) #13
          to label %49 unwind label %54

49:                                               ; preds = %44
  %50 = icmp eq i32 %48, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = load ptr, ptr %35, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr %43, ptr %4, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %53 unwind label %56

53:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %58

54:                                               ; preds = %44, %42
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %85

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %85

58:                                               ; preds = %53, %49
  %59 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  br i1 %59, label %42, label %60, !llvm.loop !265

60:                                               ; preds = %58, %34
  %61 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !138
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %62) #14
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %62) #14
  br label %65

65:                                               ; preds = %64, %60
  %66 = load ptr, ptr %35, align 8, !tbaa !107
  %67 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %66) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %39, align 8, !tbaa !99
  %71 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %70) #13
          to label %72 unwind label %77

72:                                               ; preds = %69
  %73 = load ptr, ptr %21, align 8, !tbaa !264
  %74 = load ptr, ptr %39, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %71, ptr noundef %73, ptr noundef nonnull %0, ptr noundef %74) #13
          to label %75 unwind label %79

75:                                               ; preds = %72
  store ptr %71, ptr %61, align 8, !tbaa !138
  %76 = load ptr, ptr %35, align 8, !tbaa !107
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %76) #13
  br label %82

77:                                               ; preds = %69
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %70) #14
  br label %85

81:                                               ; preds = %65
  store ptr null, ptr %61, align 8, !tbaa !138
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi ptr [ %61, %75 ], [ %21, %81 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !127
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %126

85:                                               ; preds = %54, %56, %79, %77
  %86 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ], [ %57, %56 ], [ %55, %54 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %128

87:                                               ; preds = %11
  %88 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !107
  %90 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %89) #13
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !138
  %94 = icmp eq ptr %93, null
  br i1 %91, label %113, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !99
  %98 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %97) #13
  br i1 %94, label %104, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %92, align 8, !tbaa !138
  %101 = load ptr, ptr %96, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %98, ptr noundef %100, ptr noundef nonnull %0, ptr noundef %101) #13
          to label %110 unwind label %102

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %98, ptr noundef %97) #14
  br label %128

104:                                              ; preds = %95
  %105 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !264
  %107 = load ptr, ptr %96, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %98, ptr noundef %106, ptr noundef nonnull %0, ptr noundef %107) #13
          to label %110 unwind label %108

108:                                              ; preds = %104
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %98, ptr noundef %97) #14
  br label %128

110:                                              ; preds = %104, %99
  store ptr %98, ptr %92, align 8, !tbaa !138
  %111 = load ptr, ptr %88, align 8, !tbaa !107
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %111) #13
  %112 = load ptr, ptr %92, align 8, !tbaa !138
  br label %126

113:                                              ; preds = %87
  br i1 %94, label %114, label %126

114:                                              ; preds = %113
  %115 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %116 = load ptr, ptr %115, align 8, !tbaa !264
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !99
  %121 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %120) #13
  %122 = load ptr, ptr %119, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %121, ptr noundef null, ptr noundef nonnull %0, ptr noundef %122) #13
          to label %123 unwind label %124

123:                                              ; preds = %118
  store ptr %121, ptr %92, align 8, !tbaa !138
  br label %126

124:                                              ; preds = %118
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %121, ptr noundef %120) #14
  br label %128

126:                                              ; preds = %114, %113, %123, %110, %82, %33
  %127 = phi ptr [ %84, %82 ], [ %17, %33 ], [ %112, %110 ], [ %121, %123 ], [ %93, %113 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %158

128:                                              ; preds = %124, %108, %102, %85
  %129 = phi { ptr, i32 } [ %86, %85 ], [ %103, %102 ], [ %109, %108 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %160

130:                                              ; preds = %1
  %131 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %132 = load ptr, ptr %131, align 8, !tbaa !107
  %133 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %132) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !99
  %138 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %137) #13
  %139 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !138
  %141 = load ptr, ptr %136, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %138, ptr noundef %140, ptr noundef nonnull %0, ptr noundef %141) #13
          to label %142 unwind label %144

142:                                              ; preds = %135
  %143 = load ptr, ptr %131, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %143) #13
  store ptr %138, ptr %139, align 8, !tbaa !138
  br label %158

144:                                              ; preds = %135
  %145 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %138, ptr noundef %137) #14
  br label %160

146:                                              ; preds = %130
  %147 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !138
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !99
  %153 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %152) #13
  %154 = load ptr, ptr %151, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %153, ptr noundef null, ptr noundef nonnull %0, ptr noundef %154) #13
          to label %155 unwind label %156

155:                                              ; preds = %150
  store ptr %153, ptr %147, align 8, !tbaa !138
  br label %158

156:                                              ; preds = %150
  %157 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %153, ptr noundef %152) #14
  br label %160

158:                                              ; preds = %142, %155, %146, %126
  %159 = phi ptr [ %127, %126 ], [ %148, %146 ], [ %153, %155 ], [ %138, %142 ]
  ret ptr %159

160:                                              ; preds = %156, %144, %128
  %161 = phi { ptr, i32 } [ %129, %128 ], [ %145, %144 ], [ %157, %156 ]
  resume { ptr, i32 } %161
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !121
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!89}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!36 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 11}
!38 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, i64 6}
!39 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEC2EjPNS_13MemoryManagerEb, i64 3}
!41 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 9}
!42 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj, i64 9}
!43 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!44 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 9}
!45 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!46 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!47 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev, i64 4}
!49 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 7}
!50 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_77XSModelD1Ev, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEED2Ev, i64 2}
!52 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, i64 9}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 9}
!54 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv, i64 12}
!55 = !{ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv, i64 178}
!56 = !{ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 104}
!57 = !{ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv, i64 496163}
!58 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!59 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!60 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!61 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!62 = !{ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 181}
!63 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!64 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj, i64 496167}
!65 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv, i64 1}
!66 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE14findBucketElemEPKvRj, i64 4}
!67 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_, ptr @_ZN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEC2EPvPS1_PS2_, i64 3}
!68 = !{ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv, i64 3}
!69 = !{ptr @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, i64 1}
!70 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEEC2Ev, i64 1}
!71 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 1}
!73 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev, i64 1}
!74 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!75 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!76 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 2}
!77 = !{ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_, i64 3}
!78 = !{ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_, i64 1}
!79 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj, i64 1}
!80 = !{ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 3}
!81 = !{ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE17removeAllElementsEv, i64 3}
!82 = !{ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, ptr @_ZN11xercesc_2_77XSModelD1Ev, i64 2}
!83 = !{ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!84 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!85 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE10addElementERKS1_, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj, i64 2}
!86 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!87 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!88 = !{ptr @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb, ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, i64 3}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 3}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !93, i64 0, !93, i64 1, !93, i64 2, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72}
!93 = !{!"bool", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C++ TBAA"}
!96 = !{!"any pointer", !94, i64 0}
!97 = !{!92, !93, i64 1}
!98 = !{!92, !93, i64 2}
!99 = !{!92, !96, i64 40}
!100 = !{!92, !96, i64 48}
!101 = !{!92, !96, i64 16}
!102 = !{!92, !96, i64 24}
!103 = !{!"branch_weights", i32 4, i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"vtable pointer", !95, i64 0}
!106 = !{!92, !96, i64 8}
!107 = !{!92, !96, i64 72}
!108 = !{!"function_entry_count", i64 5836268}
!109 = !{!"function_entry_count", i64 9}
!110 = !{!111, !96, i64 0}
!111 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_7GrammarEEE", !96, i64 0, !93, i64 8, !96, i64 16, !112, i64 24, !112, i64 28, !112, i64 32, !96, i64 40}
!112 = !{!"int", !94, i64 0}
!113 = !{!111, !93, i64 8}
!114 = !{!111, !96, i64 16}
!115 = !{!111, !112, i64 24}
!116 = !{!111, !112, i64 28}
!117 = !{!111, !112, i64 32}
!118 = !{!111, !96, i64 40}
!119 = !{!120, !93, i64 0}
!120 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEE", !93, i64 0, !112, i64 4, !112, i64 8, !96, i64 16, !96, i64 24}
!121 = !{!120, !112, i64 4}
!122 = !{!120, !112, i64 8}
!123 = !{!120, !96, i64 16}
!124 = !{!120, !96, i64 24}
!125 = !{!"branch_weights", i32 1, i32 10}
!126 = !{!"branch_weights", i32 1, i32 159}
!127 = !{!96, !96, i64 0}
!128 = !{!"branch_weights", i32 159, i32 4033}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"function_entry_count", i64 0}
!132 = !{!133, !96, i64 40}
!133 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !134, i64 8, !96, i64 16, !112, i64 24, !96, i64 32, !96, i64 40}
!134 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !94, i64 0}
!135 = !{!92, !96, i64 32}
!136 = !{i8 0, i8 2}
!137 = !{}
!138 = !{!92, !96, i64 56}
!139 = !{!"function_entry_count", i64 12}
!140 = !{!"branch_weights", i32 10, i32 4}
!141 = !{!"branch_weights", i32 1, i32 127}
!142 = !{!"branch_weights", i32 83, i32 5}
!143 = !{!144, !96, i64 8}
!144 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEE", !96, i64 0, !96, i64 8, !96, i64 16}
!145 = !{!"branch_weights", i32 1, i32 5}
!146 = !{!144, !96, i64 0}
!147 = !{!"branch_weights", i32 5, i32 0}
!148 = distinct !{!148, !130}
!149 = !{!"branch_weights", i32 2689, i32 127}
!150 = distinct !{!150, !130}
!151 = !{!"function_entry_count", i64 1231717351}
!152 = !{!"branch_weights", i32 621, i32 -1469098093}
!153 = !{!154, !154, i64 0}
!154 = !{!"short", !94, i64 0}
!155 = !{!"branch_weights", i32 408901017, i32 1}
!156 = !{!"branch_weights", i32 267, i32 4}
!157 = !{!"branch_weights", i32 1, i32 4}
!158 = !{!"branch_weights", i32 156, i32 112}
!159 = !{!"branch_weights", i32 1, i32 112}
!160 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!161 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!162 = distinct !{!162, !130}
!163 = !{!"function_entry_count", i64 128}
!164 = !{!"branch_weights", i32 1, i32 129}
!165 = !{!"branch_weights", i32 75, i32 55}
!166 = !{!167, !96, i64 8}
!167 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !168, i64 0, !96, i64 8, !96, i64 16}
!168 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!169 = !{!"branch_weights", i32 2, i32 54}
!170 = !{!"branch_weights", i32 33, i32 22}
!171 = !{!"function_entry_count", i64 496163}
!172 = !{!"branch_weights", i32 1, i32 496164}
!173 = !{!"function_entry_count", i64 496321}
!174 = !{!175, !112, i64 0}
!175 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !112, i64 0, !112, i64 4, !112, i64 8, !93, i64 12, !96, i64 16, !96, i64 24, !96, i64 32}
!176 = !{!175, !112, i64 4}
!177 = !{!175, !112, i64 8}
!178 = !{!175, !93, i64 12}
!179 = !{!175, !96, i64 16}
!180 = !{!175, !96, i64 32}
!181 = !{!"function_entry_count", i64 190774}
!182 = !{!"function_entry_count", i64 7992849}
!183 = !{!"branch_weights", i32 1, i32 7992850}
!184 = !{!"function_entry_count", i64 789922}
!185 = !{!"branch_weights", i32 1, i32 789923}
!186 = !{!"branch_weights", i32 285, i32 789639}
!187 = !{!"branch_weights", i32 789639, i32 41628304}
!188 = distinct !{!188, !130}
!189 = !{!"branch_weights", i32 789637, i32 3}
!190 = !{!"function_entry_count", i64 1}
!191 = !{!"function_entry_count", i64 10769804}
!192 = !{!"function_entry_count", i64 181}
!193 = !{!"function_entry_count", i64 108}
!194 = !{!"branch_weights", i32 1, i32 109}
!195 = !{!196, !96, i64 0}
!196 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !96, i64 0, !96, i64 8, !96, i64 16}
!197 = !{!198, !96, i64 40}
!198 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !96, i64 0, !93, i64 8, !96, i64 16, !112, i64 24, !112, i64 28, !112, i64 32, !96, i64 40}
!199 = !{!198, !112, i64 24}
!200 = !{!198, !96, i64 0}
!201 = !{!112, !112, i64 0}
!202 = !{!198, !96, i64 16}
!203 = !{!"branch_weights", i32 1, i32 151}
!204 = !{!196, !96, i64 16}
!205 = !{!"branch_weights", i32 107, i32 43}
!206 = !{!"branch_weights", i32 151, i32 147}
!207 = distinct !{!207, !130}
!208 = !{!"function_entry_count", i64 170}
!209 = !{!"branch_weights", i32 1, i32 251}
!210 = !{!"branch_weights", i32 109, i32 30}
!211 = !{!"branch_weights", i32 251, i32 301}
!212 = distinct !{!212, !130}
!213 = !{!"function_entry_count", i64 496167}
!214 = !{!"branch_weights", i32 5, i32 496164}
!215 = !{!216, !96, i64 0}
!216 = !{!"_ZTSN11xercesc_2_77JanitorINS_21XMLGrammarDescriptionEEE", !96, i64 0}
!217 = !{!"function_entry_count", i64 4}
!218 = !{!"branch_weights", i32 5, i32 1}
!219 = !{!144, !96, i64 16}
!220 = !{!"function_entry_count", i64 496171}
!221 = !{!"branch_weights", i32 1, i32 143}
!222 = !{!"branch_weights", i32 496164, i32 1}
!223 = !{!"branch_weights", i32 143, i32 7938481}
!224 = distinct !{!224, !130}
!225 = distinct !{!225, !130}
!226 = distinct !{!226, !130}
!227 = !{!228, !96, i64 0}
!228 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEEE", !96, i64 0, !96, i64 8}
!229 = !{!228, !96, i64 8}
!230 = !{!231, !93, i64 8}
!231 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE", !232, i64 0, !93, i64 8, !96, i64 16, !112, i64 24, !96, i64 32, !96, i64 40}
!232 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE"}
!233 = !{!231, !96, i64 16}
!234 = !{!231, !112, i64 24}
!235 = !{!231, !96, i64 32}
!236 = !{!231, !96, i64 40}
!237 = !{!"branch_weights", i32 1, i32 2}
!238 = !{!"branch_weights", i32 2, i32 3}
!239 = !{!"branch_weights", i32 1431655765, i32 715827883}
!240 = !{!"branch_weights", i32 28, i32 3}
!241 = !{!"branch_weights", i32 2, i32 27}
!242 = distinct !{!242, !130}
!243 = !{!"branch_weights", i32 2, i32 1}
!244 = !{!"function_entry_count", i64 5}
!245 = !{!"branch_weights", i32 2, i32 5}
!246 = !{!"function_entry_count", i64 2}
!247 = !{!"branch_weights", i32 3, i32 1}
!248 = distinct !{!248, !130}
!249 = !{!"branch_weights", i32 2, i32 4}
!250 = distinct !{!250, !130}
!251 = distinct !{!251, !130}
!252 = distinct !{!252, !130}
!253 = !{!254, !93, i64 0}
!254 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !93, i64 0, !112, i64 4, !112, i64 8, !96, i64 16, !96, i64 24}
!255 = !{!254, !112, i64 4}
!256 = !{!254, !112, i64 8}
!257 = !{!254, !96, i64 16}
!258 = !{!254, !96, i64 24}
!259 = distinct !{!259, !130}
!260 = !{!"branch_weights", i32 1, i32 3}
!261 = distinct !{!261, !130}
!262 = distinct !{!262, !130}
!263 = !{!93, !93, i64 0}
!264 = !{!92, !96, i64 64}
!265 = distinct !{!265, !130}
