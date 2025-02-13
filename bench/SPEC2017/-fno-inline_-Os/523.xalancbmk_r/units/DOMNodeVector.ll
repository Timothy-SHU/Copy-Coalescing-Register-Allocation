; ModuleID = 'DOMNodeVector.cpp'
source_filename = "DOMNodeVector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeVector" = type { ptr, i64, i64 }

@_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE
@_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentEm
@_ZN11xercesc_2_713DOMNodeVectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNodeVectorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef 10) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 align 2 !prof !40 {
  %4 = shl i64 %2, 3
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %4) #7
  store ptr %5, ptr %0, align 8, !tbaa !41
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %13, label %7, !prof !47

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  store ptr null, ptr %10, align 8, !tbaa !48
  %11 = add nuw i64 %8, 1
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %13, label %7, !prof !49, !llvm.loop !50

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  store i64 %2, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #7
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !54 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !48
  %7 = add i64 %5, 1
  store i64 %7, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %7, label %30, !prof !56

7:                                                ; preds = %1
  %8 = lshr i64 %3, 1
  %9 = tail call i64 @llvm.umax.i64(i64 %8, i64 10)
  %10 = add i64 %9, %3
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  %17 = shl i64 %10, 3
  %18 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %16, i64 noundef %17) #7
  %19 = load i64, ptr %4, align 8, !tbaa !52
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %22, %7
  store i64 %10, ptr %4, align 8, !tbaa !52
  store ptr %18, ptr %0, align 8, !tbaa !41
  br label %30

22:                                               ; preds = %7, %22
  %23 = phi i64 [ %28, %22 ], [ 0, %7 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %18, i64 %23
  store ptr %26, ptr %27, align 8, !tbaa !48
  %28 = add nuw i64 %23, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %21, label %22, !llvm.loop !59

30:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = icmp ugt i64 %5, %2
  br i1 %6, label %7, label %15, !prof !60

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %13, %7 ], [ %5, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = getelementptr ptr, ptr %9, i64 %8
  %11 = getelementptr ptr, ptr %10, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  store ptr %12, ptr %10, align 8, !tbaa !48
  %13 = add i64 %8, -1
  %14 = icmp ugt i64 %13, %2
  br i1 %14, label %7, label %15, !prof !61, !llvm.loop !62

15:                                               ; preds = %7, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !41
  %17 = getelementptr inbounds ptr, ptr %16, i64 %2
  store ptr %1, ptr %17, align 8, !tbaa !48
  %18 = add i64 %5, 1
  store i64 %18, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 align 2 !prof !54 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !53
  %5 = add i64 %4, -1
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %2
  store i64 %5, ptr %3, align 8, !tbaa !53
  ret void

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %11, %8 ], [ %1, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = add nuw i64 %9, 1
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %10, i64 %9
  store ptr %13, ptr %14, align 8, !tbaa !48
  %15 = icmp eq i64 %11, %5
  br i1 %15, label %7, label %8, !llvm.loop !63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 %2
  store ptr %1, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE, ptr @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm, i64 514}
!36 = !{ptr @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 514}
!37 = !{ptr @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1}
!38 = !{ptr @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm, ptr @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv, i64 650}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 514}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !43, i64 0, !46, i64 8, !46, i64 16}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"long", !44, i64 0}
!47 = !{!"branch_weights", i32 1, i32 514}
!48 = !{!43, !43, i64 0}
!49 = !{!"branch_weights", i32 514, i32 4627}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!42, !46, i64 8}
!53 = !{!42, !46, i64 16}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!"function_entry_count", i64 650}
!56 = !{!"branch_weights", i32 1, i32 651}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !45, i64 0}
!59 = distinct !{!59, !51}
!60 = !{!"branch_weights", i32 47, i32 604}
!61 = !{!"branch_weights", i32 0, i32 47}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
