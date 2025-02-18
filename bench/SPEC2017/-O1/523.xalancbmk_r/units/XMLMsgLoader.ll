; ModuleID = 'XMLMsgLoader.cpp'
source_filename = "XMLMsgLoader.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN11xercesc_2_712XMLMsgLoader7fLocaleE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_712XMLMsgLoader5fPathE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_712XMLMsgLoader9fLanguageE = dso_local global [3 x i16] [i16 101, i16 110, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = load ptr, ptr @_ZN11xercesc_2_712XMLMsgLoader7fLocaleE, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !43

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2), !prof !46
  store ptr null, ptr @_ZN11xercesc_2_712XMLMsgLoader7fLocaleE, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %4, %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %16, label %11, !prof !43

11:                                               ; preds = %9
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %12)
  store ptr %13, ptr @_ZN11xercesc_2_712XMLMsgLoader7fLocaleE, align 8, !tbaa !39
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef %13, ptr noundef nonnull @_ZN11xercesc_2_712XMLMsgLoader9fLanguageE, i32 noundef 2, ptr noundef %14)
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @_ZN11xercesc_2_712XMLMsgLoader9fLanguageE, i64 0, i64 2), align 2, !tbaa !47
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XMLMsgLoader9getLocaleEv() local_unnamed_addr #2 align 2 !prof !49 {
  %1 = load ptr, ptr @_ZN11xercesc_2_712XMLMsgLoader7fLocaleE, align 8, !tbaa !39
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = load ptr, ptr @_ZN11xercesc_2_712XMLMsgLoader5fPathE, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !50

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2)
  store ptr null, ptr @_ZN11xercesc_2_712XMLMsgLoader5fPathE, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %4, %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %14, label %11, !prof !50

11:                                               ; preds = %9
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %12)
  store ptr %13, ptr @_ZN11xercesc_2_712XMLMsgLoader5fPathE, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XMLMsgLoader10getNLSHomeEv() local_unnamed_addr #2 align 2 !prof !49 {
  %1 = load ptr, ptr @_ZN11xercesc_2_712XMLMsgLoader5fPathE, align 8, !tbaa !39
  ret ptr %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712XMLMsgLoader15getLanguageNameEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_712XMLMsgLoader9fLanguageE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712XMLMsgLoader15setLanguageNameEPt(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 align 2 !prof !49 {
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc, ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"branch_weights", i32 1, i32 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !42, i64 0}
!46 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !41, i64 0}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!"branch_weights", i32 2, i32 0}
