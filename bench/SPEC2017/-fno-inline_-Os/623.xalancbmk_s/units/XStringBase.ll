; ModuleID = 'XStringBase.cpp'
source_filename = "XStringBase.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_1011XStringBase16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1026XObjectResultTreeFragProxy16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1030XObjectResultTreeFragProxyText16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

@_ZTVN11xalanc_1_1011XStringBaseE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011XStringBaseE, ptr @_ZN11xalanc_1_1011XStringBaseD2Ev, ptr @_ZN11xalanc_1_1011XStringBaseD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1011XStringBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1011XStringBase3numEv, ptr @_ZNK11xalanc_1_1011XStringBase7booleanEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1011XStringBase5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011XStringBaseE = dso_local constant [29 x i8] c"N11xalanc_1_1011XStringBaseE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_1011XStringBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011XStringBaseE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_107XObject14s_stringStringE = external local_unnamed_addr constant ptr, align 8

@_ZN11xalanc_1_1011XStringBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011XStringBaseD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011XStringBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XStringBase13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !46 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject14s_stringStringE, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_1011XStringBase3numEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !54
  %4 = fcmp oeq double %3, 0.000000e+00
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XStringBase16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  %11 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  store double %11, ptr %2, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi double [ %11, %5 ], [ %3, %1 ]
  ret double %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XStringBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 !prof !46 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds ptr, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XStringBase5rtreeEv(ptr noundef nonnull readnone align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %6) #8
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #8
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1011XStringBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1026XObjectResultTreeFragProxyC1ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026XObjectResultTreeFragProxyC1ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XStringBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1011XStringBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %1, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !54
  store double %6, ptr %4, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1026XObjectResultTreeFragProxyC1ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XStringBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1011XStringBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1026XObjectResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026XObjectResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XStringBase16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringBase", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1026XObjectResultTreeFragProxy16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1026XObjectResultTreeFragProxy16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat !prof !70 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !73 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !74
  ret i32 %3
}

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!45}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !{ptr @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 67250266}
!37 = !{ptr @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1026XObjectResultTreeFragProxyC1ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE, i64 67250266}
!38 = !{ptr @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 64}
!39 = !{ptr @_ZN11xalanc_1_1011XStringBaseD2Ev, ptr @_ZN11xalanc_1_1026XObjectResultTreeFragProxyD1Ev, i64 67250266}
!40 = !{ptr @_ZN11xalanc_1_1011XStringBaseD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 67250266}
!41 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !49, i64 8}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !50, i64 0}
!54 = !{!55, !58, i64 24}
!55 = !{!"_ZTSN11xalanc_1_1011XStringBaseE", !56, i64 0, !58, i64 24, !59, i64 32}
!56 = !{!"_ZTSN11xalanc_1_107XObjectE", !48, i64 0, !57, i64 12, !53, i64 16}
!57 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !50, i64 0}
!58 = !{!"double", !50, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1026XObjectResultTreeFragProxyE", !60, i64 0, !63, i64 8}
!60 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE", !61, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !62, i64 0}
!62 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!63 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyTextE", !64, i64 0, !53, i64 8, !53, i64 16}
!64 = !{!"_ZTSN11xalanc_1_109XalanTextE", !65, i64 0}
!65 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !62, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !51, i64 0}
!68 = !{!"function_entry_count", i64 67250266}
!69 = !{!63, !53, i64 16}
!70 = !{!"function_entry_count", i64 66708615}
!71 = !{!"function_entry_count", i64 230527000}
!72 = !{!"function_entry_count", i64 3070433826}
!73 = !{!"function_entry_count", i64 1414337976}
!74 = !{!75, !49, i64 32}
!75 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !76, i64 0, !49, i64 32}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !77, i64 8, !77, i64 16, !53, i64 24}
!77 = !{!"long", !50, i64 0}
