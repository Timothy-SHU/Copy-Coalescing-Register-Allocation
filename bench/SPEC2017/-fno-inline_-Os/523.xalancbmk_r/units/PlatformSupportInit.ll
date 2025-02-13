; ModuleID = 'PlatformSupportInit.cpp'
source_filename = "PlatformSupportInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019PlatformSupportInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  %3 = load i64, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !47
  %4 = add i64 %3, 1
  store i64 %4, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !47
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %6, label %9, !prof !51

6:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %9 unwind label %7

7:                                                ; preds = %6
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  resume { ptr, i32 } %8

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1013DoubleSupport10initializeEv() #5
  tail call void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInitD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = load i64, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !47
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !47
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6, !prof !51

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv() #5
          to label %6 unwind label %7

6:                                                ; preds = %5, %1
  tail call void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #7
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv() local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv() #5
  tail call void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv() #5
  tail call void @_ZN11xalanc_1_1013DoubleSupport9terminateEv() #5
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013DoubleSupport10initializeEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013DoubleSupport9terminateEv() local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport10initializeEv, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1012XalanDOMInitD1Ev, i64 10}
!42 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv, ptr @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv, ptr @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv, ptr @_ZN11xalanc_1_1013DoubleSupport9terminateEv, i64 1}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 10}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"branch_weights", i32 2, i32 10}
!52 = !{!"function_entry_count", i64 1}
