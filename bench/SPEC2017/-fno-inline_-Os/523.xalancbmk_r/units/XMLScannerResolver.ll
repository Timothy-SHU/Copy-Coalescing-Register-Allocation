; ModuleID = 'XMLScannerResolver.cpp'
source_filename = "XMLScannerResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

@_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE = external constant [0 x i16], align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %2) #4
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %4, ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret ptr %4

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #5
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE) #4
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 824, ptr noundef %3) #4
  invoke void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
          to label %28 unwind label %8

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %30

10:                                               ; preds = %4
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE) #4
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %3) #4
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %13, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
          to label %28 unwind label %14

14:                                               ; preds = %12
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %30

16:                                               ; preds = %10
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE) #4
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1000, ptr noundef %3) #4
  invoke void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %19, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
          to label %28 unwind label %20

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %30

22:                                               ; preds = %16
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE) #4
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 832, ptr noundef %3) #4
  invoke void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %25, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
          to label %28 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %22, %24, %18, %12, %6
  %29 = phi ptr [ %7, %6 ], [ %13, %12 ], [ %19, %18 ], [ %25, %24 ], [ null, %22 ]
  ret ptr %29

30:                                               ; preds = %26, %20, %14, %8
  %31 = phi ptr [ %25, %26 ], [ %19, %20 ], [ %13, %14 ], [ %7, %8 ]
  %32 = phi { ptr, i32 } [ %27, %26 ], [ %21, %20 ], [ %15, %14 ], [ %9, %8 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %3) #5
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !41

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !42
  %8 = load i16, ptr %1, align 2, !tbaa !42
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !46

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !47

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !42
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !48

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !49

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !42
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !50

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !51

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !42
  %28 = load i16, ptr %26, align 2, !tbaa !42
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !52, !llvm.loop !53

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE) #4
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 824, ptr noundef %7) #4
  invoke void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #4
          to label %32 unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %34

14:                                               ; preds = %8
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE) #4
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %7) #4
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %17, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #4
          to label %32 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %34

20:                                               ; preds = %14
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE) #4
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1000, ptr noundef %7) #4
  invoke void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %23, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #4
          to label %32 unwind label %24

24:                                               ; preds = %22
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %34

26:                                               ; preds = %20
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE) #4
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 832, ptr noundef %7) #4
  invoke void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %29, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #4
          to label %32 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %26, %28, %22, %16, %10
  %33 = phi ptr [ %11, %10 ], [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ null, %26 ]
  ret ptr %33

34:                                               ; preds = %30, %24, %18, %12
  %35 = phi ptr [ %29, %30 ], [ %23, %24 ], [ %17, %18 ], [ %11, %12 ]
  %36 = phi { ptr, i32 } [ %31, %30 ], [ %25, %24 ], [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %7) #5
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!"function_entry_count", i64 1231717351}
!41 = !{!"branch_weights", i32 621, i32 -1469098093}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"branch_weights", i32 408901017, i32 1}
!47 = !{!"branch_weights", i32 267, i32 4}
!48 = !{!"branch_weights", i32 1, i32 4}
!49 = !{!"branch_weights", i32 156, i32 112}
!50 = !{!"branch_weights", i32 1, i32 112}
!51 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!52 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
