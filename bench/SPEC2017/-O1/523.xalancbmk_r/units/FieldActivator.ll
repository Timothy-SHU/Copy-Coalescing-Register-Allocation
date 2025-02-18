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
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XPathMatcherStack" = type { i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED0Ev = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE11nextElementEv = comdat any

$_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorIbEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorIbEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_726ValueHashTableOfEnumeratorIbEE = comdat any

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
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714FieldActivatorC1EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE
@_ZN11xercesc_2_714FieldActivatorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714FieldActivatorC2ERKS0_
@_ZN11xercesc_2_714FieldActivatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714FieldActivatorD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr %1, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !52
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3)
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %3)
          to label %10 unwind label %31, !prof !53

10:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %11 unwind label %33, !prof !53

11:                                               ; preds = %10
  store ptr %3, ptr %8, align 8, !tbaa !54
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %8, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %8, i64 0, i32 2
  store i32 29, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %8, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !59
  %15 = load ptr, ptr %3, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 232)
          to label %19 unwind label %31, !prof !62

19:                                               ; preds = %11
  store ptr %18, ptr %12, align 8, !tbaa !57
  %20 = load i32, ptr %13, align 8, !tbaa !58
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22, !prof !63

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %28, %24 ]
  %26 = load ptr, ptr %12, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  store ptr null, ptr %27, align 8, !tbaa !64
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, %23
  br i1 %29, label %30, label %24, !prof !65, !llvm.loop !66

30:                                               ; preds = %24, %19
  store ptr %9, ptr %14, align 8, !tbaa !59
  store ptr %8, ptr %6, align 8, !tbaa !51
  ret void

31:                                               ; preds = %11, %4
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %10
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %3) #11
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %34, %33 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %3) #11
  resume { ptr, i32 } %36
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = alloca %"class.xercesc_2_7::ValueHashTableOfEnumerator", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  store ptr %7, ptr %5, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  store ptr %11, ptr %9, align 8, !tbaa !52
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %11)
  %13 = load ptr, ptr %9, align 8, !tbaa !52
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
          to label %15 unwind label %60

15:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %16 unwind label %62

16:                                               ; preds = %15
  %17 = load ptr, ptr %9, align 8, !tbaa !52
  store ptr %17, ptr %12, align 8, !tbaa !54
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %12, i64 0, i32 2
  store i32 29, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %12, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !59
  %21 = load ptr, ptr %17, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 232)
          to label %25 unwind label %60

25:                                               ; preds = %16
  store ptr %24, ptr %18, align 8, !tbaa !57
  %26 = load i32, ptr %19, align 8, !tbaa !58
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = zext i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = load ptr, ptr %18, align 8, !tbaa !57
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !64
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %36, label %30, !llvm.loop !66

36:                                               ; preds = %30, %25
  store ptr %14, ptr %20, align 8, !tbaa !59
  store ptr %12, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %37 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = load ptr, ptr %9, align 8, !tbaa !52
  call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %38, i1 noundef zeroext false, ptr noundef %39)
  %40 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 2
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 3
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 4
  br label %43

43:                                               ; preds = %59, %36
  %44 = load ptr, ptr %40, align 8, !tbaa !70
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, ptr %41, align 8, !tbaa !74
  %48 = load ptr, ptr %42, align 8, !tbaa !75
  %49 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !58
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %77, label %52

52:                                               ; preds = %43, %46
  %53 = invoke noundef ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %54 unwind label %66

54:                                               ; preds = %52
  %55 = load ptr, ptr %8, align 8, !tbaa !51
  %56 = load ptr, ptr %37, align 8, !tbaa !51
  %57 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %58 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef %53, ptr noundef %57)
          to label %59 unwind label %66

59:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef %53, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %43 unwind label %66, !llvm.loop !76

60:                                               ; preds = %16, %2
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %15
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #11
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %61, %60 ], [ %63, %62 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #11
  br label %85

66:                                               ; preds = %59, %54, %52
  %67 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !77, !range !78, !noundef !79
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %73) #11
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %73) #11
  br label %76

76:                                               ; preds = %66, %71, %75
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %85

77:                                               ; preds = %46
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %78 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %3, i64 0, i32 1
  %79 = load i8, ptr %78, align 8, !tbaa !77, !range !78, !noundef !79
  %80 = icmp eq i8 %79, 0
  %81 = icmp eq ptr %48, null
  %82 = or i1 %81, %80
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #11
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %48) #11
  br label %84

84:                                               ; preds = %77, %83
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

85:                                               ; preds = %76, %64
  %86 = phi { ptr, i32 } [ %67, %76 ], [ %65, %64 ]
  resume { ptr, i32 } %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbEC2EPNS_16ValueHashTableOfIbEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !80
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1, i32 noundef 301, i32 noundef 15, ptr noundef %3)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #11
  resume { ptr, i32 } %16

17:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_726ValueHashTableOfEnumeratorIbE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  ret ptr %17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = load ptr, ptr %5, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !84
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !85

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !59
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = load ptr, ptr %20, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !86
  br i1 %26, label %31, label %27, !prof !87

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !88, !llvm.loop !89

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !90

34:                                               ; preds = %31
  %35 = load i8, ptr %2, align 1, !tbaa !91, !range !78, !noundef !79
  store i8 %35, ptr %32, align 8, !tbaa !92
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !81
  br label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !54
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !prof !93
  %43 = load ptr, ptr %12, align 8, !tbaa !57
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = load i8, ptr %2, align 1, !tbaa !91, !range !78, !noundef !79
  store i8 %46, ptr %42, align 8, !tbaa !92
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !94
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 2
  store ptr %1, ptr %48, align 8, !tbaa !81
  store ptr %42, ptr %44, align 8, !tbaa !64
  br label %49

49:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = load ptr, ptr %5, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !84
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !95

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !59
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = load ptr, ptr %20, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !96
  br i1 %26, label %31, label %27, !prof !97

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !98, !llvm.loop !89

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !98

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #11
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !77, !range !78, !noundef !79
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivatorD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !99

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5, !prof !63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  br label %12

12:                                               ; preds = %15, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %15 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !100

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = load ptr, ptr %0, align 8, !tbaa !54
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
          to label %12 unwind label %45, !prof !101, !llvm.loop !102

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !57
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr null, ptr %24, align 8, !tbaa !64
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %2, align 8, !tbaa !58
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %7, label %29, !prof !103, !llvm.loop !104

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !54
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = load ptr, ptr %30, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %47, !prof !105

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !99

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %38) #11, !prof !106
  br label %44

44:                                               ; preds = %40, %36
  ret void

45:                                               ; preds = %15
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

47:                                               ; preds = %29
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %48, %47 ]
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #13
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_714FieldActivatoraSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 !prof !69 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %5, ptr %0, align 8, !tbaa !45
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !83 {
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = load ptr, ptr %6, align 8, !tbaa !115
  %14 = load ptr, ptr %10, align 8, !tbaa !60
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %8, i32 noundef %12, ptr noundef %13), !prof !84
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23, !prof !117

23:                                               ; preds = %3, %36
  %24 = phi ptr [ %38, %36 ], [ %21, %3 ]
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !118
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %36, !prof !120

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !tbaa !112
  %30 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = load ptr, ptr %29, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %8, ptr noundef %31), !prof !122
  br i1 %35, label %40, label %36, !prof !123

36:                                               ; preds = %28, %23
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %23, !prof !124, !llvm.loop !125

40:                                               ; preds = %28, %36, %3
  %41 = phi ptr [ null, %3 ], [ %24, %28 ], [ null, %36 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !98

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8, !tbaa !126
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi ptr [ %44, %43 ], [ null, %40 ]
  %47 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = tail call noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %48)
  %50 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %51, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !58
  %56 = load ptr, ptr %51, align 8, !tbaa !54
  %57 = load ptr, ptr %53, align 8, !tbaa !60
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull %1, i32 noundef %55, ptr noundef %56), !prof !84
  %60 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !57
  %62 = zext i32 %59 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66, !prof !85

66:                                               ; preds = %45, %75
  %67 = phi ptr [ %77, %75 ], [ %64, %45 ]
  %68 = load ptr, ptr %52, align 8, !tbaa !59
  %69 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %67, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  %71 = load ptr, ptr %68, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef zeroext i1 %73(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull %1, ptr noundef %70), !prof !86
  br i1 %74, label %79, label %75, !prof !87

75:                                               ; preds = %66
  %76 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %67, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %66, !prof !88, !llvm.loop !89

79:                                               ; preds = %75, %66, %45
  %80 = phi ptr [ null, %45 ], [ %67, %66 ], [ null, %75 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !90

82:                                               ; preds = %79
  store i8 1, ptr %80, align 8, !tbaa !92
  %83 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %80, i64 0, i32 2
  store ptr %1, ptr %83, align 8, !tbaa !81
  br label %95

84:                                               ; preds = %79
  %85 = load ptr, ptr %51, align 8, !tbaa !54
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %85, i64 noundef 24), !prof !93
  %90 = load ptr, ptr %60, align 8, !tbaa !57
  %91 = getelementptr inbounds ptr, ptr %90, i64 %62
  %92 = load ptr, ptr %91, align 8, !tbaa !64
  store i8 1, ptr %89, align 8, !tbaa !92
  %93 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %89, i64 0, i32 1
  store ptr %92, ptr %93, align 8, !tbaa !94
  %94 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %89, i64 0, i32 2
  store ptr %1, ptr %94, align 8, !tbaa !81
  store ptr %89, ptr %91, align 8, !tbaa !64
  br label %95

95:                                               ; preds = %82, %84
  %96 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = load i32, ptr %97, align 8, !tbaa !127
  %99 = getelementptr inbounds %"class.xercesc_2_7::XPathMatcherStack", ptr %97, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !129
  %101 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !130
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %113, !prof !132

104:                                              ; preds = %95
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %100, i32 noundef 1)
  %105 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %100, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !133
  %107 = load i32, ptr %101, align 4, !tbaa !130
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  store ptr %49, ptr %109, align 8, !tbaa !64
  %110 = add i32 %107, 1
  store i32 %110, ptr %101, align 4, !tbaa !130
  %111 = load i32, ptr %97, align 8, !tbaa !127
  %112 = add i32 %111, 1
  store i32 %112, ptr %97, align 8, !tbaa !127
  br label %118

113:                                              ; preds = %95
  %114 = add i32 %98, 1
  store i32 %114, ptr %97, align 8, !tbaa !127
  %115 = load ptr, ptr %100, align 8, !tbaa !60
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  tail call void %117(ptr noundef nonnull align 8 dereferenceable(40) %100, ptr noundef %49, i32 noundef %98), !prof !134
  br label %118

118:                                              ; preds = %104, %113
  %119 = load ptr, ptr %49, align 8, !tbaa !60
  %120 = getelementptr inbounds ptr, ptr %119, i64 3
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(72) %49), !prof !135
  ret ptr %49
}

declare noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !98

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !138
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !140

13:                                               ; preds = %10
  %14 = zext i32 %11 to i64
  br label %16

15:                                               ; preds = %71, %10
  ret void

16:                                               ; preds = %13, %71
  %17 = phi i64 [ 0, %13 ], [ %75, %71 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !136, !nonnull !79, !noundef !79
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !138
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %30, label %23, !prof !141

23:                                               ; preds = %16
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %18, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #11
  resume { ptr, i32 } %29

30:                                               ; preds = %16
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %18, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = getelementptr inbounds ptr, ptr %32, i64 %17
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = load ptr, ptr %0, align 8, !tbaa !45
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !109
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %37, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !114
  %44 = load ptr, ptr %37, align 8, !tbaa !115
  %45 = load ptr, ptr %41, align 8, !tbaa !60
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %39, i32 noundef %43, ptr noundef %44), !prof !84
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %37, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %54, !prof !117

54:                                               ; preds = %30, %67
  %55 = phi ptr [ %69, %67 ], [ %52, %30 ]
  %56 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !118
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %59, label %67, !prof !120

59:                                               ; preds = %54
  %60 = load ptr, ptr %40, align 8, !tbaa !112
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !121
  %63 = load ptr, ptr %60, align 8, !tbaa !60
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %39, ptr noundef %62), !prof !122
  br i1 %66, label %71, label %67, !prof !123

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %55, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !64
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %54, !prof !124, !llvm.loop !125

71:                                               ; preds = %59, %67, %30
  %72 = phi ptr [ null, %30 ], [ %55, %59 ], [ null, %67 ]
  %73 = icmp ne ptr %72, null
  tail call void @llvm.assume(i1 %73)
  %74 = load ptr, ptr %72, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %74)
  %75 = add nuw nsw i64 %17, 1
  %76 = icmp eq i64 %75, %14
  br i1 %76, label %15, label %16, !prof !144, !llvm.loop !145
}

declare void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !83 {
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = load ptr, ptr %6, align 8, !tbaa !115
  %12 = load ptr, ptr %8, align 8, !tbaa !60
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, i32 noundef %10, ptr noundef %11), !prof !84
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21, !prof !117

21:                                               ; preds = %3, %34
  %22 = phi ptr [ %36, %34 ], [ %19, %3 ]
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !118
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %34, !prof !120

26:                                               ; preds = %21
  %27 = load ptr, ptr %7, align 8, !tbaa !112
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  %30 = load ptr, ptr %27, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %1, ptr noundef %29), !prof !122
  br i1 %33, label %38, label %34, !prof !123

34:                                               ; preds = %26, %21
  %35 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %21, !prof !124, !llvm.loop !125

38:                                               ; preds = %26, %34, %3
  %39 = phi ptr [ null, %3 ], [ %22, %26 ], [ null, %34 ]
  %40 = icmp ne ptr %39, null
  tail call void @llvm.assume(i1 %40)
  %41 = load ptr, ptr %39, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %41)
  ret void
}

declare void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !130
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !147
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !148

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !150
  %21 = load i32, ptr %3, align 4, !tbaa !130
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !117

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !151

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !64
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !133
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !64
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !152, !llvm.loop !153

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !149
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = load ptr, ptr %49, align 8, !tbaa !60
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !154
  store ptr %20, ptr %50, align 8, !tbaa !133
  store i32 %12, ptr %6, align 8, !tbaa !147
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
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

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  store ptr %7, ptr %2, align 8, !tbaa !70
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !74
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = load i32, ptr %12, align 8, !tbaa !74
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !74
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !llvm.loop !158

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !70
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_726ValueHashTableOfEnumeratorIbEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !77, !range !78, !noundef !79
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %1, %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret ptr %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_726ValueHashTableOfEnumeratorIbE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !69 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!36 = !{ptr @_ZN11xercesc_2_714FieldActivatorC2EPNS_15ValueStoreCacheEPNS_17XPathMatcherStackEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_714FieldActivatorD2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfIbED2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_714FieldActivatorD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEE19ensureExtraCapacityEj, i64 2}
!41 = !{ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, i64 158593}
!42 = !{ptr @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, i64 158593}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 3}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!46, !47, i64 8}
!51 = !{!46, !47, i64 16}
!52 = !{!46, !47, i64 24}
!53 = !{!"branch_weights", i32 3, i32 0}
!54 = !{!55, !47, i64 0}
!55 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !47, i64 0, !47, i64 8, !56, i64 16, !47, i64 24}
!56 = !{!"int", !48, i64 0}
!57 = !{!55, !47, i64 8}
!58 = !{!55, !56, i64 16}
!59 = !{!55, !47, i64 24}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !49, i64 0}
!62 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!63 = !{!"branch_weights", i32 1, i32 191}
!64 = !{!47, !47, i64 0}
!65 = !{!"branch_weights", i32 191, i32 5377}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!71, !47, i64 16}
!71 = !{!"_ZTSN11xercesc_2_726ValueHashTableOfEnumeratorIbEE", !72, i64 0, !73, i64 8, !47, i64 16, !56, i64 24, !47, i64 32, !47, i64 40}
!72 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorIbEE"}
!73 = !{!"bool", !48, i64 0}
!74 = !{!71, !56, i64 24}
!75 = !{!71, !47, i64 32}
!76 = distinct !{!76, !67, !68}
!77 = !{!71, !73, i64 8}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!71, !47, i64 40}
!81 = !{!82, !47, i64 16}
!82 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !73, i64 0, !47, i64 8, !47, i64 16}
!83 = !{!"function_entry_count", i64 158593}
!84 = !{!"VP", i32 0, i64 158593, i64 4592451362407133634, i64 158593}
!85 = !{!"branch_weights", i32 1, i32 239}
!86 = !{!"VP", i32 0, i64 158588, i64 2119983950972065349, i64 158588}
!87 = !{!"branch_weights", i32 317171, i32 5}
!88 = !{!"branch_weights", i32 239, i32 5074577}
!89 = distinct !{!89, !67, !68}
!90 = !{!"branch_weights", i32 15, i32 317171}
!91 = !{!73, !73, i64 0}
!92 = !{!82, !73, i64 0}
!93 = !{!"VP", i32 0, i64 7, i64 8345045103670217670, i64 7}
!94 = !{!82, !47, i64 8}
!95 = !{!"branch_weights", i32 0, i32 1}
!96 = !{!"VP", i32 0, i64 158593, i64 2119983950972065349, i64 158593}
!97 = !{!"branch_weights", i32 158593, i32 0}
!98 = !{!"branch_weights", i32 0, i32 158593}
!99 = !{!"branch_weights", i32 0, i32 3}
!100 = !{!"branch_weights", i32 87, i32 15}
!101 = !{!"VP", i32 0, i64 15, i64 -7405368087501025645, i64 15}
!102 = distinct !{!102, !67, !68}
!103 = !{!"branch_weights", i32 5377, i32 191}
!104 = distinct !{!104, !67, !68}
!105 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!106 = !{!"VP", i32 0, i64 3, i64 -1480571424701097013, i64 3}
!107 = !{!108, !47, i64 16}
!108 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!109 = !{!110, !47, i64 16}
!110 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !111, i64 0, !47, i64 8, !47, i64 16}
!111 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!112 = !{!113, !47, i64 32}
!113 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !47, i64 0, !73, i64 8, !47, i64 16, !56, i64 24, !56, i64 28, !47, i64 32}
!114 = !{!113, !56, i64 24}
!115 = !{!113, !47, i64 0}
!116 = !{!113, !47, i64 16}
!117 = !{!"branch_weights", i32 1, i32 127}
!118 = !{!119, !56, i64 24}
!119 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !47, i64 0, !47, i64 8, !47, i64 16, !56, i64 24}
!120 = !{!"branch_weights", i32 947745, i32 0}
!121 = !{!119, !47, i64 16}
!122 = !{!"VP", i32 0, i64 315893, i64 2119983950972065349, i64 315893}
!123 = !{!"branch_weights", i32 475795, i32 471950}
!124 = !{!"branch_weights", i32 127, i32 7581833}
!125 = distinct !{!125, !67, !68}
!126 = !{!119, !47, i64 0}
!127 = !{!128, !56, i64 0}
!128 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !56, i64 0, !47, i64 8, !47, i64 16}
!129 = !{!128, !47, i64 16}
!130 = !{!131, !56, i64 12}
!131 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XPathMatcherEEE", !73, i64 8, !56, i64 12, !56, i64 16, !47, i64 24, !47, i64 32}
!132 = !{!"branch_weights", i32 2, i32 158591}
!133 = !{!131, !47, i64 24}
!134 = !{!"VP", i32 0, i64 158591, i64 8621596234897559318, i64 158591}
!135 = !{!"VP", i32 0, i64 158593, i64 -801487750928995758, i64 158593}
!136 = !{!137, !47, i64 32}
!137 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !111, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !56, i64 48}
!138 = !{!139, !56, i64 12}
!139 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !73, i64 8, !56, i64 12, !56, i64 16, !47, i64 24, !47, i64 32}
!140 = !{!"branch_weights", i32 1, i32 158592}
!141 = !{!"branch_weights", i32 475779, i32 0}
!142 = !{!139, !47, i64 32}
!143 = !{!139, !47, i64 24}
!144 = !{!"branch_weights", i32 158592, i32 1}
!145 = distinct !{!145, !67, !68}
!146 = !{!"function_entry_count", i64 18}
!147 = !{!131, !56, i64 16}
!148 = !{!"branch_weights", i32 2, i32 16}
!149 = !{!131, !47, i64 32}
!150 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!151 = !{!"branch_weights", i32 127, i32 1}
!152 = !{!"branch_weights", i32 127, i32 1153}
!153 = distinct !{!153, !67, !68}
!154 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!155 = !{!156, !47, i64 40}
!156 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !157, i64 8, !47, i64 16, !56, i64 24, !47, i64 32, !47, i64 40}
!157 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!158 = distinct !{!158, !67, !68}
