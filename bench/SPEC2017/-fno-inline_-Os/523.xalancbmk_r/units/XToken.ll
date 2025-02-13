; ModuleID = 'XToken.cpp'
source_filename = "XToken.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1013DoubleSupport6getNaNEv = comdat any

$_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107XObject7booleanEd = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendERKS0_ = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_106XTokenE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_106XTokenE, ptr @_ZN11xalanc_1_106XTokenD2Ev, ptr @_ZN11xalanc_1_106XTokenD0Ev, ptr @_ZN11xalanc_1_106XToken10referencedEv, ptr @_ZN11xalanc_1_106XToken12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_106XToken13getTypeStringEv, ptr @_ZNK11xalanc_1_106XToken3numEv, ptr @_ZNK11xalanc_1_106XToken7booleanEv, ptr @_ZNK11xalanc_1_106XToken3strEv, ptr @_ZNK11xalanc_1_106XToken3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_106XToken12stringLengthEv, ptr @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_107XObject14s_stringStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_106XTokenE = dso_local constant [23 x i8] c"N11xalanc_1_106XTokenE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_106XTokenE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_106XTokenE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XToken.cpp, ptr null }]

@_ZN11xalanc_1_106XTokenC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_106XTokenC2Ev
@_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_106XTokenC1EdRKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, double, ptr), ptr @_ZN11xalanc_1_106XTokenC2EdRKNS_14XalanDOMStringE
@_ZN11xalanc_1_106XTokenC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_106XTokenC2ERKS0_
@_ZN11xalanc_1_106XTokenD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_106XTokenD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #11
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %4 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #11
  store double %4, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %5, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() local_unnamed_addr #2 comdat align 2 !prof !83 {
  %1 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !84
  ret double %1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #11
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !71
  %5 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %5, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %8, align 8, !tbaa !82
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2EdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(41) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #4 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #11
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %1, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 !prof !85 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  store ptr %5, ptr %3, align 8, !tbaa !71
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !81
  store double %8, ptr %6, align 8, !tbaa !81
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !82, !range !86, !noundef !87
  store i8 %11, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !88 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_106XTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_106XTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_106XToken13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !67 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject14s_stringStringE, align 8, !tbaa !89
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK11xalanc_1_106XToken3numEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #8 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !81
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_106XToken7booleanEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !86, !noundef !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !81
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %11) #11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %8, %5 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #11
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef 0.000000e+00) #11
  %5 = xor i1 %4, true
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_106XToken3strEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #8 align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_106XToken3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #4 align 2 !prof !67 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 %3
  %11 = and i64 %2, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %10, align 8, !tbaa !68
  %15 = getelementptr i8, ptr %14, i64 %2
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !nosanitize !87
  br label %20

18:                                               ; preds = %9
  %19 = inttoptr i64 %2 to ptr
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %17, %13 ], [ %19, %18 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !71
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %22) #11
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %23, i32 noundef %7) #11
  br label %24

24:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !92 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !93 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br i1 %2, label %5, label %3, !prof !94

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !96 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #11
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #11
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %3, i32 noundef %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_106XToken12stringLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #11
  %5 = uitofp i32 %4 to double
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !82, !range !86, !noundef !87
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %1, align 8, !tbaa !68
  br i1 %5, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds ptr, ptr %6, i64 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9) #11
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds ptr, ptr %6, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %14) #11
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !82, !range !86, !noundef !87
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %1, align 8, !tbaa !68
  br i1 %5, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds ptr, ptr %6, i64 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9) #11
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds ptr, ptr %6, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %14) #11
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !97 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !71
  %5 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %5, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %7, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 align 2 !prof !98 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %1, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_106XToken10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_106XToken12dereferencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !99
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !104

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !106 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !107 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !108

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !109, !llvm.loop !110

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !112 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !113 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !118 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #11
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = load i32, ptr %0, align 8, !tbaa !84
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !120
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !122 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !123
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !125 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !117
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XToken.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!65}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 983}
!37 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 983}
!38 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKS0_, ptr @_ZN11xalanc_1_107XObjectC2ERKS0_, i64 983}
!39 = !{ptr @_ZN11xalanc_1_106XTokenD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 1966}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!45 = !{ptr @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, i64 20910}
!46 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45461869}
!47 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 45461869}
!48 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 45461869}
!49 = !{ptr @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 172}
!50 = !{ptr @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 43}
!51 = !{ptr @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 43}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!62 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!63 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!64 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 43398227}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !70, i64 0}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!72, !78, i64 24}
!72 = !{!"_ZTSN11xalanc_1_106XTokenE", !73, i64 0, !78, i64 24, !79, i64 32, !80, i64 40}
!73 = !{!"_ZTSN11xalanc_1_107XObjectE", !74, i64 0, !77, i64 12, !78, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !75, i64 8}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !70, i64 0}
!77 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !76, i64 0}
!78 = !{!"any pointer", !76, i64 0}
!79 = !{!"double", !76, i64 0}
!80 = !{!"bool", !76, i64 0}
!81 = !{!72, !79, i64 32}
!82 = !{!72, !80, i64 40}
!83 = !{!"function_entry_count", i64 7112}
!84 = !{!76, !76, i64 0}
!85 = !{!"function_entry_count", i64 983}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = !{!"function_entry_count", i64 1966}
!89 = !{!78, !78, i64 0}
!90 = !{!"function_entry_count", i64 89504425}
!91 = !{!"function_entry_count", i64 226496830}
!92 = !{!"function_entry_count", i64 230527004}
!93 = !{!"function_entry_count", i64 967143541}
!94 = !{!"branch_weights", i32 403628487, i32 563515056}
!95 = !{!"function_entry_count", i64 20910}
!96 = !{!"function_entry_count", i64 45461869}
!97 = !{!"function_entry_count", i64 172}
!98 = !{!"function_entry_count", i64 43}
!99 = !{!74, !75, i64 8}
!100 = !{!"function_entry_count", i64 128698679}
!101 = !{!102, !103, i64 16}
!102 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !78, i64 0, !103, i64 8, !103, i64 16, !78, i64 24}
!103 = !{!"long", !76, i64 0}
!104 = !{!"branch_weights", i32 43398290, i32 85300391}
!105 = !{!102, !78, i64 24}
!106 = !{!"function_entry_count", i64 6521798493}
!107 = !{!"function_entry_count", i64 85300390}
!108 = !{!"branch_weights", i32 1, i32 12185770}
!109 = !{!"branch_weights", i32 12185770, i32 -193930396}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"function_entry_count", i64 227375739}
!113 = !{!"function_entry_count", i64 568333389}
!114 = !{!102, !78, i64 0}
!115 = !{!"function_entry_count", i64 30137156660}
!116 = !{!"function_entry_count", i64 825654971}
!117 = !{!102, !103, i64 8}
!118 = !{!"function_entry_count", i64 404042974}
!119 = !{!"function_entry_count", i64 740164859}
!120 = !{!"branch_weights", i32 740024103, i32 140758}
!121 = !{!"function_entry_count", i64 3070433834}
!122 = !{!"function_entry_count", i64 1414337980}
!123 = !{!124, !75, i64 32}
!124 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !102, i64 0, !75, i64 32}
!125 = !{!"function_entry_count", i64 1083116306}
!126 = !{!"function_entry_count", i64 565220908}
