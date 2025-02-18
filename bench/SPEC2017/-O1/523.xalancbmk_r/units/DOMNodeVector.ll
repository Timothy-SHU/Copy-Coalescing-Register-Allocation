; ModuleID = 'DOMNodeVector.cpp'
source_filename = "DOMNodeVector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeVector" = type { ptr, i64, i64 }

@_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE
@_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentEm
@_ZN11xercesc_2_713DOMNodeVectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNodeVectorD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 !prof !37 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 80)
  store ptr %3, ptr %0, align 8, !tbaa !38
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %8, %4 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  store ptr null, ptr %7, align 8, !tbaa !44
  %8 = add nuw nsw i64 %5, 1
  %9 = icmp eq i64 %8, 10
  br i1 %9, label %10, label %4, !prof !45, !llvm.loop !46

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  store i64 10, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %12, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector4initEPNS_11DOMDocumentEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #1 align 2 !prof !51 {
  %4 = shl i64 %2, 3
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %4)
  store ptr %5, ptr %0, align 8, !tbaa !38
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  store ptr null, ptr %10, align 8, !tbaa !44
  %11 = add nuw i64 %8, 1
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %13, label %7, !llvm.loop !46

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  store i64 %2, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #1 align 2 !prof !51 {
  %4 = shl i64 %2, 3
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %4)
  store ptr %5, ptr %0, align 8, !tbaa !38
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  store ptr null, ptr %10, align 8, !tbaa !44
  %11 = add nuw i64 %8, 1
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %13, label %7, !llvm.loop !46

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  store i64 %2, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !50
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVectorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !51 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !44
  %7 = add i64 %5, 1
  store i64 %7, ptr %4, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector10checkSpaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %7, label %30, !prof !52

7:                                                ; preds = %1
  %8 = lshr i64 %5, 1
  %9 = tail call i64 @llvm.umax.i64(i64 %8, i64 10)
  %10 = add i64 %9, %5
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %17 = shl i64 %10, 3
  %18 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %16, i64 noundef %17)
  %19 = load i64, ptr %4, align 8, !tbaa !49
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %22, %7
  store i64 %10, ptr %4, align 8, !tbaa !49
  store ptr %18, ptr %0, align 8, !tbaa !38
  br label %30

22:                                               ; preds = %7, %22
  %23 = phi i64 [ %28, %22 ], [ 0, %7 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds ptr, ptr %18, i64 %23
  store ptr %26, ptr %27, align 8, !tbaa !44
  %28 = add nuw i64 %23, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %21, label %22, !llvm.loop !55

30:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %32, !prof !52

9:                                                ; preds = %3
  %10 = lshr i64 %7, 1
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 10)
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %19 = shl i64 %12, 3
  %20 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %18, i64 noundef %19)
  %21 = load i64, ptr %6, align 8, !tbaa !49
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %24, %9
  store i64 %12, ptr %6, align 8, !tbaa !49
  store ptr %20, ptr %0, align 8, !tbaa !38
  br label %32

24:                                               ; preds = %9, %24
  %25 = phi i64 [ %30, %24 ], [ 0, %9 ]
  %26 = load ptr, ptr %0, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %20, i64 %25
  store ptr %28, ptr %29, align 8, !tbaa !44
  %30 = add nuw i64 %25, 1
  %31 = icmp eq i64 %30, %21
  br i1 %31, label %23, label %24, !llvm.loop !55

32:                                               ; preds = %3, %23
  %33 = load i64, ptr %4, align 8, !tbaa !50
  %34 = icmp ugt i64 %33, %2
  br i1 %34, label %35, label %43, !prof !57

35:                                               ; preds = %32, %35
  %36 = phi i64 [ %41, %35 ], [ %33, %32 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !38
  %38 = getelementptr ptr, ptr %37, i64 %36
  %39 = getelementptr ptr, ptr %38, i64 -1
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  store ptr %40, ptr %38, align 8, !tbaa !44
  %41 = add i64 %36, -1
  %42 = icmp ugt i64 %41, %2
  br i1 %42, label %35, label %43, !prof !58, !llvm.loop !59

43:                                               ; preds = %35, %32
  %44 = load ptr, ptr %0, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 %2
  store ptr %1, ptr %45, align 8, !tbaa !44
  %46 = add i64 %33, 1
  store i64 %46, ptr %4, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 align 2 !prof !51 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !50
  %5 = add i64 %4, -1
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 %5, ptr %8, align 8, !tbaa !50
  ret void

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %12, %9 ], [ %1, %2 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = add nuw i64 %10, 1
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds ptr, ptr %11, i64 %10
  store ptr %14, ptr %15, align 8, !tbaa !44
  %16 = icmp eq i64 %12, %5
  br i1 %16, label %7, label %9, !llvm.loop !60
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 !prof !51 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 %2
  store ptr %1, ptr %5, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_713DOMNodeVectorC2EPNS_11DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 514}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 514}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !40, i64 0, !43, i64 8, !43, i64 16}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"long", !41, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !{!"branch_weights", i32 514, i32 4626}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!39, !43, i64 8}
!50 = !{!39, !43, i64 16}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!"branch_weights", i32 0, i32 650}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !42, i64 0}
!55 = distinct !{!55, !47, !48}
!56 = !{!"function_entry_count", i64 650}
!57 = !{!"branch_weights", i32 46, i32 604}
!58 = !{!"branch_weights", i32 0, i32 46}
!59 = distinct !{!59, !47, !48}
!60 = distinct !{!60, !47, !48}
