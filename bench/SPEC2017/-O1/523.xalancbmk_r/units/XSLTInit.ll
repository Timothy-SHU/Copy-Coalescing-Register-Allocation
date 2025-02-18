; ModuleID = 'XSLTInit.cpp'
source_filename = "XSLTInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XSLTInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit", %"class.xalanc_1_10::XMLSupportInit", %"class.xalanc_1_10::XalanSourceTreeInit", %"class.xalanc_1_10::XPathInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }
%"class.xalanc_1_10::XMLSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::XalanSourceTreeInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit", %"class.xalanc_1_10::XMLSupportInit" }
%"class.xalanc_1_10::XPathInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_108XSLTInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN11xalanc_1_10L21s_staticMemoryManagerE = internal unnamed_addr global ptr null, align 8

@_ZN11xalanc_1_108XSLTInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_108XSLTInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XSLTInitD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %19, !prof !56

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %21, !prof !56

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %8 unwind label %23, !prof !56

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %10 unwind label %25, !prof !56

10:                                               ; preds = %8
  %11 = load i64, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !57
  %12 = add i64 %11, 1
  store i64 %12, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !57
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %14, label %29, !prof !56

14:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %15 unwind label %27, !prof !56

15:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %16 unwind label %27, !prof !56

16:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %17 unwind label %27, !prof !56

17:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %18 unwind label %27, !prof !56

18:                                               ; preds = %17
  store ptr %1, ptr @_ZN11xalanc_1_10L21s_staticMemoryManagerE, align 8, !tbaa !61
  br label %29

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %36

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %34

23:                                               ; preds = %6
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %32

25:                                               ; preds = %8
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %17, %16, %15, %14
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %9) #5
  br label %30

29:                                               ; preds = %18, %10
  ret void

30:                                               ; preds = %27, %25
  %31 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %7) #5
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %5) #5
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #5
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  resume { ptr, i32 } %37
}

declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %0, ptr @_ZN11xalanc_1_10L21s_staticMemoryManagerE, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 10), !prof !66
  invoke void @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %7, !prof !56

6:                                                ; preds = %1
  ret ptr %5

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !64
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #6
  unreachable

17:                                               ; preds = %7, %10
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInitD2Ev(ptr noundef nonnull align 1 dereferenceable(10) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load i64, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !57
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !57
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9, !prof !56

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1017StylesheetHandler9terminateEv()
          to label %6 unwind label %14, !prof !56

6:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv()
          to label %7 unwind label %14, !prof !56

7:                                                ; preds = %6
  invoke void @_ZN11xalanc_1_1010ElemNumber9terminateEv()
          to label %8 unwind label %14, !prof !56

8:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_109Constants9terminateEv()
          to label %9 unwind label %14, !prof !56

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %10) #5
  %11 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %11) #5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %12) #5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #5
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  ret void

14:                                               ; preds = %8, %7, %6, %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #6
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInit9terminateEv() local_unnamed_addr #0 align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_1017StylesheetHandler9terminateEv()
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv()
  tail call void @_ZN11xalanc_1_1010ElemNumber9terminateEv()
  tail call void @_ZN11xalanc_1_109Constants9terminateEv()
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !63 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017StylesheetHandler9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1010ElemNumber9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_109Constants9terminateEv() local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1017StylesheetHandler9terminateEv, i64 1}
!46 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_109Constants9terminateEv, i64 1}
!49 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_109XPathInitD1Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1014XMLSupportInitD1Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1014DOMSupportInitD1Ev, i64 1}
!53 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInitD1Ev, i64 1}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 1}
!56 = !{!"branch_weights", i32 1, i32 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !59, i64 0}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !60, i64 0}
!66 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
