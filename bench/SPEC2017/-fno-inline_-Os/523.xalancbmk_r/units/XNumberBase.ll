; ModuleID = 'XNumberBase.cpp'
source_filename = "XNumberBase.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_107XObject7booleanEd = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

@_ZTVN11xalanc_1_1011XNumberBaseE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011XNumberBaseE, ptr @_ZN11xalanc_1_1011XNumberBaseD2Ev, ptr @_ZN11xalanc_1_1011XNumberBaseD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1011XNumberBase13getTypeStringEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1011XNumberBase7booleanEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_1011XNumberBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1011XNumberBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject14s_numberStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011XNumberBaseE = dso_local constant [29 x i8] c"N11xalanc_1_1011XNumberBaseE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_1011XNumberBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011XNumberBaseE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8

@_ZN11xalanc_1_1011XNumberBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011XNumberBaseD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XNumberBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3) #7
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1011XNumberBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XNumberBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1011XNumberBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XNumberBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011XNumberBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XNumberBase13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !43 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject14s_numberStringE, align 8, !tbaa !44
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XNumberBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %5) #7
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #7
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef 0.000000e+00) #7
  %5 = xor i1 %4, true
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011XNumberBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef double %5(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %7 = load ptr, ptr %1, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %6) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011XNumberBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef double %5(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %7 = load ptr, ptr %1, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %6) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #0 comdat align 2 !prof !50 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #7
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !51 {
  %3 = load i32, ptr %0, align 8, !tbaa !52
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !53
  ret i1 %12
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xalanc_1_1011XNumberBaseC2Ev, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 89504426}
!36 = !{ptr @_ZN11xalanc_1_1011XNumberBaseD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 89504426}
!37 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 89504426}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !42, i64 0}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !49, i64 8}
!49 = !{!"int", !46, i64 0}
!50 = !{!"function_entry_count", i64 404042974}
!51 = !{!"function_entry_count", i64 740164859}
!52 = !{!46, !46, i64 0}
!53 = !{!"branch_weights", i32 740024103, i32 140758}
