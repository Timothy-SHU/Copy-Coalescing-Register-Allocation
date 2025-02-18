; ModuleID = 'GrammarResolver.cpp'
source_filename = "GrammarResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"struct.xercesc_2_7::RefHashTableBucketElem.2" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.1" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_713XMLEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !55 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store i8 0, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 2
  store i8 1, ptr %5, align 2, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %2, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  store ptr %1, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2)
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, i32 noundef 29, i1 noundef zeroext true, ptr noundef %2)
          to label %12 unwind label %20, !prof !67

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  store ptr %11, ptr %13, align 8, !tbaa !68
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2)
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, i32 noundef 29, i1 noundef zeroext false, ptr noundef %2)
          to label %15 unwind label %22, !prof !67

15:                                               ; preds = %12
  store ptr %14, ptr %7, align 8, !tbaa !69
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %26, !prof !67

17:                                               ; preds = %15
  %18 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2)
  invoke void @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(58) %18, ptr noundef %2)
          to label %19 unwind label %24, !prof !67

19:                                               ; preds = %17
  store ptr %18, ptr %9, align 8, !tbaa !66
  store i8 0, ptr %5, align 2, !tbaa !64
  br label %26

20:                                               ; preds = %3
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %2) #11
  br label %48

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %2) #11
  br label %48

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %2) #11
  br label %48

26:                                               ; preds = %19, %15
  %27 = load ptr, ptr %9, align 8, !tbaa !66
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds ptr, ptr %28, i64 15
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(17) %27), !prof !72
  store ptr %31, ptr %6, align 8, !tbaa !73
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2)
  store i8 0, ptr %32, align 8, !tbaa !74
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 1
  store i32 0, ptr %33, align 4, !tbaa !77
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 2
  store i32 29, ptr %34, align 8, !tbaa !78
  %35 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 3
  store ptr null, ptr %35, align 8, !tbaa !79
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 4
  store ptr %2, ptr %36, align 8, !tbaa !80
  %37 = load ptr, ptr %2, align 8, !tbaa !70
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 232)
          to label %41 unwind label %46, !prof !81

41:                                               ; preds = %26
  store ptr %40, ptr %35, align 8, !tbaa !79
  %42 = load i32, ptr %34, align 8, !tbaa !78
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %44, i1 false), !prof !82
  %45 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  store ptr %32, ptr %45, align 8, !tbaa !83
  ret void

46:                                               ; preds = %26
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %32, ptr noundef nonnull %2) #11
  br label %48

48:                                               ; preds = %46, %24, %22, %20
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ]
  resume { ptr, i32 } %49
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !85
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !90
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !91
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %12 = load ptr, ptr %0, align 8, !tbaa !85
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15, !prof !93

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !92
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #11
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolverD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !94

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6, !prof !67

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #12
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !94

14:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %18 unwind label %15, !prof !67

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #12
  unreachable

18:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #11
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !67

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 2
  %29 = load i8, ptr %28, align 2, !tbaa !64, !range !96, !noundef !97
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39, !prof !67

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !94

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !70
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(17) %33) #11, !prof !98
  br label %39

39:                                               ; preds = %31, %35, %27
  %40 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !67

43:                                               ; preds = %39
  tail call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %41) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %41) #11
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !83
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48, !prof !94

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %46, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !80
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %46, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  %53 = load ptr, ptr %50, align 8, !tbaa !70
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %52)
          to label %59 unwind label %56, !prof !100

56:                                               ; preds = %48
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #12
  unreachable

59:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %46) #11
  br label %60

60:                                               ; preds = %59, %44
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !101
  %8 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !101
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %56

10:                                               ; preds = %3
  %11 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !101
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %56

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %1, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !101
  %22 = load i16, ptr %20, align 2, !tbaa !101
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %56, !llvm.loop !103

24:                                               ; preds = %13, %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %30)
  %32 = load ptr, ptr %29, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %28
  store ptr %31, ptr %25, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %31)
  br label %36

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #11
  br label %136

36:                                               ; preds = %33, %24
  %37 = load ptr, ptr %25, align 8, !tbaa !95
  %38 = icmp eq ptr %2, null
  br i1 %38, label %134, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !106
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull %2)
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !106
  %46 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull %2)
  br label %134

47:                                               ; preds = %42, %39
  %48 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %37, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !107
  %50 = icmp eq ptr %49, null
  br i1 %50, label %134, label %51

51:                                               ; preds = %47
  %52 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull %2)
  br i1 %52, label %53, label %134

53:                                               ; preds = %51
  %54 = load ptr, ptr %48, align 8, !tbaa !107
  %55 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull %2)
  br label %134

56:                                               ; preds = %18, %6, %10
  %57 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %134, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !70
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef i32 %62(ptr noundef nonnull align 8 dereferenceable(8) %57)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %134

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %66 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  store i32 0, ptr %4, align 8, !tbaa !110
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  store i32 128, ptr %68, align 4, !tbaa !112
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 2
  store i32 0, ptr %69, align 8, !tbaa !113
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 3
  store i8 0, ptr %70, align 4, !tbaa !114
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 4
  store ptr %67, ptr %71, align 8, !tbaa !115
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 5
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  %74 = load ptr, ptr %67, align 8, !tbaa !70
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef 258)
  store ptr %77, ptr %73, align 8, !tbaa !116
  store i16 0, ptr %77, align 2, !tbaa !101
  store i32 0, ptr %4, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1)
          to label %78 unwind label %123

78:                                               ; preds = %65
  %79 = load i32, ptr %4, align 8, !tbaa !110
  %80 = load i32, ptr %68, align 4, !tbaa !112
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %83 unwind label %123

83:                                               ; preds = %82, %78
  %84 = load ptr, ptr %73, align 8, !tbaa !116
  %85 = load i32, ptr %4, align 8, !tbaa !110
  %86 = add i32 %85, 1
  store i32 %86, ptr %4, align 8, !tbaa !110
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i16, ptr %84, i64 %87
  store i16 44, ptr %88, align 2, !tbaa !101
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2)
          to label %89 unwind label %123

89:                                               ; preds = %83
  %90 = load ptr, ptr %73, align 8, !tbaa !116
  %91 = load i32, ptr %4, align 8, !tbaa !110
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i16, ptr %90, i64 %92
  store i16 0, ptr %93, align 2, !tbaa !101
  %94 = icmp eq ptr %90, null
  br i1 %94, label %112, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !106
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull %90)
          to label %100 unwind label %123

100:                                              ; preds = %98
  br i1 %99, label %108, label %101

101:                                              ; preds = %100, %95
  %102 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %57, i64 0, i32 17, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !107
  %104 = icmp eq ptr %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %101
  %106 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull %90)
          to label %107 unwind label %123

107:                                              ; preds = %105
  br i1 %106, label %108, label %112

108:                                              ; preds = %107, %100
  %109 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %100 ], [ %102, %107 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !106
  %111 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull %90)
          to label %112 unwind label %123

112:                                              ; preds = %108, %107, %101, %89
  %113 = phi ptr [ null, %101 ], [ null, %107 ], [ null, %89 ], [ %111, %108 ]
  %114 = load ptr, ptr %71, align 8, !tbaa !115
  %115 = load ptr, ptr %73, align 8, !tbaa !116
  %116 = load ptr, ptr %114, align 8, !tbaa !70
  %117 = getelementptr inbounds ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  invoke void %118(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef %115)
          to label %122 unwind label %119

119:                                              ; preds = %112
  %120 = landingpad { ptr, i32 }
          catch ptr null
  %121 = extractvalue { ptr, i32 } %120, 0
  call void @__clang_call_terminate(ptr %121) #12
  unreachable

122:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %134

123:                                              ; preds = %108, %105, %98, %82, %65, %83
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %71, align 8, !tbaa !115
  %126 = load ptr, ptr %73, align 8, !tbaa !116
  %127 = load ptr, ptr %125, align 8, !tbaa !70
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %126)
          to label %133 unwind label %130

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #12
  unreachable

133:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %136

134:                                              ; preds = %53, %51, %47, %44, %36, %56, %59, %122
  %135 = phi ptr [ %113, %122 ], [ null, %59 ], [ null, %56 ], [ %46, %44 ], [ %55, %53 ], [ null, %47 ], [ null, %51 ], [ null, %36 ]
  ret ptr %135

136:                                              ; preds = %133, %34
  %137 = phi { ptr, i32 } [ %35, %34 ], [ %124, %133 ]
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %91, label %4, !prof !118

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !89
  %11 = load ptr, ptr %6, align 8, !tbaa !85
  %12 = load ptr, ptr %8, align 8, !tbaa !70
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %1, i32 noundef %10, ptr noundef %11), !prof !119
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !120

21:                                               ; preds = %4, %30
  %22 = phi ptr [ %32, %30 ], [ %19, %4 ]
  %23 = load ptr, ptr %7, align 8, !tbaa !92
  %24 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = load ptr, ptr %23, align 8, !tbaa !70
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %1, ptr noundef %25), !prof !123
  br i1 %29, label %34, label %30, !prof !124

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21, !prof !125, !llvm.loop !126

34:                                               ; preds = %30, %21, %4
  %35 = phi ptr [ null, %4 ], [ %22, %21 ], [ null, %30 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !127

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !128
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %91, !prof !118

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 1, !tbaa !63, !range !96, !noundef !97
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %91, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  %49 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull %1)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = load ptr, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds ptr, ptr %54, i64 12
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(17) %53, ptr noundef nonnull %1)
  %58 = load ptr, ptr %52, align 8, !tbaa !66
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(17) %58, ptr noundef %57)
          to label %63 unwind label %77

63:                                               ; preds = %51
  %64 = icmp eq ptr %62, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %47, align 8, !tbaa !69
  %67 = load ptr, ptr %62, align 8, !tbaa !70
  %68 = getelementptr inbounds ptr, ptr %67, i64 22
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %71 unwind label %77

71:                                               ; preds = %65
  %72 = load ptr, ptr %70, align 8, !tbaa !70
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(16) %70)
          to label %76 unwind label %77

76:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %66, ptr noundef %75, ptr noundef nonnull %62)
          to label %85 unwind label %77

77:                                               ; preds = %76, %71, %65, %51
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = icmp eq ptr %57, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(16) %57) #11
  br label %84

84:                                               ; preds = %77, %80
  resume { ptr, i32 } %78

85:                                               ; preds = %76, %63
  %86 = icmp eq ptr %57, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %57, align 8, !tbaa !70
  %89 = getelementptr inbounds ptr, ptr %88, i64 1
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(16) %57) #11
  br label %91

91:                                               ; preds = %87, %85, %39, %46, %42, %2
  %92 = phi ptr [ null, %2 ], [ %40, %39 ], [ %49, %46 ], [ null, %42 ], [ %62, %85 ], [ %62, %87 ]
  ret ptr %92
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !129 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !130

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !101
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !131

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !101
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !132, !llvm.loop !133

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !110
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !112
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !134

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = load i32, ptr %0, align 8, !tbaa !110
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !135
  %28 = load i32, ptr %0, align 8, !tbaa !110
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !110
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !136 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %0, align 8, !tbaa !85
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !137
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !120

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !92
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = load ptr, ptr %19, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !138
  br i1 %25, label %30, label %26, !prof !124

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !125, !llvm.loop !126

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !127

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !128
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !136 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !139

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = load i32, ptr %4, align 8, !tbaa !89
  %16 = load ptr, ptr %0, align 8, !tbaa !85
  %17 = load ptr, ptr %14, align 8, !tbaa !70
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !137
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !140

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !92
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !140, !llvm.loop !126

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42, !prof !139

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !87, !range !96, !noundef !97
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !128
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !70
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47) #11
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !128
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !121
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !85
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24), !prof !141
  %61 = load ptr, ptr %20, align 8, !tbaa !88
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  store ptr %2, ptr %60, align 8, !tbaa !128
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !142
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !121
  store ptr %60, ptr %62, align 8, !tbaa !106
  %66 = load i32, ptr %8, align 8, !tbaa !91
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !91
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !136 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %44, label %4, !prof !143

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = load ptr, ptr %1, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %1), !prof !144
  %11 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %10)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %44, !prof !139

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 1, !tbaa !63, !range !96, !noundef !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %44, label %17, !prof !139

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = load ptr, ptr %1, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %24 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %23)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(17) %28, ptr noundef nonnull %1)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %18, align 8, !tbaa !69
  %36 = load ptr, ptr %32, align 8, !tbaa !70
  %37 = getelementptr inbounds ptr, ptr %36, i64 22
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(16) %39)
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %43, ptr noundef nonnull %32)
  br label %44

44:                                               ; preds = %4, %17, %34, %26, %13, %2
  %45 = phi ptr [ null, %2 ], [ %11, %4 ], [ %24, %17 ], [ %32, %34 ], [ %32, %26 ], [ null, %13 ]
  ret ptr %45
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 !prof !145 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !149
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !150
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !151
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !152
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18, !prof !153

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #11
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver30getReferencedGrammarEnumeratorEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715GrammarResolver26getCachedGrammarEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(17) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715GrammarResolver17containsNameSpaceEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %1)
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !63, !range !96, !noundef !97
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %1)
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(17) %18, ptr noundef nonnull %1)
  %23 = load ptr, ptr %17, align 8, !tbaa !66
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(17) %23, ptr noundef %22)
          to label %28 unwind label %36

28:                                               ; preds = %16
  %29 = icmp eq ptr %27, null
  %30 = icmp eq ptr %22, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %22, align 8, !tbaa !70
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(16) %22) #11
  br label %35

35:                                               ; preds = %28, %31
  br i1 %29, label %44, label %45

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = icmp eq ptr %22, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %22, align 8, !tbaa !70
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(16) %22) #11
  br label %43

43:                                               ; preds = %36, %39
  resume { ptr, i32 } %37

44:                                               ; preds = %35, %8
  br label %45

45:                                               ; preds = %35, %12, %4, %2, %44
  %46 = phi i1 [ true, %35 ], [ false, %44 ], [ false, %2 ], [ true, %4 ], [ true, %12 ]
  ret i1 %46
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %0, align 8, !tbaa !85
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !92
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !llvm.loop !154

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !92
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !121
  %34 = load ptr, ptr %31, align 8, !tbaa !70
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33)
  br i1 %37, label %38, label %25, !llvm.loop !154

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !136 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %40, label %4, !prof !143

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 8, !tbaa !57, !range !96, !noundef !97
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !139

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(17) %9, ptr noundef nonnull %1)
  br i1 %13, label %40, label %14

14:                                               ; preds = %7, %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = load ptr, ptr %1, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %17, i64 22
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !155
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(16) %20), !prof !144
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %24, ptr noundef nonnull %1)
  %25 = load ptr, ptr %1, align 8, !tbaa !70
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !156
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %40, !prof !157

30:                                               ; preds = %14
  %31 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 1)
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %1, ptr %38, align 8, !tbaa !106
  %39 = add i32 %36, 1
  store i32 %39, ptr %35, align 4, !tbaa !77
  br label %40

40:                                               ; preds = %14, %30, %2, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !67

10:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %8) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %10, %1
  store ptr null, ptr %7, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !159

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !160

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !91
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !88
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !161

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = load i8, ptr %11, align 8, !tbaa !87, !range !96, !noundef !97
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !143

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !128
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !143

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !70
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %26) #11, !prof !162
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !85
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !163
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !139, !llvm.loop !164

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !88
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !106
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !89
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !165, !llvm.loop !166

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(17) %3)
  %8 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = alloca %"class.xercesc_2_7::ValueVectorOf.0", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %5, i1 noundef zeroext false, ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %8 = load ptr, ptr %6, align 8, !tbaa !65
  store i8 0, ptr %3, align 8, !tbaa !167
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !169
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 2
  store i32 8, ptr %10, align 8, !tbaa !170
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !171
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %3, i64 0, i32 4
  store ptr %8, ptr %12, align 8, !tbaa !172
  %13 = load ptr, ptr %8, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 64)
          to label %17 unwind label %44

17:                                               ; preds = %1
  store ptr %16, ptr %11, align 8, !tbaa !171
  %18 = load i32, ptr %10, align 8, !tbaa !170
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 %20, i1 false)
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %37
  %25 = phi i32 [ %43, %37 ], [ 0, %17 ]
  %26 = load ptr, ptr %21, align 8, !tbaa !149
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, ptr %22, align 8, !tbaa !150
  %30 = load ptr, ptr %23, align 8, !tbaa !151
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !89
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %28, %24
  %35 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %36 unwind label %46

36:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = load ptr, ptr %11, align 8, !tbaa !171
  %39 = load i32, ptr %9, align 4, !tbaa !169
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %35, ptr %41, align 8, !tbaa !106
  %42 = add i32 %39, 1
  store i32 %42, ptr %9, align 4, !tbaa !169
  %43 = add i32 %25, 1
  br label %24, !llvm.loop !173

44:                                               ; preds = %1
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %118

46:                                               ; preds = %36, %34
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %108

48:                                               ; preds = %28
  %49 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %50, i64 0, i32 1
  store i32 0, ptr %51, align 4, !tbaa !77
  %52 = icmp eq i32 %25, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  br label %65

55:                                               ; preds = %105, %48
  %56 = load ptr, ptr %12, align 8, !tbaa !172
  %57 = load ptr, ptr %11, align 8, !tbaa !171
  %58 = load ptr, ptr %56, align 8, !tbaa !70
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57)
          to label %64 unwind label %61

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #12
  unreachable

64:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  ret void

65:                                               ; preds = %53, %105
  %66 = phi i32 [ 0, %53 ], [ %106, %105 ]
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %66)
          to label %68 unwind label %82

68:                                               ; preds = %65
  %69 = load ptr, ptr %67, align 8, !tbaa !106
  %70 = load ptr, ptr %4, align 8, !tbaa !68
  %71 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef %69)
          to label %72 unwind label %84

72:                                               ; preds = %68
  %73 = load ptr, ptr %54, align 8, !tbaa !66
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef zeroext i1 %76(ptr noundef nonnull align 8 dereferenceable(17) %73, ptr noundef %71)
          to label %78 unwind label %84

78:                                               ; preds = %72
  br i1 %77, label %79, label %86

79:                                               ; preds = %78
  %80 = load ptr, ptr %4, align 8, !tbaa !68
  %81 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %80, ptr noundef %69)
          to label %105 unwind label %84

82:                                               ; preds = %65
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %108

84:                                               ; preds = %86, %79, %72, %68
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %108

86:                                               ; preds = %78
  %87 = load ptr, ptr %71, align 8, !tbaa !70
  %88 = getelementptr inbounds ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef i32 %89(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %91 unwind label %84

91:                                               ; preds = %86
  %92 = icmp eq i32 %90, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = load ptr, ptr %49, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %94, i32 noundef 1)
          to label %95 unwind label %103

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %94, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !79
  %98 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %94, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !77
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %97, i64 %100
  store ptr %71, ptr %101, align 8, !tbaa !106
  %102 = add i32 %99, 1
  store i32 %102, ptr %98, align 4, !tbaa !77
  br label %105

103:                                              ; preds = %93
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %108

105:                                              ; preds = %91, %95, %79
  %106 = add nuw i32 %66, 1
  %107 = icmp eq i32 %106, %25
  br i1 %107, label %55, label %65, !llvm.loop !174

108:                                              ; preds = %82, %103, %84, %46
  %109 = phi { ptr, i32 } [ %47, %46 ], [ %83, %82 ], [ %85, %84 ], [ %104, %103 ]
  %110 = load ptr, ptr %12, align 8, !tbaa !172
  %111 = load ptr, ptr %11, align 8, !tbaa !171
  %112 = load ptr, ptr %110, align 8, !tbaa !70
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef %111)
          to label %118 unwind label %115

115:                                              ; preds = %108
  %116 = landingpad { ptr, i32 }
          catch ptr null
  %117 = extractvalue { ptr, i32 } %116, 0
  call void @__clang_call_terminate(ptr %117) #12
  unreachable

118:                                              ; preds = %108, %44
  %119 = phi { ptr, i32 } [ %45, %44 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  resume { ptr, i32 } %119
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !176

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !169
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !177

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %0, align 8, !tbaa !85
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !92
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %33, label %48

25:                                               ; preds = %48
  %26 = load ptr, ptr %3, align 8, !tbaa !92
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %51, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = load ptr, ptr %26, align 8, !tbaa !70
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28)
  br i1 %32, label %33, label %48, !llvm.loop !178

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %51, %25 ]
  %35 = phi ptr [ null, %17 ], [ %49, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !106
  %43 = load ptr, ptr %34, align 8, !tbaa !128
  %44 = load ptr, ptr %0, align 8, !tbaa !85
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull %34)
  br label %53

48:                                               ; preds = %17, %25
  %49 = phi ptr [ %51, %25 ], [ %15, %17 ]
  %50 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %25, !llvm.loop !178

53:                                               ; preds = %48, %2, %33
  %54 = phi ptr [ %43, %33 ], [ null, %2 ], [ null, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %58 = load ptr, ptr %0, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 50, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %57) #11
  resume { ptr, i32 } %61

62:                                               ; preds = %53
  ret ptr %54
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !146, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !140

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #11
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xercesc_2_715GrammarResolver5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 %3, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !55 {
  %3 = load i8, ptr %0, align 8, !tbaa !57, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %1)
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %1)
  br label %30

19:                                               ; preds = %5
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %1)
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load ptr, ptr %20, align 8, !tbaa !68
  %25 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %1)
  br label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9orphanKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %1)
  br label %30

30:                                               ; preds = %17, %13, %23, %19, %26
  %31 = phi ptr [ %29, %26 ], [ %11, %17 ], [ %11, %13 ], [ %25, %23 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %0, align 8, !tbaa !85
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !92
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %33, label %61

25:                                               ; preds = %61
  %26 = load ptr, ptr %3, align 8, !tbaa !92
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %64, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = load ptr, ptr %26, align 8, !tbaa !70
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28)
  br i1 %32, label %33, label %61, !llvm.loop !179

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %64, %25 ]
  %35 = phi ptr [ null, %17 ], [ %62, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !87, !range !96, !noundef !97
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !128
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !70
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47) #11
  br label %53

53:                                               ; preds = %46, %49, %33
  %54 = load ptr, ptr %0, align 8, !tbaa !85
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull %34)
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !91
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 8, !tbaa !91
  ret void

61:                                               ; preds = %17, %25
  %62 = phi ptr [ %64, %25 ], [ %15, %17 ]
  %63 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !106
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %25, !llvm.loop !179

66:                                               ; preds = %61, %2
  %67 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %68 = load ptr, ptr %0, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 50, ptr noundef %68)
          to label %69 unwind label %70

69:                                               ; preds = %66
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

70:                                               ; preds = %66
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %67) #11
  resume { ptr, i32 } %71
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %4 = load i8, ptr %0, align 8, !tbaa !57, !range !96, !noundef !97
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !range !96
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %151, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 14
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %17 = load i8, ptr %2, align 1, !tbaa !180, !range !96, !noundef !97
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %107, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !181
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !77
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store ptr %16, ptr %20, align 8, !tbaa !181
  br label %147

34:                                               ; preds = %23, %19
  store ptr %16, ptr %20, align 8, !tbaa !181
  %35 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %36, i64 0, i32 1
  store i32 0, ptr %37, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %38 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %39, i1 noundef zeroext false, ptr noundef %41)
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %3, i64 0, i32 2
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %3, i64 0, i32 3
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %3, i64 0, i32 4
  br label %45

45:                                               ; preds = %73, %34
  %46 = load ptr, ptr %42, align 8, !tbaa !149
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, ptr %43, align 8, !tbaa !150
  %50 = load ptr, ptr %44, align 8, !tbaa !151
  %51 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !89
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %80, label %54

54:                                               ; preds = %48, %45
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %56 unwind label %76

56:                                               ; preds = %54
  %57 = load ptr, ptr %55, align 8, !tbaa !70
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %61 unwind label %76

61:                                               ; preds = %56
  %62 = icmp eq i32 %60, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load ptr, ptr %35, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %64, i32 noundef 1)
          to label %65 unwind label %78

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %64, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !79
  %68 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %64, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  store ptr %55, ptr %71, align 8, !tbaa !106
  %72 = add i32 %69, 1
  store i32 %72, ptr %68, align 4, !tbaa !77
  br label %73

73:                                               ; preds = %65, %61
  br label %45, !llvm.loop !182

74:                                               ; preds = %90
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %105

76:                                               ; preds = %56, %54
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %105

78:                                               ; preds = %63
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %105

80:                                               ; preds = %48
  %81 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !99
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void @_ZN11xercesc_2_77XSModelD1Ev(ptr noundef nonnull align 8 dereferenceable(298) %82) #11
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %82) #11
  br label %85

85:                                               ; preds = %84, %80
  %86 = load ptr, ptr %35, align 8, !tbaa !83
  %87 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !77
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %40, align 8, !tbaa !65
  %92 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %91)
          to label %93 unwind label %74

93:                                               ; preds = %90
  %94 = load ptr, ptr %20, align 8, !tbaa !181
  %95 = load ptr, ptr %40, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %92, ptr noundef %94, ptr noundef nonnull %0, ptr noundef %95)
          to label %96 unwind label %99

96:                                               ; preds = %93
  store ptr %92, ptr %81, align 8, !tbaa !99
  %97 = load ptr, ptr %35, align 8, !tbaa !83
  %98 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %97, i64 0, i32 1
  store i32 0, ptr %98, align 4, !tbaa !77
  br label %102

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %92, ptr noundef %91) #11
  br label %105

101:                                              ; preds = %85
  store ptr null, ptr %81, align 8, !tbaa !99
  br label %102

102:                                              ; preds = %101, %96
  %103 = phi ptr [ %81, %96 ], [ %20, %101 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !106
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %147

105:                                              ; preds = %76, %78, %99, %74
  %106 = phi { ptr, i32 } [ %100, %99 ], [ %75, %74 ], [ %79, %78 ], [ %77, %76 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %149

107:                                              ; preds = %10
  %108 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %109 = load ptr, ptr %108, align 8, !tbaa !83
  %110 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !77
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !99
  %115 = icmp eq ptr %114, null
  br i1 %112, label %134, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !65
  %119 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %118)
  br i1 %115, label %125, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %113, align 8, !tbaa !99
  %122 = load ptr, ptr %117, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %119, ptr noundef %121, ptr noundef nonnull %0, ptr noundef %122)
          to label %131 unwind label %123

123:                                              ; preds = %120
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %119, ptr noundef %118) #11
  br label %149

125:                                              ; preds = %116
  %126 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %127 = load ptr, ptr %126, align 8, !tbaa !181
  %128 = load ptr, ptr %117, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %119, ptr noundef %127, ptr noundef nonnull %0, ptr noundef %128)
          to label %131 unwind label %129

129:                                              ; preds = %125
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %119, ptr noundef %118) #11
  br label %149

131:                                              ; preds = %125, %120
  store ptr %119, ptr %113, align 8, !tbaa !99
  %132 = load ptr, ptr %108, align 8, !tbaa !83
  %133 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %132, i64 0, i32 1
  store i32 0, ptr %133, align 4, !tbaa !77
  br label %147

134:                                              ; preds = %107
  br i1 %115, label %135, label %147

135:                                              ; preds = %134
  %136 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !181
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !65
  %142 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %141)
  %143 = load ptr, ptr %140, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %142, ptr noundef null, ptr noundef nonnull %0, ptr noundef %143)
          to label %144 unwind label %145

144:                                              ; preds = %139
  store ptr %142, ptr %113, align 8, !tbaa !99
  br label %147

145:                                              ; preds = %139
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %142, ptr noundef %141) #11
  br label %149

147:                                              ; preds = %135, %134, %144, %131, %102, %33
  %148 = phi ptr [ %104, %102 ], [ %16, %33 ], [ %119, %131 ], [ %142, %144 ], [ %114, %134 ], [ %137, %135 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %184

149:                                              ; preds = %145, %129, %123, %105
  %150 = phi { ptr, i32 } [ %106, %105 ], [ %124, %123 ], [ %130, %129 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %186

151:                                              ; preds = %1
  %152 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !77
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !65
  %160 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %159)
  %161 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !99
  %163 = load ptr, ptr %158, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %160, ptr noundef %162, ptr noundef nonnull %0, ptr noundef %163)
          to label %164 unwind label %167

164:                                              ; preds = %157
  %165 = load ptr, ptr %152, align 8, !tbaa !83
  %166 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %165, i64 0, i32 1
  store i32 0, ptr %166, align 4, !tbaa !77
  store ptr %160, ptr %161, align 8, !tbaa !99
  br label %181

167:                                              ; preds = %157
  %168 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %160, ptr noundef %159) #11
  br label %186

169:                                              ; preds = %151
  %170 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %171 = load ptr, ptr %170, align 8, !tbaa !99
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 7
  %175 = load ptr, ptr %174, align 8, !tbaa !65
  %176 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 304, ptr noundef %175)
  %177 = load ptr, ptr %174, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %176, ptr noundef null, ptr noundef nonnull %0, ptr noundef %177)
          to label %178 unwind label %179

178:                                              ; preds = %173
  store ptr %176, ptr %170, align 8, !tbaa !99
  br label %181

179:                                              ; preds = %173
  %180 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %176, ptr noundef %175) #11
  br label %186

181:                                              ; preds = %169, %178, %164
  %182 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !99
  br label %184

184:                                              ; preds = %181, %147
  %185 = phi ptr [ %148, %147 ], [ %183, %181 ]
  ret ptr %185

186:                                              ; preds = %179, %167, %149
  %187 = phi { ptr, i32 } [ %150, %149 ], [ %168, %167 ], [ %180, %179 ]
  resume { ptr, i32 } %187
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !183
  br i1 %5, label %13, label %6, !prof !177

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  ret ptr %16
}

declare void @_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !184 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !187
  %7 = load ptr, ptr %0, align 8, !tbaa !188
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !189
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38, !prof !191

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !185
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !192
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20), !prof !194
  br i1 %24, label %38, label %25, !prof !195

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !prof !196, !llvm.loop !197

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !185
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !192
  %34 = load ptr, ptr %31, align 8, !tbaa !70
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33), !prof !194
  br i1 %37, label %38, label %25, !prof !198, !llvm.loop !197

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !187
  %7 = load ptr, ptr %0, align 8, !tbaa !188
  %8 = load ptr, ptr %4, align 8, !tbaa !70
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !200
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !153

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !185
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !192
  %22 = load ptr, ptr %19, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !201
  br i1 %25, label %30, label %26, !prof !202

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !203, !llvm.loop !204

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !205

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !206
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !207

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !85
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !208
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !88
  %21 = load i32, ptr %12, align 8, !tbaa !89
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !209

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !106
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !210, !llvm.loop !211
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !84 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = load ptr, ptr %2, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !215
  store ptr null, ptr %3, align 8, !tbaa !88
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !207

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #11, !prof !216
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !85
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !85
  store ptr %12, ptr %2, align 8, !tbaa !217
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !219
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !89
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = load ptr, ptr %2, align 8, !tbaa !217
  store ptr null, ptr %2, align 8, !tbaa !217
  store ptr %23, ptr %21, align 8, !tbaa !88
  store i32 %5, ptr %3, align 8, !tbaa !89
  %24 = load ptr, ptr %0, align 8, !tbaa !85
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = load ptr, ptr %19, align 8, !tbaa !92
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  %41 = load ptr, ptr %0, align 8, !tbaa !85
  %42 = load ptr, ptr %38, align 8, !tbaa !70
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !106
  store ptr %48, ptr %36, align 8, !tbaa !142
  store ptr %35, ptr %47, align 8, !tbaa !106
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !220

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !89
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !221

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #14
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #12
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !222

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.2", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  store ptr %7, ptr %2, align 8, !tbaa !149
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !149
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !67

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !150
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !89
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !94

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = load i32, ptr %12, align 8, !tbaa !150
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !223

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !150
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !224, !llvm.loop !225

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !149
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !149
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !145 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !153

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !70
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !77
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !80
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !79
  store i32 %13, ptr %6, align 8, !tbaa !78
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !79
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !106
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !226

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !175 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !169
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !176

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !70
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !169
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !172
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !171
  %31 = load ptr, ptr %28, align 8, !tbaa !70
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !171
  store i32 %13, ptr %6, align 8, !tbaa !170
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !171
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !106
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !227

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !70
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 12}
!36 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, i64 6}
!37 = !{ptr @_ZN11xercesc_2_715GrammarResolverC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718XMLGrammarPoolImplC1EPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE10initializeEj, i64 9}
!39 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!40 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 9}
!41 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, i64 6}
!42 = !{ptr @_ZN11xercesc_2_715GrammarResolverD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 9}
!43 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!44 = !{ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3getEPKv, i64 4}
!45 = !{ptr @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE3putEPvPS1_, i64 4}
!48 = !{ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE19ensureExtraCapacityEj, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 3}
!50 = !{ptr @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb, ptr @_ZN11xercesc_2_715GrammarResolver5resetEv, i64 3}
!51 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, i64 2}
!52 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 2}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 9}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!"function_entry_count", i64 3}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !59, i64 0, !59, i64 1, !59, i64 2, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72}
!59 = !{!"bool", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"any pointer", !60, i64 0}
!63 = !{!58, !59, i64 1}
!64 = !{!58, !59, i64 2}
!65 = !{!58, !62, i64 40}
!66 = !{!58, !62, i64 48}
!67 = !{!"branch_weights", i32 3, i32 0}
!68 = !{!58, !62, i64 16}
!69 = !{!58, !62, i64 24}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !61, i64 0}
!72 = !{!"VP", i32 0, i64 3, i64 1004840210682727188, i64 3}
!73 = !{!58, !62, i64 8}
!74 = !{!75, !59, i64 0}
!75 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEE", !59, i64 0, !76, i64 4, !76, i64 8, !62, i64 16, !62, i64 24}
!76 = !{!"int", !60, i64 0}
!77 = !{!75, !76, i64 4}
!78 = !{!75, !76, i64 8}
!79 = !{!75, !62, i64 16}
!80 = !{!75, !62, i64 24}
!81 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!82 = !{!"VP", i32 1, i64 3, i64 129, i64 3}
!83 = !{!58, !62, i64 72}
!84 = !{!"function_entry_count", i64 9}
!85 = !{!86, !62, i64 0}
!86 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_7GrammarEEE", !62, i64 0, !59, i64 8, !62, i64 16, !76, i64 24, !76, i64 28, !76, i64 32, !62, i64 40}
!87 = !{!86, !59, i64 8}
!88 = !{!86, !62, i64 16}
!89 = !{!86, !76, i64 24}
!90 = !{!86, !76, i64 28}
!91 = !{!86, !76, i64 32}
!92 = !{!86, !62, i64 40}
!93 = !{!"branch_weights", i32 9, i32 0}
!94 = !{!"branch_weights", i32 0, i32 3}
!95 = !{!58, !62, i64 32}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!"VP", i32 0, i64 3, i64 -1977930331050989337, i64 3}
!99 = !{!58, !62, i64 56}
!100 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!101 = !{!102, !102, i64 0}
!102 = !{!"short", !60, i64 0}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!62, !62, i64 0}
!107 = !{!108, !62, i64 8}
!108 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !109, i64 0, !62, i64 8, !62, i64 16}
!109 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!110 = !{!111, !76, i64 0}
!111 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !76, i64 0, !76, i64 4, !76, i64 8, !59, i64 12, !62, i64 16, !62, i64 24, !62, i64 32}
!112 = !{!111, !76, i64 4}
!113 = !{!111, !76, i64 8}
!114 = !{!111, !59, i64 12}
!115 = !{!111, !62, i64 16}
!116 = !{!111, !62, i64 32}
!117 = !{!"function_entry_count", i64 496163}
!118 = !{!"branch_weights", i32 0, i32 496163}
!119 = !{!"VP", i32 0, i64 496163, i64 3024540859536234746, i64 496163}
!120 = !{!"branch_weights", i32 1, i32 127}
!121 = !{!122, !62, i64 16}
!122 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEE", !62, i64 0, !62, i64 8, !62, i64 16}
!123 = !{!"VP", i32 0, i64 496159, i64 -1309333655503989351, i64 496159}
!124 = !{!"branch_weights", i32 496163, i32 0}
!125 = !{!"branch_weights", i32 127, i32 15877089}
!126 = distinct !{!126, !104, !105}
!127 = !{!"branch_weights", i32 4, i32 496163}
!128 = !{!122, !62, i64 0}
!129 = !{!"function_entry_count", i64 789922}
!130 = !{!"branch_weights", i32 0, i32 789922}
!131 = !{!"branch_weights", i32 284, i32 789638}
!132 = !{!"branch_weights", i32 789638, i32 41628303}
!133 = distinct !{!133, !104, !105}
!134 = !{!"branch_weights", i32 789636, i32 2}
!135 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!136 = !{!"function_entry_count", i64 4}
!137 = !{!"VP", i32 0, i64 4, i64 3024540859536234746, i64 4}
!138 = !{!"VP", i32 0, i64 3, i64 -1309333655503989351, i64 3}
!139 = !{!"branch_weights", i32 4, i32 0}
!140 = !{!"branch_weights", i32 1, i32 0}
!141 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!142 = !{!122, !62, i64 8}
!143 = !{!"branch_weights", i32 0, i32 4}
!144 = !{!"VP", i32 0, i64 4, i64 -2696973556621766147, i64 3, i64 -8839954703511572394, i64 1}
!145 = !{!"function_entry_count", i64 1}
!146 = !{!147, !59, i64 8}
!147 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE", !148, i64 0, !59, i64 8, !62, i64 16, !76, i64 24, !62, i64 32, !62, i64 40}
!148 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE"}
!149 = !{!147, !62, i64 16}
!150 = !{!147, !76, i64 24}
!151 = !{!147, !62, i64 32}
!152 = !{!147, !62, i64 40}
!153 = !{!"branch_weights", i32 0, i32 1}
!154 = distinct !{!154, !104, !105}
!155 = !{!"VP", i32 0, i64 4, i64 -9212141781851914981, i64 3, i64 -5575802696610893904, i64 1}
!156 = !{!"VP", i32 0, i64 4, i64 -908290396823866376, i64 3, i64 -6289420323266357339, i64 1}
!157 = !{!"branch_weights", i32 1, i32 3}
!158 = !{!"function_entry_count", i64 12}
!159 = !{!"branch_weights", i32 9, i32 3}
!160 = !{!"branch_weights", i32 1, i32 191}
!161 = !{!"branch_weights", i32 83, i32 4}
!162 = !{!"VP", i32 0, i64 4, i64 -8495914792567758976, i64 3, i64 -622881534451488576, i64 1}
!163 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!164 = distinct !{!164, !104, !105}
!165 = !{!"branch_weights", i32 5377, i32 191}
!166 = distinct !{!166, !104, !105}
!167 = !{!168, !59, i64 0}
!168 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !59, i64 0, !76, i64 4, !76, i64 8, !62, i64 16, !62, i64 24}
!169 = !{!168, !76, i64 4}
!170 = !{!168, !76, i64 8}
!171 = !{!168, !62, i64 16}
!172 = !{!168, !62, i64 24}
!173 = distinct !{!173, !104, !105}
!174 = distinct !{!174, !104, !105}
!175 = !{!"function_entry_count", i64 2}
!176 = !{!"branch_weights", i32 0, i32 2}
!177 = !{!"branch_weights", i32 2, i32 0}
!178 = distinct !{!178, !104, !105}
!179 = distinct !{!179, !104, !105}
!180 = !{!59, !59, i64 0}
!181 = !{!58, !62, i64 64}
!182 = distinct !{!182, !104, !105}
!183 = !{!"VP", i32 0, i64 2, i64 -5770325663783742255, i64 2}
!184 = !{!"function_entry_count", i64 181}
!185 = !{!186, !62, i64 40}
!186 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !62, i64 0, !59, i64 8, !62, i64 16, !76, i64 24, !76, i64 28, !76, i64 32, !62, i64 40}
!187 = !{!186, !76, i64 24}
!188 = !{!186, !62, i64 0}
!189 = !{!"VP", i32 0, i64 181, i64 3024540859536234746, i64 181}
!190 = !{!186, !62, i64 16}
!191 = !{!"branch_weights", i32 149, i32 1}
!192 = !{!193, !62, i64 16}
!193 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !62, i64 0, !62, i64 8, !62, i64 16}
!194 = !{!"VP", i32 0, i64 148, i64 -1309333655503989351, i64 148}
!195 = !{!"branch_weights", i32 64, i32 42}
!196 = !{!"branch_weights", i32 147, i32 149}
!197 = distinct !{!197, !104, !105}
!198 = !{!"branch_weights", i32 42, i32 0}
!199 = !{!"function_entry_count", i64 108}
!200 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!201 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!202 = !{!"branch_weights", i32 108, i32 10}
!203 = !{!"branch_weights", i32 0, i32 118}
!204 = distinct !{!204, !104, !105}
!205 = !{!"branch_weights", i32 0, i32 108}
!206 = !{!193, !62, i64 0}
!207 = !{!"branch_weights", i32 0, i32 9}
!208 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!209 = !{!"branch_weights", i32 1, i32 143}
!210 = !{!"branch_weights", i32 143, i32 4033}
!211 = distinct !{!211, !104, !105}
!212 = !{!213, !62, i64 40}
!213 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !214, i64 8, !62, i64 16, !76, i64 24, !62, i64 32, !62, i64 40}
!214 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !60, i64 0}
!215 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!216 = !{!"VP", i32 0, i64 9, i64 -5147776714887549805, i64 9}
!217 = !{!218, !62, i64 0}
!218 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_7GrammarEEEEE", !62, i64 0, !62, i64 8}
!219 = !{!218, !62, i64 8}
!220 = distinct !{!220, !104, !105}
!221 = distinct !{!221, !104, !105}
!222 = !{!"branch_weights", i32 1, i32 2}
!223 = !{!"branch_weights", i32 27, i32 2}
!224 = !{!"branch_weights", i32 1, i32 26}
!225 = distinct !{!225, !104, !105}
!226 = distinct !{!226, !104, !105}
!227 = distinct !{!227, !104, !105}
