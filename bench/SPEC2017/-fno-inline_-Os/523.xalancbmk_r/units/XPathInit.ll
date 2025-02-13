; ModuleID = 'XPathInit.cpp'
source_filename = "XPathInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

@_ZN11xalanc_1_109XPathInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_109XPathInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_109XPathInitD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %4 unwind label %9

4:                                                ; preds = %2
  %5 = load i64, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !53
  %6 = add i64 %5, 1
  store i64 %6, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !53
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %8, label %13, !prof !57

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %13 unwind label %11

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %14

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  br label %14

13:                                               ; preds = %8, %4
  ret void

14:                                               ; preds = %11, %9
  %15 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_109XPathInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9XPathInitEN11xercesc_2_713MemoryManagerEEEPT_RS3_RS5_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 2) #6
  %5 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
  invoke void @_ZN11xalanc_1_109XPathInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
          to label %6 unwind label %8

6:                                                ; preds = %3
  store ptr %5, ptr %1, align 8, !tbaa !59
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
  %7 = load ptr, ptr %1, align 8, !tbaa !59
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret ptr %7

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_109XPathInitD2Ev(ptr noundef nonnull align 1 dereferenceable(2) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = load i64, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !53
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_109XPathInit13s_initCounterE, align 8, !tbaa !53
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6, !prof !57

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_109XPathInit9terminateEv() #6
          to label %6 unwind label %8

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathInit", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #7
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_109XPathInit9terminateEv() local_unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv() #6
  tail call void @_ZN11xalanc_1_105XPath9terminateEv() #6
  tail call void @_ZN11xalanc_1_108XUnknown9terminateEv() #6
  tail call void @_ZN11xalanc_1_107XObject9terminateEv() #6
  tail call void @_ZN11xalanc_1_1012FunctionLang9terminateEv() #6
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPath9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108XUnknown9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012FunctionLang9terminateEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !61 {
  store ptr %1, ptr %0, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !62
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #6
  store ptr %8, ptr %4, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !66

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #6
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #9
  unreachable
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

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
!53 = !{!54, !54, i64 0}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"branch_weights", i32 2, i32 1}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !55, i64 0}
!61 = !{!"function_entry_count", i64 50702}
!62 = !{!63, !63, i64 0}
!63 = !{!"vtable pointer", !56, i64 0}
!64 = !{!65, !60, i64 8}
!65 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !60, i64 0, !60, i64 8}
!66 = !{!"branch_weights", i32 50703, i32 1}
!67 = !{!65, !60, i64 0}
