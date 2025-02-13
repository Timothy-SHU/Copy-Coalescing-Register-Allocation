; ModuleID = 'XMLRegisterCleanup.cpp'
source_filename = "XMLRegisterCleanup.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }

@_ZN11xercesc_2_720gXMLCleanupListMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_715gXMLCleanupListE = external local_unnamed_addr global ptr, align 8

@_ZN11xercesc_2_718XMLRegisterCleanupC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XMLRegisterCleanupC2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !50

4:                                                ; preds = %1
  tail call void %2() #4
  br label %5

5:                                                ; preds = %4, %1
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !44 {
  %2 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  br i1 %5, label %10, label %8, !prof !54

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %4, i64 0, i32 2
  store ptr %7, ptr %9, align 8, !tbaa !53
  br label %10

10:                                               ; preds = %1, %8
  %11 = icmp eq ptr %7, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %7, i64 0, i32 1
  %13 = select i1 %11, ptr @_ZN11xercesc_2_715gXMLCleanupListE, ptr %12, !prof !55
  store ptr %4, ptr %13, align 8, !tbaa !51
  %14 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #4
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !44 {
  store ptr %1, ptr %0, align 8, !tbaa !45
  %3 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %16, !prof !56

11:                                               ; preds = %2
  %12 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !51
  store ptr %12, ptr %4, align 8, !tbaa !52
  store ptr %0, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !54

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %12, i64 0, i32 2
  store ptr %0, ptr %15, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %11, %14, %2
  %17 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 !prof !57 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanupC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!43}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42}
!36 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, i64 10}
!37 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, ptr @_ZN11xercesc_2_78XMLMutex4lockEv, i64 10}
!38 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, i64 10}
!39 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv, i64 10}
!40 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, ptr @_ZN11xercesc_2_78XMLMutex4lockEv, i64 10}
!41 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, i64 10}
!42 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanupC2Ev, ptr @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv, i64 44}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 10}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN11xercesc_2_718XMLRegisterCleanupE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"branch_weights", i32 1, i32 11}
!51 = !{!47, !47, i64 0}
!52 = !{!46, !47, i64 8}
!53 = !{!46, !47, i64 16}
!54 = !{!"branch_weights", i32 2, i32 10}
!55 = !{!"branch_weights", i32 11, i32 1}
!56 = !{!"branch_weights", i32 121, i32 23}
!57 = !{!"function_entry_count", i64 54}
!58 = !{!"function_entry_count", i64 44}
