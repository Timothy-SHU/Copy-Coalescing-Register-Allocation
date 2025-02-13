; ModuleID = 'PrintWriter.cpp'
source_filename = "PrintWriter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

@_ZN11xalanc_1_1011PrintWriter12s_trueStringE = dso_local local_unnamed_addr constant [5 x i16] [i16 116, i16 114, i16 117, i16 101, i16 0], align 2
@_ZN11xalanc_1_1011PrintWriter13s_falseStringE = dso_local local_unnamed_addr constant [6 x i16] [i16 102, i16 97, i16 108, i16 115, i16 101, i16 0], align 2
@_ZN11xalanc_1_1011PrintWriter15s_newlineStringE = dso_local local_unnamed_addr constant [2 x i16] [i16 10, i16 0], align 2
@_ZTVN11xalanc_1_1011PrintWriterE = dso_local unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011PrintWriterE, ptr @_ZN11xalanc_1_1011PrintWriterD2Ev, ptr @_ZN11xalanc_1_1011PrintWriterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_106Writer9getStreamEv, ptr @_ZNK11xalanc_1_106Writer9getStreamEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011PrintWriterE = dso_local constant [29 x i8] c"N11xalanc_1_1011PrintWriterE\00", align 1
@_ZTIN11xalanc_1_106WriterE = external constant ptr
@_ZTIN11xalanc_1_1011PrintWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011PrintWriterE, ptr @_ZTIN11xalanc_1_106WriterE }, align 8

@_ZN11xalanc_1_1011PrintWriterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011PrintWriterD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !38 {
  %4 = zext i1 %1 to i8
  tail call void @_ZN11xalanc_1_106WriterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1011PrintWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %0, i64 0, i32 1
  store i8 %4, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_106WriterC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_106WriterD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011PrintWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_106WriterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011PrintWriterD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_106Writer9getStreamEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_106Writer9getStreamEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1011PrintWriterC2EbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106WriterC2Ev, i64 3}
!36 = !{ptr @_ZN11xalanc_1_1011PrintWriterD2Ev, ptr @_ZN11xalanc_1_106WriterD2Ev, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !44, i64 0, !45, i64 8, !47, i64 16}
!44 = !{!"_ZTSN11xalanc_1_106WriterE"}
!45 = !{!"bool", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!47, !47, i64 0}
