; ModuleID = 'XPathInit.cpp'
source_filename = "XPathInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }

$_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_ = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_109XPathInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_109XPathInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_109XPathInitD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %9, !prof !53

4:                                                ; preds = %2
  %5 = load i64, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !54
  %6 = add i64 %5, 1
  store i64 %6, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !54
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %8, label %13, !prof !53

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %13 unwind label %11, !prof !53

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

declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = load ptr, ptr %0, align 8, !tbaa !59
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 2)
  invoke void @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  store ptr %7, ptr %1, align 8, !tbaa !61
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !59
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #7
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_109XPathInitD2Ev(ptr noundef nonnull align 1 dereferenceable(2) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = load i64, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !54
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !54
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6, !prof !53

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_109XPathInit9terminateEv()
          to label %6 unwind label %8, !prof !53

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathInit", ptr %0, i64 0, i32 1
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_109XPathInit9terminateEv() local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv()
  tail call void @_ZN11xalanc_1_105XPath9terminateEv()
  tail call void @_ZN11xalanc_1_108XUnknown9terminateEv()
  tail call void @_ZN11xalanc_1_107XObject9terminateEv()
  tail call void @_ZN11xalanc_1_1012FunctionLang9terminateEv()
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_105XPath9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_108XUnknown9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_107XObject9terminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1012FunctionLang9terminateEv() local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_109XPathInitD2Ev, ptr @_ZN11xalanc_1_109XPathInit9terminateEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_109XPathInitD2Ev, ptr @_ZN11xalanc_1_1014DOMSupportInitD1Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_109XPathInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInitD1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_109XPathInit9terminateEv, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_109XPathInit9terminateEv, ptr @_ZN11xalanc_1_105XPath9terminateEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_109XPathInit9terminateEv, ptr @_ZN11xalanc_1_108XUnknown9terminateEv, i64 1}
!49 = !{ptr @_ZN11xalanc_1_109XPathInit9terminateEv, ptr @_ZN11xalanc_1_107XObject9terminateEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_109XPathInit9terminateEv, ptr @_ZN11xalanc_1_1012FunctionLang9terminateEv, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!"branch_weights", i32 1, i32 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"vtable pointer", !57, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !56, i64 0}
