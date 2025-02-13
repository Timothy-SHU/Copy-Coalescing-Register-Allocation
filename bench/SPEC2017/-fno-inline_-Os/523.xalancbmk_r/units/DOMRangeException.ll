; ModuleID = 'DOMRangeException.cpp'
source_filename = "DOMRangeException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMRangeException" = type { %"class.xercesc_2_7::DOMException.base", i32 }
%"class.xercesc_2_7::DOMException.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8 }>

@_ZTVN11xercesc_2_717DOMRangeExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr @_ZN11xercesc_2_717DOMRangeExceptionD2Ev, ptr @_ZN11xercesc_2_717DOMRangeExceptionD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717DOMRangeExceptionE = dso_local constant [35 x i8] c"N11xercesc_2_717DOMRangeExceptionE\00", align 1
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTIN11xercesc_2_717DOMRangeExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DOMRangeExceptionE, ptr @_ZTIN11xercesc_2_712DOMExceptionE }, align 8

@_ZN11xercesc_2_717DOMRangeExceptionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DOMRangeExceptionC2Ev
@_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_717DOMRangeExceptionC2ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_717DOMRangeExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717DOMRangeExceptionC2ERKS0_
@_ZN11xercesc_2_717DOMRangeExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DOMRangeExceptionD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = trunc i32 %1 to i16
  tail call void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %5, ptr noundef %2, ptr noundef %3) #5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) #5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %5, ptr %3, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_717DOMRangeExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !45, i64 36}
!39 = !{!"_ZTSN11xercesc_2_717DOMRangeExceptionE", !40, i64 0, !45, i64 36}
!40 = !{!"_ZTSN11xercesc_2_712DOMExceptionE", !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!41 = !{!"_ZTSN11xercesc_2_712DOMException13ExceptionCodeE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!"_ZTSN11xercesc_2_717DOMRangeException18RangeExceptionCodeE", !42, i64 0}
