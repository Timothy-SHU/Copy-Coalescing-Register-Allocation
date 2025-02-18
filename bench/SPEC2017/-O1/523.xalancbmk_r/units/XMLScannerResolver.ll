; ModuleID = 'XMLScannerResolver.cpp'
source_filename = "XMLScannerResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE = external local_unnamed_addr constant [0 x i16], align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %2)
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %4, ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %5 unwind label %6, !prof !39

5:                                                ; preds = %3
  ret ptr %4

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #3
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %0, align 2, !tbaa !41
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, align 2, !tbaa !41
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %28

10:                                               ; preds = %4
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, align 2, !tbaa !41
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %28

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %0, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !41
  %22 = load i16, ptr %20, align 2, !tbaa !41
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %28, !llvm.loop !45

24:                                               ; preds = %13, %10
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 824, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %25, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %97 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %99

28:                                               ; preds = %18, %6, %10
  br i1 %5, label %33, label %29

29:                                               ; preds = %28
  %30 = load i16, ptr %0, align 2, !tbaa !41
  %31 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, align 2, !tbaa !41
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %36, label %51

33:                                               ; preds = %28
  %34 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, align 2, !tbaa !41
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %51

36:                                               ; preds = %29, %41
  %37 = phi i16 [ %44, %41 ], [ %30, %29 ]
  %38 = phi ptr [ %43, %41 ], [ @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, %29 ]
  %39 = phi ptr [ %42, %41 ], [ %0, %29 ]
  %40 = icmp eq i16 %37, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds i16, ptr %39, i64 1
  %43 = getelementptr inbounds i16, ptr %38, i64 1
  %44 = load i16, ptr %42, align 2, !tbaa !41
  %45 = load i16, ptr %43, align 2, !tbaa !41
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %36, label %51, !llvm.loop !45

47:                                               ; preds = %36, %33
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %48, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %97 unwind label %49

49:                                               ; preds = %47
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %99

51:                                               ; preds = %41, %29, %33
  br i1 %5, label %56, label %52

52:                                               ; preds = %51
  %53 = load i16, ptr %0, align 2, !tbaa !41
  %54 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, align 2, !tbaa !41
  %55 = icmp eq i16 %53, %54
  br i1 %55, label %59, label %74

56:                                               ; preds = %51
  %57 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, align 2, !tbaa !41
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %70, label %74

59:                                               ; preds = %52, %64
  %60 = phi i16 [ %67, %64 ], [ %53, %52 ]
  %61 = phi ptr [ %66, %64 ], [ @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, %52 ]
  %62 = phi ptr [ %65, %64 ], [ %0, %52 ]
  %63 = icmp eq i16 %60, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds i16, ptr %62, i64 1
  %66 = getelementptr inbounds i16, ptr %61, i64 1
  %67 = load i16, ptr %65, align 2, !tbaa !41
  %68 = load i16, ptr %66, align 2, !tbaa !41
  %69 = icmp eq i16 %67, %68
  br i1 %69, label %59, label %74, !llvm.loop !45

70:                                               ; preds = %59, %56
  %71 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1000, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %71, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %97 unwind label %72

72:                                               ; preds = %70
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %99

74:                                               ; preds = %64, %52, %56
  br i1 %5, label %79, label %75

75:                                               ; preds = %74
  %76 = load i16, ptr %0, align 2, !tbaa !41
  %77 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, align 2, !tbaa !41
  %78 = icmp eq i16 %76, %77
  br i1 %78, label %82, label %97

79:                                               ; preds = %74
  %80 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, align 2, !tbaa !41
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %93, label %97

82:                                               ; preds = %75, %87
  %83 = phi i16 [ %90, %87 ], [ %76, %75 ]
  %84 = phi ptr [ %89, %87 ], [ @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, %75 ]
  %85 = phi ptr [ %88, %87 ], [ %0, %75 ]
  %86 = icmp eq i16 %83, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds i16, ptr %85, i64 1
  %89 = getelementptr inbounds i16, ptr %84, i64 1
  %90 = load i16, ptr %88, align 2, !tbaa !41
  %91 = load i16, ptr %89, align 2, !tbaa !41
  %92 = icmp eq i16 %90, %91
  br i1 %92, label %82, label %97, !llvm.loop !45

93:                                               ; preds = %82, %79
  %94 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 832, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %94, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %97 unwind label %95

95:                                               ; preds = %93
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %99

97:                                               ; preds = %87, %75, %79, %93, %70, %47, %24
  %98 = phi ptr [ %25, %24 ], [ %48, %47 ], [ %71, %70 ], [ %94, %93 ], [ null, %79 ], [ null, %75 ], [ null, %87 ]
  ret ptr %98

99:                                               ; preds = %95, %72, %49, %26
  %100 = phi ptr [ %94, %95 ], [ %71, %72 ], [ %48, %49 ], [ %25, %26 ]
  %101 = phi { ptr, i32 } [ %96, %95 ], [ %73, %72 ], [ %50, %49 ], [ %27, %26 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %3) #3
  resume { ptr, i32 } %101
}

declare void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %9 = icmp eq ptr %0, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i16, ptr %0, align 2, !tbaa !41
  %12 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, align 2, !tbaa !41
  %13 = icmp eq i16 %11, %12
  br i1 %13, label %17, label %32

14:                                               ; preds = %8
  %15 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, align 2, !tbaa !41
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %32

17:                                               ; preds = %10, %22
  %18 = phi i16 [ %25, %22 ], [ %11, %10 ]
  %19 = phi ptr [ %24, %22 ], [ @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE, %10 ]
  %20 = phi ptr [ %23, %22 ], [ %0, %10 ]
  %21 = icmp eq i16 %18, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = getelementptr inbounds i16, ptr %19, i64 1
  %25 = load i16, ptr %23, align 2, !tbaa !41
  %26 = load i16, ptr %24, align 2, !tbaa !41
  %27 = icmp eq i16 %25, %26
  br i1 %27, label %17, label %32, !llvm.loop !45

28:                                               ; preds = %17, %14
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 824, ptr noundef %7)
  invoke void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %29, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %101 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %103

32:                                               ; preds = %22, %10, %14
  br i1 %9, label %37, label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %0, align 2, !tbaa !41
  %35 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, align 2, !tbaa !41
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %40, label %55

37:                                               ; preds = %32
  %38 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, align 2, !tbaa !41
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %51, label %55

40:                                               ; preds = %33, %45
  %41 = phi i16 [ %48, %45 ], [ %34, %33 ]
  %42 = phi ptr [ %47, %45 ], [ @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE, %33 ]
  %43 = phi ptr [ %46, %45 ], [ %0, %33 ]
  %44 = icmp eq i16 %41, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  %47 = getelementptr inbounds i16, ptr %42, i64 1
  %48 = load i16, ptr %46, align 2, !tbaa !41
  %49 = load i16, ptr %47, align 2, !tbaa !41
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %40, label %55, !llvm.loop !45

51:                                               ; preds = %40, %37
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1024, ptr noundef %7)
  invoke void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %52, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %101 unwind label %53

53:                                               ; preds = %51
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %103

55:                                               ; preds = %45, %33, %37
  br i1 %9, label %60, label %56

56:                                               ; preds = %55
  %57 = load i16, ptr %0, align 2, !tbaa !41
  %58 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, align 2, !tbaa !41
  %59 = icmp eq i16 %57, %58
  br i1 %59, label %63, label %78

60:                                               ; preds = %55
  %61 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, align 2, !tbaa !41
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %78

63:                                               ; preds = %56, %68
  %64 = phi i16 [ %71, %68 ], [ %57, %56 ]
  %65 = phi ptr [ %70, %68 ], [ @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE, %56 ]
  %66 = phi ptr [ %69, %68 ], [ %0, %56 ]
  %67 = icmp eq i16 %64, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds i16, ptr %66, i64 1
  %70 = getelementptr inbounds i16, ptr %65, i64 1
  %71 = load i16, ptr %69, align 2, !tbaa !41
  %72 = load i16, ptr %70, align 2, !tbaa !41
  %73 = icmp eq i16 %71, %72
  br i1 %73, label %63, label %78, !llvm.loop !45

74:                                               ; preds = %63, %60
  %75 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 1000, ptr noundef %7)
  invoke void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %75, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %101 unwind label %76

76:                                               ; preds = %74
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %103

78:                                               ; preds = %68, %56, %60
  br i1 %9, label %83, label %79

79:                                               ; preds = %78
  %80 = load i16, ptr %0, align 2, !tbaa !41
  %81 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, align 2, !tbaa !41
  %82 = icmp eq i16 %80, %81
  br i1 %82, label %86, label %101

83:                                               ; preds = %78
  %84 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, align 2, !tbaa !41
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %97, label %101

86:                                               ; preds = %79, %91
  %87 = phi i16 [ %94, %91 ], [ %80, %79 ]
  %88 = phi ptr [ %93, %91 ], [ @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE, %79 ]
  %89 = phi ptr [ %92, %91 ], [ %0, %79 ]
  %90 = icmp eq i16 %87, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i16, ptr %89, i64 1
  %93 = getelementptr inbounds i16, ptr %88, i64 1
  %94 = load i16, ptr %92, align 2, !tbaa !41
  %95 = load i16, ptr %93, align 2, !tbaa !41
  %96 = icmp eq i16 %94, %95
  br i1 %96, label %86, label %101, !llvm.loop !45

97:                                               ; preds = %86, %83
  %98 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 832, ptr noundef %7)
  invoke void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %98, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %101 unwind label %99

99:                                               ; preds = %97
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %91, %79, %83, %97, %74, %51, %28
  %102 = phi ptr [ %29, %28 ], [ %52, %51 ], [ %75, %74 ], [ %98, %97 ], [ null, %83 ], [ null, %79 ], [ null, %91 ]
  ret ptr %102

103:                                              ; preds = %99, %76, %53, %30
  %104 = phi ptr [ %98, %99 ], [ %75, %76 ], [ %52, %53 ], [ %29, %30 ]
  %105 = phi { ptr, i32 } [ %100, %99 ], [ %77, %76 ], [ %54, %53 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %104, ptr noundef %7) #3
  resume { ptr, i32 } %105
}

declare void @_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!"branch_weights", i32 3, i32 0}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
