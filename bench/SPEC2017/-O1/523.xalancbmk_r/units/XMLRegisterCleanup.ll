; ModuleID = 'XMLRegisterCleanup.cpp'
source_filename = "XMLRegisterCleanup.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }

@_ZN11xercesc_2_720gXMLCleanupListMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_715gXMLCleanupListE = external local_unnamed_addr global ptr, align 8

@_ZN11xercesc_2_718XMLRegisterCleanupC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XMLRegisterCleanupC2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !47

4:                                                ; preds = %1
  tail call void %2(), !prof !48
  br label %5

5:                                                ; preds = %4, %1
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !41 {
  %2 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !51

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !53

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %12, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %15, %14 ], [ @_ZN11xercesc_2_715gXMLCleanupListE, %10 ]
  store ptr %4, ptr %17, align 8, !tbaa !49
  %18 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  store ptr %1, ptr %0, align 8, !tbaa !42
  %3 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false, !prof !53
  br i1 %10, label %11, label %16, !prof !53

11:                                               ; preds = %2
  %12 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !49
  store ptr %12, ptr %4, align 8, !tbaa !50
  store ptr %0, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !51

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLRegisterCleanup", ptr %12, i64 0, i32 2
  store ptr %0, ptr %15, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %11, %14, %2
  %17 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  ret void
}

declare void @_ZN11xercesc_2_78XMLMutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78XMLMutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanup12resetCleanupEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 !prof !54 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XMLRegisterCleanupC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !55 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!35 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, i64 10}
!36 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, ptr @_ZN11xercesc_2_78XMLMutex4lockEv, i64 10}
!37 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup17unregisterCleanupEv, ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, i64 10}
!38 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, ptr @_ZN11xercesc_2_78XMLMutex4lockEv, i64 10}
!39 = !{ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, ptr @_ZN11xercesc_2_78XMLMutex6unlockEv, i64 10}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 10}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN11xercesc_2_718XMLRegisterCleanupE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 0, i32 10}
!48 = !{!"VP", i32 0, i64 10, i64 655284586439860887, i64 1, i64 -765924460788068655, i64 1, i64 6547980295628905458, i64 1}
!49 = !{!44, !44, i64 0}
!50 = !{!43, !44, i64 8}
!51 = !{!"branch_weights", i32 1, i32 9}
!52 = !{!43, !44, i64 16}
!53 = !{!"branch_weights", i32 10, i32 0}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!"function_entry_count", i64 44}
