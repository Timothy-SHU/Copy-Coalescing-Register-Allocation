; ModuleID = 'XMLSupportInit.cpp'
source_filename = "XMLSupportInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XMLSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1014XMLSupportInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014XMLSupportInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XMLSupportInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XMLSupportInitD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XMLSupportInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  %3 = getelementptr inbounds %"class.xalanc_1_10::XMLSupportInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %4 unwind label %9

4:                                                ; preds = %2
  %5 = load i64, ptr @_ZN11xalanc_1_1014XMLSupportInit13s_initCounterE, align 8, !tbaa !45
  %6 = add i64 %5, 1
  store i64 %6, ptr @_ZN11xalanc_1_1014XMLSupportInit13s_initCounterE, align 8, !tbaa !45
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %8, label %13, !prof !49

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1014XMLSupportInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %13 unwind label %11

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %14

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #6
  br label %14

13:                                               ; preds = %8, %4
  ret void

14:                                               ; preds = %11, %9
  %15 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XMLSupportInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1022XalanXMLSerializerBase10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XMLSupportInitD2Ev(ptr noundef nonnull align 1 dereferenceable(2) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = load i64, ptr @_ZN11xalanc_1_1014XMLSupportInit13s_initCounterE, align 8, !tbaa !45
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_1014XMLSupportInit13s_initCounterE, align 8, !tbaa !45
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6, !prof !49

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1014XMLSupportInit9terminateEv() #5
          to label %6 unwind label %8

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XMLSupportInit", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #6
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #7
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XMLSupportInit9terminateEv() local_unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv() #5
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
declare void @_ZN11xalanc_1_1022XalanXMLSerializerBase10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv() local_unnamed_addr #1

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
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XMLSupportInit10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014XMLSupportInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitD2Ev, ptr @_ZN11xalanc_1_1014XMLSupportInit9terminateEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitD2Ev, ptr @_ZN11xalanc_1_1014DOMSupportInitD1Ev, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1014XMLSupportInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInitD1Ev, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1014XMLSupportInit9terminateEv, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 2, i32 2}
!50 = !{!"function_entry_count", i64 1}
