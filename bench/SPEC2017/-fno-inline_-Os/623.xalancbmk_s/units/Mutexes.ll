; ModuleID = 'Mutexes.cpp'
source_filename = "Mutexes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_78XMLMutexD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78XMLMutexD2Ev
@_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE
@_ZN11xercesc_2_712XMLMutexLockD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLMutexLockD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #4
  store ptr null, ptr %0, align 8, !tbaa !46
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr noundef %1) #4
  store ptr %3, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !51 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutexD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !52

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr noundef nonnull %2) #4
          to label %5 unwind label %7

5:                                                ; preds = %4
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %1
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #5
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr noundef %2) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr noundef %2) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #4
  store ptr %1, ptr %0, align 8, !tbaa !55
  tail call void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLMutexLockD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #4
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #5
  unreachable
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!44}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !{ptr @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!37 = !{ptr @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE, i64 10}
!38 = !{ptr @_ZN11xercesc_2_78XMLMutexD2Ev, ptr @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv, i64 1}
!39 = !{ptr @_ZN11xercesc_2_78XMLMutex4lockEv, ptr @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv, i64 35}
!40 = !{ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, ptr @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv, i64 35}
!41 = !{ptr @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 15}
!42 = !{ptr @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE, ptr @_ZN11xercesc_2_78XMLMutex4lockEv, i64 15}
!43 = !{ptr @_ZN11xercesc_2_712XMLMutexLockD2Ev, ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, i64 15}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 10}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 5836268}
!52 = !{!"branch_weights", i32 11, i32 1}
!53 = !{!"function_entry_count", i64 35}
!54 = !{!"function_entry_count", i64 15}
!55 = !{!56, !48, i64 0}
!56 = !{!"_ZTSN11xercesc_2_712XMLMutexLockE", !48, i64 0}
