; ModuleID = 'XUtil.cpp'
source_filename = "XUtil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil20getFirstChildElementEPKNS_7DOMNodeE(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 7
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !39

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %18, %14 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8), !prof !40
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %20, label %14, !prof !41

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !41, !llvm.loop !42

20:                                               ; preds = %7, %14, %1
  %21 = phi ptr [ null, %1 ], [ %8, %7 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil22getFirstChildElementNSEPKNS_7DOMNodeEPPKtS5_j(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !45 {
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10, !prof !47

10:                                               ; preds = %4, %96
  %11 = phi ptr [ %101, %96 ], [ %8, %4 ]
  %12 = phi ptr [ %97, %96 ], [ undef, %4 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %11), !prof !48
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %96, !prof !49

18:                                               ; preds = %10
  %19 = icmp ne i32 %3, 0
  br i1 %19, label %20, label %93, !prof !50

20:                                               ; preds = %18
  %21 = icmp eq ptr %2, null
  %22 = zext i32 %3 to i64
  %23 = zext i32 %3 to i64
  br label %24

24:                                               ; preds = %20, %89
  %25 = phi i64 [ 0, %20 ], [ %90, %89 ]
  %26 = phi i1 [ %19, %20 ], [ %91, %89 ]
  %27 = load ptr, ptr %11, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 22
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %11), !prof !51
  %31 = icmp eq ptr %30, null
  %32 = or i1 %21, %31
  br i1 %32, label %37, label %33, !prof !52

33:                                               ; preds = %24
  %34 = load i16, ptr %30, align 2, !tbaa !53
  %35 = load i16, ptr %2, align 2, !tbaa !53
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %45, label %89, !prof !56

37:                                               ; preds = %24
  br i1 %31, label %41, label %38

38:                                               ; preds = %37
  %39 = load i16, ptr %30, align 2, !tbaa !53
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %38, %37
  br i1 %21, label %56, label %42

42:                                               ; preds = %41
  %43 = load i16, ptr %2, align 2, !tbaa !53
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %89

45:                                               ; preds = %33, %50
  %46 = phi i16 [ %53, %50 ], [ %34, %33 ]
  %47 = phi ptr [ %52, %50 ], [ %2, %33 ]
  %48 = phi ptr [ %51, %50 ], [ %30, %33 ]
  %49 = icmp eq i16 %46, 0
  br i1 %49, label %56, label %50, !prof !57

50:                                               ; preds = %45
  %51 = getelementptr inbounds i16, ptr %48, i64 1
  %52 = getelementptr inbounds i16, ptr %47, i64 1
  %53 = load i16, ptr %51, align 2, !tbaa !53
  %54 = load i16, ptr %52, align 2, !tbaa !53
  %55 = icmp eq i16 %53, %54
  br i1 %55, label %45, label %89, !prof !58, !llvm.loop !59

56:                                               ; preds = %45, %42, %41
  %57 = load ptr, ptr %11, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %11), !prof !60
  %61 = getelementptr inbounds ptr, ptr %1, i64 %25
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = icmp eq ptr %60, null
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %70, label %66, !prof !52

66:                                               ; preds = %56
  %67 = load i16, ptr %60, align 2, !tbaa !53
  %68 = load i16, ptr %62, align 2, !tbaa !53
  %69 = icmp eq i16 %67, %68
  br i1 %69, label %78, label %89, !prof !63

70:                                               ; preds = %56
  br i1 %63, label %74, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %60, align 2, !tbaa !53
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71, %70
  br i1 %64, label %93, label %75

75:                                               ; preds = %74
  %76 = load i16, ptr %62, align 2, !tbaa !53
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %93, label %89

78:                                               ; preds = %66, %83
  %79 = phi i16 [ %86, %83 ], [ %67, %66 ]
  %80 = phi ptr [ %85, %83 ], [ %62, %66 ]
  %81 = phi ptr [ %84, %83 ], [ %60, %66 ]
  %82 = icmp eq i16 %79, 0
  br i1 %82, label %93, label %83, !prof !64

83:                                               ; preds = %78
  %84 = getelementptr inbounds i16, ptr %81, i64 1
  %85 = getelementptr inbounds i16, ptr %80, i64 1
  %86 = load i16, ptr %84, align 2, !tbaa !53
  %87 = load i16, ptr %85, align 2, !tbaa !53
  %88 = icmp eq i16 %86, %87
  br i1 %88, label %78, label %89, !prof !65, !llvm.loop !59

89:                                               ; preds = %50, %83, %33, %66, %75, %71, %42, %38
  %90 = add nuw nsw i64 %25, 1
  %91 = icmp ult i64 %90, %22
  %92 = icmp eq i64 %90, %23
  br i1 %92, label %93, label %24, !prof !66, !llvm.loop !67

93:                                               ; preds = %74, %89, %75, %78, %18
  %94 = phi i1 [ %19, %18 ], [ %26, %78 ], [ %26, %75 ], [ %91, %89 ], [ %26, %74 ]
  %95 = phi ptr [ %12, %18 ], [ %11, %78 ], [ %11, %75 ], [ %12, %89 ], [ %11, %74 ]
  br i1 %94, label %103, label %96, !prof !68

96:                                               ; preds = %93, %10
  %97 = phi ptr [ %95, %93 ], [ %12, %10 ]
  %98 = load ptr, ptr %11, align 8, !tbaa !35
  %99 = getelementptr inbounds ptr, ptr %98, i64 10
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %11), !prof !69
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %10, !prof !49, !llvm.loop !70

103:                                              ; preds = %93, %96, %4
  %104 = phi ptr [ null, %4 ], [ %95, %93 ], [ null, %96 ]
  ret ptr %104
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil21getNextSiblingElementEPKNS_7DOMNodeE(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 10
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !73

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %18, %14 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8), !prof !74
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %20, label %14, !prof !75

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !76, !llvm.loop !77

20:                                               ; preds = %7, %14, %1
  %21 = phi ptr [ null, %1 ], [ %8, %7 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil23getNextSiblingElementNSEPKNS_7DOMNodeEPPKtS5_j(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !78 {
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10, !prof !80

10:                                               ; preds = %4
  %11 = icmp ne i32 %3, 0
  br label %12

12:                                               ; preds = %10, %97
  %13 = phi ptr [ %8, %10 ], [ %102, %97 ]
  %14 = phi ptr [ undef, %10 ], [ %98, %97 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef signext i16 %17(ptr noundef nonnull align 8 dereferenceable(8) %13), !prof !81
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %97, !prof !82

20:                                               ; preds = %12
  br i1 %11, label %21, label %94, !prof !56

21:                                               ; preds = %20
  %22 = icmp eq ptr %2, null
  %23 = zext i32 %3 to i64
  %24 = zext i32 %3 to i64
  br label %25

25:                                               ; preds = %21, %90
  %26 = phi i64 [ 0, %21 ], [ %91, %90 ]
  %27 = phi i1 [ %11, %21 ], [ %92, %90 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 22
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %13), !prof !83
  %32 = icmp eq ptr %31, null
  %33 = or i1 %22, %32
  br i1 %33, label %38, label %34, !prof !84

34:                                               ; preds = %25
  %35 = load i16, ptr %31, align 2, !tbaa !53
  %36 = load i16, ptr %2, align 2, !tbaa !53
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %46, label %90, !prof !56

38:                                               ; preds = %25
  br i1 %32, label %42, label %39

39:                                               ; preds = %38
  %40 = load i16, ptr %31, align 2, !tbaa !53
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %39, %38
  br i1 %22, label %57, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %2, align 2, !tbaa !53
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %90

46:                                               ; preds = %34, %51
  %47 = phi i16 [ %54, %51 ], [ %35, %34 ]
  %48 = phi ptr [ %53, %51 ], [ %2, %34 ]
  %49 = phi ptr [ %52, %51 ], [ %31, %34 ]
  %50 = icmp eq i16 %47, 0
  br i1 %50, label %57, label %51, !prof !85

51:                                               ; preds = %46
  %52 = getelementptr inbounds i16, ptr %49, i64 1
  %53 = getelementptr inbounds i16, ptr %48, i64 1
  %54 = load i16, ptr %52, align 2, !tbaa !53
  %55 = load i16, ptr %53, align 2, !tbaa !53
  %56 = icmp eq i16 %54, %55
  br i1 %56, label %46, label %90, !prof !86, !llvm.loop !59

57:                                               ; preds = %46, %43, %42
  %58 = load ptr, ptr %13, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %13), !prof !87
  %62 = getelementptr inbounds ptr, ptr %1, i64 %26
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = icmp eq ptr %61, null
  %65 = icmp eq ptr %63, null
  %66 = or i1 %64, %65
  br i1 %66, label %71, label %67, !prof !84

67:                                               ; preds = %57
  %68 = load i16, ptr %61, align 2, !tbaa !53
  %69 = load i16, ptr %63, align 2, !tbaa !53
  %70 = icmp eq i16 %68, %69
  br i1 %70, label %79, label %90, !prof !88

71:                                               ; preds = %57
  br i1 %64, label %75, label %72

72:                                               ; preds = %71
  %73 = load i16, ptr %61, align 2, !tbaa !53
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72, %71
  br i1 %65, label %94, label %76

76:                                               ; preds = %75
  %77 = load i16, ptr %63, align 2, !tbaa !53
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %94, label %90

79:                                               ; preds = %67, %84
  %80 = phi i16 [ %87, %84 ], [ %68, %67 ]
  %81 = phi ptr [ %86, %84 ], [ %63, %67 ]
  %82 = phi ptr [ %85, %84 ], [ %61, %67 ]
  %83 = icmp eq i16 %80, 0
  br i1 %83, label %94, label %84, !prof !89

84:                                               ; preds = %79
  %85 = getelementptr inbounds i16, ptr %82, i64 1
  %86 = getelementptr inbounds i16, ptr %81, i64 1
  %87 = load i16, ptr %85, align 2, !tbaa !53
  %88 = load i16, ptr %86, align 2, !tbaa !53
  %89 = icmp eq i16 %87, %88
  br i1 %89, label %79, label %90, !prof !90, !llvm.loop !59

90:                                               ; preds = %51, %84, %34, %67, %76, %72, %43, %39
  %91 = add nuw nsw i64 %26, 1
  %92 = icmp ult i64 %91, %23
  %93 = icmp eq i64 %91, %24
  br i1 %93, label %94, label %25, !prof !84, !llvm.loop !91

94:                                               ; preds = %75, %90, %76, %79, %20
  %95 = phi i1 [ %11, %20 ], [ %27, %79 ], [ %27, %76 ], [ %92, %90 ], [ %27, %75 ]
  %96 = phi ptr [ %14, %20 ], [ %13, %79 ], [ %13, %76 ], [ %14, %90 ], [ %13, %75 ]
  br i1 %95, label %104, label %97, !prof !82

97:                                               ; preds = %94, %12
  %98 = phi ptr [ %96, %94 ], [ %14, %12 ]
  %99 = load ptr, ptr %13, align 8, !tbaa !35
  %100 = getelementptr inbounds ptr, ptr %99, i64 10
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %12, !prof !92, !llvm.loop !93

104:                                              ; preds = %94, %97, %4
  %105 = phi ptr [ null, %4 ], [ %96, %94 ], [ null, %97 ]
  ret ptr %105
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 640}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"VP", i32 0, i64 640, i64 -4939816817554974125, i64 640}
!39 = !{!"branch_weights", i32 224, i32 208}
!40 = !{!"VP", i32 0, i64 208, i64 -3424180285606522166, i64 208}
!41 = !{!"branch_weights", i32 208, i32 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"function_entry_count", i64 79}
!46 = !{!"VP", i32 0, i64 79, i64 -4939816817554974125, i64 79}
!47 = !{!"branch_weights", i32 65, i32 13}
!48 = !{!"VP", i32 0, i64 13, i64 -3424180285606522166, i64 13}
!49 = !{!"branch_weights", i32 13, i32 0}
!50 = !{!"branch_weights", i32 191, i32 1}
!51 = !{!"VP", i32 0, i64 38, i64 -5794726599806116480, i64 38}
!52 = !{!"branch_weights", i32 0, i32 38}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !55, i64 0}
!55 = !{!"omnipotent char", !37, i64 0}
!56 = !{!"branch_weights", i32 1, i32 0}
!57 = !{!"branch_weights", i32 38, i32 1216}
!58 = !{!"branch_weights", i32 1254, i32 0}
!59 = distinct !{!59, !43, !44}
!60 = !{!"VP", i32 0, i64 38, i64 4403095094950252304, i64 38}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !55, i64 0}
!63 = !{!"branch_weights", i32 4, i32 33}
!64 = !{!"branch_weights", i32 1, i32 3}
!65 = !{!"branch_weights", i32 0, i32 4}
!66 = !{!"branch_weights", i32 191, i32 417}
!67 = distinct !{!67, !43, !44}
!68 = !{!"branch_weights", i32 1, i32 12}
!69 = !{!"VP", i32 0, i64 12, i64 3469488664311516379, i64 12}
!70 = distinct !{!70, !43, !44}
!71 = !{!"function_entry_count", i64 797}
!72 = !{!"VP", i32 0, i64 797, i64 3469488664311516379, i64 797}
!73 = !{!"branch_weights", i32 1, i32 133}
!74 = !{!"VP", i32 0, i64 663, i64 -3424180285606522166, i64 663}
!75 = !{!"branch_weights", i32 663, i32 0}
!76 = !{!"branch_weights", i32 133, i32 530}
!77 = distinct !{!77, !43, !44}
!78 = !{!"function_entry_count", i64 16}
!79 = !{!"VP", i32 0, i64 16, i64 3469488664311516379, i64 16}
!80 = !{!"branch_weights", i32 1, i32 127}
!81 = !{!"VP", i32 0, i64 15, i64 -3424180285606522166, i64 15}
!82 = !{!"branch_weights", i32 15, i32 0}
!83 = !{!"VP", i32 0, i64 42, i64 -5794726599806116480, i64 42}
!84 = !{!"branch_weights", i32 0, i32 42}
!85 = !{!"branch_weights", i32 42, i32 1344}
!86 = !{!"branch_weights", i32 1386, i32 0}
!87 = !{!"VP", i32 0, i64 42, i64 4403095094950252304, i64 42}
!88 = !{!"branch_weights", i32 215, i32 1}
!89 = !{!"branch_weights", i32 15, i32 117}
!90 = !{!"branch_weights", i32 841, i32 215}
!91 = distinct !{!91, !43, !44}
!92 = !{!"branch_weights", i32 127, i32 1793}
!93 = distinct !{!93, !43, !44}
