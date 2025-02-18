; ModuleID = 'XalanSourceTreeInit.cpp'
source_filename = "XalanSourceTreeInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSourceTreeInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit", %"class.xalanc_1_10::XMLSupportInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }
%"class.xalanc_1_10::XMLSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1019XalanSourceTreeInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %13, !prof !49

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeInit", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %15, !prof !49

6:                                                ; preds = %4
  %7 = load i64, ptr @_ZN11xalanc_1_1019XalanSourceTreeInit13s_initCounterE, align 8, !tbaa !50
  %8 = add i64 %7, 1
  store i64 %8, ptr @_ZN11xalanc_1_1019XalanSourceTreeInit13s_initCounterE, align 8, !tbaa !50
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %19, !prof !49

10:                                               ; preds = %6
  invoke void @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %17, !prof !49

11:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %12 unwind label %17, !prof !49

12:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %19 unwind label %17, !prof !49

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %22

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %12, %11, %10
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %5) #5
  br label %20

19:                                               ; preds = %12, %6
  ret void

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #5
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  resume { ptr, i32 } %23
}

declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev(ptr noundef nonnull align 1 dereferenceable(4) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = load i64, ptr @_ZN11xalanc_1_1019XalanSourceTreeInit13s_initCounterE, align 8, !tbaa !50
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_1019XalanSourceTreeInit13s_initCounterE, align 8, !tbaa !50
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8, !prof !49

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv()
          to label %6 unwind label %11, !prof !49

6:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv()
          to label %7 unwind label %11, !prof !49

7:                                                ; preds = %6
  invoke void @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv()
          to label %8 unwind label %11, !prof !49

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeInit", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %9) #5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeInit", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #5
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  ret void

11:                                               ; preds = %7, %6, %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #6
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeInit9terminateEv() local_unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv()
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv()
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv()
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv() local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1014XMLSupportInitD1Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1014DOMSupportInitD1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInitD1Ev, i64 1}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"branch_weights", i32 1, i32 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"function_entry_count", i64 0}
