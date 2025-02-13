; ModuleID = 'XStringAdapter.cpp'
source_filename = "XStringAdapter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XStringAdapter" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XObjectPtr" }
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
%"class.xalanc_1_10::XObjectPtr" = type { ptr }

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

@_ZTVN11xalanc_1_1014XStringAdapterE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014XStringAdapterE, ptr @_ZN11xalanc_1_1014XStringAdapterD2Ev, ptr @_ZN11xalanc_1_1014XStringAdapterD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1011XStringBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1011XStringBase3numEv, ptr @_ZNK11xalanc_1_1011XStringBase7booleanEv, ptr @_ZNK11xalanc_1_1014XStringAdapter3strEv, ptr @_ZNK11xalanc_1_1014XStringAdapter3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1014XStringAdapter12stringLengthEv, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1011XStringBase5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1014XStringAdapter11getRealTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014XStringAdapterE = dso_local constant [32 x i8] c"N11xalanc_1_1014XStringAdapterE\00", align 1
@_ZTIN11xalanc_1_1011XStringBaseE = external constant ptr
@_ZTIN11xalanc_1_1014XStringAdapterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014XStringAdapterE, ptr @_ZTIN11xalanc_1_1011XStringBaseE }, align 8

@_ZN11xalanc_1_1014XStringAdapterC1ERKNS_10XObjectPtrERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014XStringAdapterC2ERKNS_10XObjectPtrERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XStringAdapterC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014XStringAdapterC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XStringAdapterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XStringAdapterD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XStringAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1014XStringAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !41
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XStringBase13getTypeStringEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK11xalanc_1_1011XStringBase3numEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1011XStringBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XStringAdapter3strEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1014XStringAdapter3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #2 align 2 !prof !40 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_1014XStringAdapter12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef double %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret double %7
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XStringBase5rtreeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1011XStringBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014XStringAdapter11getRealTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !40 {
  ret i32 9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XStringAdapterC2ERKNS_10XObjectPtrERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1014XStringAdapterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XStringBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011XStringBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  store ptr %3, ptr %0, align 8, !tbaa !49
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011XStringBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XStringAdapterC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xalanc_1_1011XStringBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1014XStringAdapterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XStringBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #7
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011XStringBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XStringAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1014XStringAdapterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  tail call void @_ZN11xalanc_1_1011XStringBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %2
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!37 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!38 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !43, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !43, i64 8}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !45, i64 0}
!48 = !{!"function_entry_count", i64 717007216}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !51, i64 0}
!51 = !{!"any pointer", !44, i64 0}
!52 = !{!"function_entry_count", i64 1009440147}
!53 = !{!"function_entry_count", i64 246321862}
