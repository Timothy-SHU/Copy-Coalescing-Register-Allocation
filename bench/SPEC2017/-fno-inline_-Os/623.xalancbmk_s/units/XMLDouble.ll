; ModuleID = 'XMLDouble.cpp'
source_filename = "XMLDouble.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }

@_ZTVN11xercesc_2_79XMLDoubleE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79XMLDoubleE, ptr @_ZN11xercesc_2_79XMLDoubleD2Ev, ptr @_ZN11xercesc_2_79XMLDoubleD0Ev, ptr @_ZNK11xercesc_2_79XMLDouble14isSerializableEv, ptr @_ZN11xercesc_2_79XMLDouble9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_79XMLDouble12getProtoTypeEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv, ptr @_ZN11xercesc_2_79XMLDouble13checkBoundaryEPc] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79XMLDoubleE = dso_local constant [26 x i8] c"N11xercesc_2_79XMLDoubleE\00", align 1
@_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE = external constant ptr
@_ZTIN11xercesc_2_79XMLDoubleE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79XMLDoubleE, ptr @_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE }, align 8
@_ZN11xercesc_2_79XMLDouble14classXMLDoubleE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_79XMLDouble12createObjectEPNS_13MemoryManagerE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"XMLDouble\00", align 1

@_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_79XMLDoubleC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_79XMLDoubleD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79XMLDoubleD2Ev
@_ZN11xercesc_2_79XMLDoubleC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79XMLDoubleC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDoubleD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_79XMLDoubleD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLDouble14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDouble9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_79XMLDouble12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_79XMLDouble14classXMLDoubleE
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDouble13checkBoundaryEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDoubleC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %2) #6
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_79XMLDoubleE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #6
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDoubleD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79XMLDouble12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0) #6
  invoke void @_ZN11xercesc_2_79XMLDoubleC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #5
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLDoubleC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #6
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_79XMLDoubleE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
