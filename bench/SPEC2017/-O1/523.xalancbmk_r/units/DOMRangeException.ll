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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = trunc i32 %1 to i16
  tail call void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %5, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMRangeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %5, ptr %3, align 4, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717DOMRangeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #5
  tail call void @_ZdlPv(ptr noundef %0) #6
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
