; ModuleID = 'FormatterStringLengthCounter.cpp'
source_filename = "FormatterStringLengthCounter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterStringLengthCounter" = type { %"class.xalanc_1_10::FormatterListener", i64 }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }

@_ZTVN11xalanc_1_1028FormatterStringLengthCounterE = dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028FormatterStringLengthCounterE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD2Ev, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD0Ev, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter10charactersEPKtj, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter11endDocumentEv, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter10endElementEPKt, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter13resetDocumentEv, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter13startDocumentEv, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter13charactersRawEPKtj, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter7commentEPKt, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter5cdataEPKtj, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounter15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028FormatterStringLengthCounterE = dso_local constant [46 x i8] c"N11xalanc_1_1028FormatterStringLengthCounterE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1028FormatterStringLengthCounterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028FormatterStringLengthCounterE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8

@_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterC2Ev
@_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter10charactersEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !39 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !40
  %7 = add i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter11endDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter10endElementEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter19ignorableWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter21processingInstructionEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter13startDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter12startElementEPKtRN11xercesc_2_713AttributeListE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter13charactersRawEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter7commentEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter5cdataEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounter15entityReferenceEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !50 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounterC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #9
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1028FormatterStringLengthCounterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %0, i64 0, i32 1
  store i64 0, ptr %2, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1028FormatterStringLengthCounterD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!35 = distinct !{!36, !37}
!36 = !{ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterC2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 44684557}
!37 = !{ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 44684557}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 44915910}
!40 = !{!41, !49, i64 24}
!41 = !{!"_ZTSN11xalanc_1_1028FormatterStringLengthCounterE", !42, i64 0, !49, i64 24}
!42 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !43, i64 0, !44, i64 8, !47, i64 16, !48, i64 20}
!43 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !45, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !45, i64 0}
!49 = !{!"long", !45, i64 0}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!"function_entry_count", i64 44684557}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !46, i64 0}
