; ModuleID = 'FieldActivator.cpp'
source_filename = "FieldActivator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::FieldActivator" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"class.xercesc_2_7::ValueHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i8, ptr, ptr }
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XPathMatcherStack" = type { i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbED2Ev = comdat any

$_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi = comdat any

$_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb = comdat any

$_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE = comdat any

$_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv = comdat any

$_ZNK11xercesc_2_718IdentityConstraint10getFieldAtEj = comdat any

$_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi = comdat any

$_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XMLEnumeratorIbEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED0Ev = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE11nextElementEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorIbED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorIbED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE9removeAllEv = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorIbEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorIbEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev, ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED0Ev, ptr @_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv, ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE11nextElementEv, ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_726ValueHashTableOfEnumeratorIbEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorIbEE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_713XMLEnumeratorIbEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorIbEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorIbEE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorIbEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorIbEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorIbEE, ptr @_ZN11xercesc_2_713XMLEnumeratorIbED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorIbED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE
@_ZN11xercesc_2_714FieldActivatorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714FieldActivatorC2ERKS0_
@_ZN11xercesc_2_714FieldActivatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714FieldActivatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !85
  %7 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !86
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3) #10
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %3) #10
          to label %10 unwind label %13

10:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
          to label %11 unwind label %15

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 29, ptr noundef nonnull %9, ptr noundef %3) #10
          to label %12 unwind label %13

12:                                               ; preds = %11
  store ptr %8, ptr %6, align 8, !tbaa !85
  ret void

13:                                               ; preds = %11, %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %3) #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %3) #11
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !87 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !78 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %3, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) #10
  store ptr %2, ptr %7, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %"class.xercesc_2_7::ValueHashTableOfEnumerator", align 8
  %4 = load <2 x ptr>, ptr %1, align 8, !tbaa !95
  store <2 x ptr> %4, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  store ptr %8, ptr %6, align 8, !tbaa !86
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %8) #10
  %10 = load ptr, ptr %6, align 8, !tbaa !86
  %11 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %10) #10
          to label %12 unwind label %29

12:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
          to label %13 unwind label %31

13:                                               ; preds = %12
  %14 = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 29, ptr noundef nonnull %11, ptr noundef %14) #10
          to label %15 unwind label %29

15:                                               ; preds = %13
  store ptr %9, ptr %5, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  %16 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = load ptr, ptr %6, align 8, !tbaa !86
  call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %17, i1 noundef zeroext false, ptr noundef %18) #10
  br label %19

19:                                               ; preds = %28, %15
  %20 = call noundef zeroext i1 @_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = invoke noundef ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
          to label %23 unwind label %35

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !tbaa !85
  %25 = load ptr, ptr %16, align 8, !tbaa !85
  %26 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !95
  %27 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %22, ptr noundef %26) #10
          to label %28 unwind label %35

28:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %27) #10
          to label %19 unwind label %35, !llvm.loop !96

29:                                               ; preds = %13, %2
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %12
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #11
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #11
  br label %38

35:                                               ; preds = %28, %23, %21
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  br label %38

37:                                               ; preds = %19
  call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  ret void

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorIbEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !100
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !107
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1, i32 noundef 301, i32 noundef 15, ptr noundef %3) #10
          to label %14 unwind label %15

14:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %22 unwind label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %20

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %20

19:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  ret void

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %21

22:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 30, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !111

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1, !tbaa !112, !range !113, !noundef !114
  store i8 %8, ptr %5, align 8, !tbaa !115
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !108
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #10
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = load i32, ptr %4, align 4, !tbaa !116
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %21) #10
  %22 = load ptr, ptr %16, align 8, !tbaa !91
  %23 = load i32, ptr %4, align 4, !tbaa !116
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !95
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !118

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 50, ptr noundef %2) #10
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !100, !range !113, !noundef !114
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  invoke void @_ZN11xercesc_2_716ValueHashTableOfIbE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %3, align 8, !tbaa !98
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #10
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !98
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #14
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_714FieldActivatoraSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 !prof !94 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load <2 x ptr>, ptr %1, align 8, !tbaa !95
  store <2 x ptr> %5, ptr %0, align 8, !tbaa !95
  br label %6

6:                                                ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !117 {
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  %5 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #10
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = tail call noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %7) #10
  tail call void @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %9 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  tail call void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %8) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !98
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(72) %8) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call noundef ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %6, i32 noundef %2) #10
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %4 = alloca i8, align 1
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %4, align 1, !tbaa !112
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  call void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !121 {
  %3 = load i32, ptr %0, align 8, !tbaa !122
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #10
  %7 = icmp eq i32 %3, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !124
  br i1 %7, label %9, label %12, !prof !125

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1) #10
  %10 = load i32, ptr %0, align 8, !tbaa !122
  %11 = add i32 %10, 1
  store i32 %11, ptr %0, align 8, !tbaa !122
  br label %18

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8, !tbaa !122
  %14 = add i32 %13, 1
  store i32 %14, ptr %0, align 8, !tbaa !122
  %15 = load ptr, ptr %8, align 8, !tbaa !98
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %1, i32 noundef %13) #10
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !117 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !126

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %9 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %8) #10
  %10 = load ptr, ptr %0, align 8, !tbaa !79
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %9, i32 noundef %2) #10
  tail call void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #10
  %12 = add nuw i32 %8, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %6, label %7, !prof !127, !llvm.loop !128
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !133

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !118

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #10
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !117 {
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  %5 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #10
  tail call void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !134 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #10
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !135 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !136

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !137
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 !prof !141 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !144
  %9 = load ptr, ptr %0, align 8, !tbaa !145
  %10 = load ptr, ptr %6, align 8, !tbaa !98
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #10
  store i32 %12, ptr %3, align 4, !tbaa !116
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !147

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !148
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !149

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !142
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #10
  br i1 %31, label %36, label %32, !prof !151

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !152, !llvm.loop !153

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !154
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !156 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !154
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !95
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !154
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !158
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !159

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #10
  %21 = load i32, ptr %3, align 4, !tbaa !154
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !161

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !162

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !95
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !157
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !95
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !163, !llvm.loop !164

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !160
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !157
  %49 = load ptr, ptr %46, align 8, !tbaa !98
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #10
  store ptr %20, ptr %47, align 8, !tbaa !157
  store i32 %12, ptr %6, align 8, !tbaa !158
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !165
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !165
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !168

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !88
  %9 = load ptr, ptr %5, align 8, !tbaa !98
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #10
  store i32 %11, ptr %2, align 4, !tbaa !116
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !174

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !93
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = load ptr, ptr %20, align 8, !tbaa !98
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #10
  br i1 %26, label %31, label %27, !prof !175

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !176, !llvm.loop !177

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !178 {
  %5 = load i8, ptr %2, align 1, !tbaa !112, !range !113, !noundef !114
  store i8 %5, ptr %0, align 8, !tbaa !115
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !179
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !180

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 48, ptr noundef %6) #10
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !92
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !98
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #10
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !91
  %21 = load i32, ptr %12, align 8, !tbaa !92
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !174

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !91
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !95
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !181, !llvm.loop !182
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorIbEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  store ptr %7, ptr %2, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !105
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !105
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !105
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !183

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !104
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 30, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !104
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !94 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !94 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !174

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %8

7:                                                ; preds = %27, %1
  ret void

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %5 ], [ %31, %27 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !91
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !184

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = load ptr, ptr %0, align 8, !tbaa !88
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #10
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %15, !prof !185, !llvm.loop !186

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 8, !tbaa !91
  %26 = load i32, ptr %2, align 8, !tbaa !92
  br label %27

27:                                               ; preds = %24, %8
  %28 = phi i32 [ %26, %24 ], [ %9, %8 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 %10
  store ptr null, ptr %30, align 8, !tbaa !95
  %31 = add nuw nsw i64 %10, 1
  %32 = zext i32 %28 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %8, label %7, !prof !187, !llvm.loop !188
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!77}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!35 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!37 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbEC2EjPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj, i64 3}
!41 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj, i64 317186}
!42 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, ptr @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_, i64 16}
!43 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj, i64 158593}
!44 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!45 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_throw, i64 1}
!47 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!48 = !{ptr @_ZN11xercesc_2_714FieldActivatorD2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev, i64 2}
!49 = !{ptr @_ZN11xercesc_2_714FieldActivatorD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!50 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE9removeAllEv, i64 3}
!51 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi, i64 158593}
!52 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, i64 158593}
!53 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb, i64 158593}
!54 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, i64 158593}
!55 = !{ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi, ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv, i64 317186}
!56 = !{ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, i64 317186}
!57 = !{ptr @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, i64 317186}
!58 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE4sizeEv, i64 158609}
!59 = !{ptr @_ZN11xercesc_2_717XPathMatcherStack10addMatcherEPNS_12XPathMatcherE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, i64 19}
!60 = !{ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, i64 158593}
!61 = !{ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZNK11xercesc_2_718IdentityConstraint10getFieldAtEj, i64 158593}
!62 = !{ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_8IC_FieldEi, i64 158593}
!63 = !{ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, i64 158593}
!64 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv, i64 634411}
!65 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint10getFieldAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, i64 158592}
!66 = !{ptr @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, i64 158593}
!67 = !{ptr @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, i64 158593}
!68 = !{ptr @_ZN11xercesc_2_715ValueStoreCache16getValueStoreForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, i64 158605}
!69 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 475795}
!70 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj, i64 18}
!71 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!72 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!74 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!75 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!76 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 3}
!79 = !{!80, !81, i64 0}
!80 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!81 = !{!"any pointer", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C++ TBAA"}
!84 = !{!80, !81, i64 8}
!85 = !{!80, !81, i64 16}
!86 = !{!80, !81, i64 24}
!87 = !{!"function_entry_count", i64 5836268}
!88 = !{!89, !81, i64 0}
!89 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !81, i64 0, !81, i64 8, !90, i64 16, !81, i64 24}
!90 = !{!"int", !82, i64 0}
!91 = !{!89, !81, i64 8}
!92 = !{!89, !90, i64 16}
!93 = !{!89, !81, i64 24}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!81, !81, i64 0}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !83, i64 0}
!100 = !{!101, !103, i64 8}
!101 = !{!"_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE", !102, i64 0, !103, i64 8, !81, i64 16, !90, i64 24, !81, i64 32, !81, i64 40}
!102 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorIbEE"}
!103 = !{!"bool", !82, i64 0}
!104 = !{!101, !81, i64 16}
!105 = !{!101, !90, i64 24}
!106 = !{!101, !81, i64 32}
!107 = !{!101, !81, i64 40}
!108 = !{!109, !81, i64 16}
!109 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !103, i64 0, !81, i64 8, !81, i64 16}
!110 = !{!"function_entry_count", i64 317186}
!111 = !{!"branch_weights", i32 16, i32 317172}
!112 = !{!103, !103, i64 0}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !{!109, !103, i64 0}
!116 = !{!90, !90, i64 0}
!117 = !{!"function_entry_count", i64 158593}
!118 = !{!"branch_weights", i32 1, i32 158594}
!119 = !{!120, !81, i64 16}
!120 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32, !81, i64 40}
!121 = !{!"function_entry_count", i64 158609}
!122 = !{!123, !90, i64 0}
!123 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !90, i64 0, !81, i64 8, !81, i64 16}
!124 = !{!123, !81, i64 16}
!125 = !{!"branch_weights", i32 19, i32 158592}
!126 = !{!"branch_weights", i32 1, i32 158593}
!127 = !{!"branch_weights", i32 158593, i32 1}
!128 = distinct !{!128, !97}
!129 = !{!"function_entry_count", i64 634412}
!130 = !{!131, !81, i64 32}
!131 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !132, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32, !81, i64 40, !90, i64 48}
!132 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!133 = !{!"branch_weights", i32 1, i32 634413}
!134 = !{!"function_entry_count", i64 158605}
!135 = !{!"function_entry_count", i64 475795}
!136 = !{!"branch_weights", i32 1, i32 475796}
!137 = !{!138, !81, i64 0}
!138 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !81, i64 0, !81, i64 8, !81, i64 16, !90, i64 24}
!139 = !{!140, !81, i64 16}
!140 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !132, i64 0, !81, i64 8, !81, i64 16}
!141 = !{!"function_entry_count", i64 475811}
!142 = !{!143, !81, i64 32}
!143 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !81, i64 0, !103, i64 8, !81, i64 16, !90, i64 24, !90, i64 28, !81, i64 32}
!144 = !{!143, !90, i64 24}
!145 = !{!143, !81, i64 0}
!146 = !{!143, !81, i64 16}
!147 = !{!"branch_weights", i32 1, i32 135}
!148 = !{!138, !90, i64 24}
!149 = !{!"branch_weights", i32 947746, i32 1}
!150 = !{!138, !81, i64 16}
!151 = !{!"branch_weights", i32 475796, i32 471951}
!152 = !{!"branch_weights", i32 135, i32 7581833}
!153 = distinct !{!153, !97}
!154 = !{!155, !90, i64 12}
!155 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEEE", !103, i64 8, !90, i64 12, !90, i64 16, !81, i64 24, !81, i64 32}
!156 = !{!"function_entry_count", i64 18}
!157 = !{!155, !81, i64 24}
!158 = !{!155, !90, i64 16}
!159 = !{!"branch_weights", i32 3, i32 17}
!160 = !{!155, !81, i64 32}
!161 = !{!"branch_weights", i32 1, i32 191}
!162 = !{!"branch_weights", i32 191, i32 1}
!163 = !{!"branch_weights", i32 191, i32 1153}
!164 = distinct !{!164, !97}
!165 = !{!166, !90, i64 12}
!166 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !103, i64 8, !90, i64 12, !90, i64 16, !81, i64 24, !81, i64 32}
!167 = !{!"function_entry_count", i64 475779}
!168 = !{!"branch_weights", i32 475780, i32 1}
!169 = !{!166, !81, i64 32}
!170 = !{!166, !81, i64 24}
!171 = !{!172, !81, i64 40}
!172 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !173, i64 8, !81, i64 16, !90, i64 24, !81, i64 32, !81, i64 40}
!173 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !82, i64 0}
!174 = !{!"branch_weights", i32 1, i32 127}
!175 = !{!"branch_weights", i32 475765, i32 6}
!176 = !{!"branch_weights", i32 127, i32 3806033}
!177 = distinct !{!177, !97}
!178 = !{!"function_entry_count", i64 15}
!179 = !{!109, !81, i64 8}
!180 = !{!"branch_weights", i32 1, i32 4}
!181 = !{!"branch_weights", i32 127, i32 2689}
!182 = distinct !{!182, !97}
!183 = distinct !{!183, !97}
!184 = !{!"branch_weights", i32 72, i32 16}
!185 = !{!"branch_weights", i32 16, i32 0}
!186 = distinct !{!186, !97}
!187 = !{!"branch_weights", i32 2689, i32 127}
!188 = distinct !{!188, !97}
