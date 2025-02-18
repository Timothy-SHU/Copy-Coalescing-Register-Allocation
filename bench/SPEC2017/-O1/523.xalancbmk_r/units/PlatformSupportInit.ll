; ModuleID = 'PlatformSupportInit.cpp'
source_filename = "PlatformSupportInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019PlatformSupportInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %3 = load i64, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !45
  %4 = add i64 %3, 1
  store i64 %4, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !45
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %6, label %11, !prof !49

6:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1013DoubleSupport10initializeEv()
          to label %7 unwind label %9, !prof !50

7:                                                ; preds = %6
  invoke void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %8 unwind label %9, !prof !50

8:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %9, !prof !50

9:                                                ; preds = %8, %7, %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  resume { ptr, i32 } %10

11:                                               ; preds = %8, %2
  ret void
}

declare void @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1013DoubleSupport10initializeEv()
  tail call void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInitD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = load i64, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !45
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_1019PlatformSupportInit13s_initCounterE, align 8, !tbaa !45
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8, !prof !49

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv()
          to label %6 unwind label %9, !prof !50

6:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv()
          to label %7 unwind label %9, !prof !50

7:                                                ; preds = %6
  invoke void @_ZN11xalanc_1_1013DoubleSupport9terminateEv()
          to label %8 unwind label %9, !prof !50

8:                                                ; preds = %7, %1
  tail call void @_ZN11xalanc_1_1012XalanDOMInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  ret void

9:                                                ; preds = %7, %6, %5
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #6
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019PlatformSupportInit9terminateEv() local_unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv()
  tail call void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv()
  tail call void @_ZN11xalanc_1_1013DoubleSupport9terminateEv()
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !51 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1013DoubleSupport10initializeEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1013DoubleSupport9terminateEv() local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport10initializeEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1013DoubleSupport9terminateEv, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1019PlatformSupportInitD2Ev, ptr @_ZN11xalanc_1_1012XalanDOMInitD1Ev, i64 10}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 10}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 1, i32 9}
!50 = !{!"branch_weights", i32 1, i32 0}
!51 = !{!"function_entry_count", i64 0}
