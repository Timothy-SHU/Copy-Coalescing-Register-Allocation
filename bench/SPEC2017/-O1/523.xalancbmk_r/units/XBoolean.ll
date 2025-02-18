; ModuleID = 'XBoolean.cpp'
source_filename = "XBoolean.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

@_ZTVN11xalanc_1_108XBooleanE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108XBooleanE, ptr @_ZN11xalanc_1_108XBooleanD2Ev, ptr @_ZN11xalanc_1_108XBooleanD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_108XBoolean13getTypeStringEv, ptr @_ZNK11xalanc_1_108XBoolean3numEv, ptr @_ZNK11xalanc_1_108XBoolean7booleanEv, ptr @_ZNK11xalanc_1_108XBoolean3strEv, ptr @_ZNK11xalanc_1_108XBoolean3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_108XBoolean12stringLengthEv, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject15s_booleanStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject12s_trueStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108XBooleanE = dso_local constant [25 x i8] c"N11xalanc_1_108XBooleanE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_108XBooleanE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108XBooleanE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_108XBooleanC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_108XBooleanC2Eb
@_ZN11xalanc_1_108XBooleanC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_108XBooleanC2ERKS0_
@_ZN11xalanc_1_108XBooleanD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XBooleanD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanC2Eb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XBooleanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !42
  ret void
}

declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XBooleanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !42, !range !52, !noundef !53
  store i8 %5, ptr %3, align 8, !tbaa !42
  ret void
}

declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanD2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XBoolean13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !51 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject15s_booleanStringE, align 8, !tbaa !54
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XBoolean3numEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #6 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, double 0.000000e+00, double 1.000000e+00
  ret double %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_108XBoolean7booleanEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #7 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !52, !noundef !53
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XBoolean3strEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #6 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @_ZN11xalanc_1_107XObject12s_trueStringE, align 8
  %6 = load ptr, ptr @_ZN11xalanc_1_107XObject13s_falseStringE, align 8
  %7 = select i1 %4, ptr %6, ptr %5
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108XBoolean3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 !prof !51 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !42, !range !52, !noundef !53
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 !prof !51 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %0, label %8, label %16

8:                                                ; preds = %4
  br i1 %7, label %14, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 8, !tbaa !39
  %11 = getelementptr i8, ptr %10, i64 %2
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !nosanitize !53
  br label %24

14:                                               ; preds = %8
  %15 = inttoptr i64 %2 to ptr
  br label %24

16:                                               ; preds = %4
  br i1 %7, label %22, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %5, align 8, !tbaa !39
  %19 = getelementptr i8, ptr %18, i64 %2
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load ptr, ptr %20, align 8, !nosanitize !53
  br label %24

22:                                               ; preds = %16
  %23 = inttoptr i64 %2 to ptr
  br label %24

24:                                               ; preds = %17, %22, %9, %14
  %25 = phi ptr [ @_ZN11xalanc_1_107XObject12s_trueStringE, %14 ], [ @_ZN11xalanc_1_107XObject12s_trueStringE, %9 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %22 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %17 ]
  %26 = phi ptr [ %15, %14 ], [ %13, %9 ], [ %23, %22 ], [ %21, %17 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !54
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !56
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = select i1 %30, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %32
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !59
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %33, i32 noundef %35)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XBoolean12stringLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #8 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @_ZN11xalanc_1_107XObject13s_falseStringE, align 8
  %6 = load ptr, ptr @_ZN11xalanc_1_107XObject12s_trueStringE, align 8
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = uitofp i32 %9 to double
  ret double %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %6)
  ret void
}

declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !61
  ret i32 %3
}

declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_108XBooleanC2Eb, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_108XBooleanD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !50, i64 24}
!43 = !{!"_ZTSN11xalanc_1_108XBooleanE", !44, i64 0, !50, i64 24}
!44 = !{!"_ZTSN11xalanc_1_107XObjectE", !45, i64 0, !48, i64 12, !49, i64 16}
!45 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !46, i64 8}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !41, i64 0}
!48 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !47, i64 0}
!49 = !{!"any pointer", !47, i64 0}
!50 = !{!"bool", !47, i64 0}
!51 = !{!"function_entry_count", i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!49, !49, i64 0}
!55 = !{!"function_entry_count", i64 19395}
!56 = !{!57, !58, i64 8}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !49, i64 0, !58, i64 8, !58, i64 16, !49, i64 24}
!58 = !{!"long", !47, i64 0}
!59 = !{!60, !46, i64 32}
!60 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !57, i64 0, !46, i64 32}
!61 = !{!45, !46, i64 8}
