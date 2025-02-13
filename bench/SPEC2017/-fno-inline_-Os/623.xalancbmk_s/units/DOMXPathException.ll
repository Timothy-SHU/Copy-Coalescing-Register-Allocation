; ModuleID = 'DOMXPathException.cpp'
source_filename = "DOMXPathException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMXPathException" = type { ptr, i32, ptr }

@_ZTVN11xercesc_2_717DOMXPathExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DOMXPathExceptionE, ptr @_ZN11xercesc_2_717DOMXPathExceptionD2Ev, ptr @_ZN11xercesc_2_717DOMXPathExceptionD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717DOMXPathExceptionE = dso_local constant [35 x i8] c"N11xercesc_2_717DOMXPathExceptionE\00", align 1
@_ZTIN11xercesc_2_717DOMXPathExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DOMXPathExceptionE }, align 8

@_ZN11xercesc_2_717DOMXPathExceptionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DOMXPathExceptionC2Ev
@_ZN11xercesc_2_717DOMXPathExceptionC1EsPKt = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_717DOMXPathExceptionC2EsPKt
@_ZN11xercesc_2_717DOMXPathExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717DOMXPathExceptionC2ERKS0_
@_ZN11xercesc_2_717DOMXPathExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DOMXPathExceptionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMXPathExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DOMXPathExceptionC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DOMXPathExceptionC2EsPKt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 1
  %5 = sext i16 %1 to i32
  store i32 %5, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_717DOMXPathExceptionC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !39
  store i32 %5, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMXPathException", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  store ptr %8, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717DOMXPathExceptionD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !35 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind optsize }

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
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN11xercesc_2_717DOMXPathExceptionE", !41, i64 8, !43, i64 16}
!41 = !{!"_ZTSN11xercesc_2_717DOMXPathException13ExceptionCodeE", !42, i64 0}
!42 = !{!"omnipotent char", !38, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!40, !43, i64 16}
