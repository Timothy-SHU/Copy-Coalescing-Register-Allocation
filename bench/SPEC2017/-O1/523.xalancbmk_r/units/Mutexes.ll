; ModuleID = 'Mutexes.cpp'
source_filename = "Mutexes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_78XMLMutexD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78XMLMutexD2Ev
@_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE
@_ZN11xercesc_2_712XMLMutexLockD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLMutexLockD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !41 {
  store ptr null, ptr %0, align 8, !tbaa !42
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr noundef %1)
  store ptr %3, ptr %0, align 8, !tbaa !42
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutexD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !47

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr noundef nonnull %2)
          to label %5 unwind label %7

5:                                                ; preds = %4
  store ptr null, ptr %0, align 8, !tbaa !42
  br label %6

6:                                                ; preds = %5, %1
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #4
  unreachable
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !48 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #4
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr noundef %2)
  ret void
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr noundef %2)
  ret void
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !50 {
  store ptr %1, ptr %0, align 8, !tbaa !51
  %3 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLMutexLockD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr noundef %3)
          to label %4 unwind label %5, !prof !53

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #4
  unreachable
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_78XMLMutexC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xercesc_2_78XMLMutex4lockEv, ptr @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv, i64 20}
!37 = !{ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, ptr @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv, i64 20}
!38 = !{ptr @_ZN11xercesc_2_712XMLMutexLockC2EPNS_8XMLMutexE, ptr @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv, i64 15}
!39 = !{ptr @_ZN11xercesc_2_712XMLMutexLockD2Ev, ptr @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv, i64 15}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 10}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 10, i32 0}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!"function_entry_count", i64 20}
!50 = !{!"function_entry_count", i64 15}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTSN11xercesc_2_712XMLMutexLockE", !44, i64 0}
!53 = !{!"branch_weights", i32 15, i32 0}
