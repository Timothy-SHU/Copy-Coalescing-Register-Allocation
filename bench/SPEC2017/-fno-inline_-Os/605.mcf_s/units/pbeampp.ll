; ModuleID = 'pbeampp.c'
source_filename = "pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.basket = type { ptr, i64, i64, i64 }

@full_group_end_arc = internal unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_static_vars(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %4 = load i64, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %6 = load i64, ptr %5, align 8, !tbaa !47
  %7 = mul nsw i64 %6, %4
  %8 = getelementptr inbounds %struct.arc, ptr %1, i64 %7
  store ptr %8, ptr @full_group_end_arc, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bea_is_dual_infeasible(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !49 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %6, label %4, !prof !50

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %12, label %6, !prof !51

6:                                                ; preds = %4, %2
  %7 = phi i16 [ 1, %2 ], [ 2, %4 ]
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i16 %9, %7
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %4 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cost_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.basket, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %1, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.basket, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %19, label %10, !prof !59

10:                                               ; preds = %2
  %11 = icmp sgt i64 %5, %8
  br i1 %11, label %19, label %12, !prof !60

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !tbaa !61
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = load ptr, ptr %6, align 8, !tbaa !61
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 1, i32 -1, !prof !63
  br label %19

19:                                               ; preds = %12, %10, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #3 !prof !64 {
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i64, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %10, %56
  %14 = phi i64 [ 0, %10 ], [ %57, %56 ]
  %15 = phi i64 [ 1, %10 ], [ %58, %56 ]
  %16 = load i64, ptr %12, align 8, !tbaa !65
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %60, label %18, !prof !66

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.basket, ptr %20, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = load i64, ptr %27, align 8, !tbaa !70
  %29 = sub nsw i64 %25, %28
  %30 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = load i64, ptr %31, align 8, !tbaa !70
  %33 = add nsw i64 %32, %29
  %34 = icmp sgt i64 %23, 0
  br i1 %34, label %35, label %56, !prof !73

35:                                               ; preds = %18
  %36 = icmp slt i64 %33, 0
  br i1 %36, label %37, label %41, !prof !74

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !52
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %47, label %56, !prof !75

41:                                               ; preds = %35
  %42 = icmp eq i64 %33, 0
  br i1 %42, label %56, label %43, !prof !76

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !52
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %47, label %56, !prof !77

47:                                               ; preds = %43, %37
  %48 = add nsw i64 %14, 1
  %49 = getelementptr inbounds ptr, ptr %4, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  store ptr %21, ptr %50, align 8, !tbaa !61
  %51 = load ptr, ptr %49, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 1
  store i64 %33, ptr %52, align 8, !tbaa !78
  %53 = tail call i64 @llvm.abs.i64(i64 %33, i1 true)
  %54 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 2
  store i64 %53, ptr %54, align 8, !tbaa !57
  %55 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 3
  store i64 0, ptr %55, align 8, !tbaa !67
  br label %56

56:                                               ; preds = %37, %18, %41, %43, %47
  %57 = phi i64 [ %48, %47 ], [ %14, %43 ], [ %14, %41 ], [ %14, %18 ], [ %14, %37 ]
  %58 = add nuw nsw i64 %15, 1
  %59 = icmp eq i64 %58, 61
  br i1 %59, label %60, label %13, !prof !79, !llvm.loop !80

60:                                               ; preds = %56, %13
  %61 = phi i64 [ %57, %56 ], [ %14, %13 ]
  store i64 %61, ptr %12, align 8, !tbaa !65
  %62 = load ptr, ptr %6, align 8, !tbaa !48
  %63 = load ptr, ptr @full_group_end_arc, align 8, !tbaa !48
  %64 = icmp sgt i64 %8, 0
  br label %65

65:                                               ; preds = %129, %60
  %66 = phi ptr [ %118, %129 ], [ %62, %60 ]
  %67 = getelementptr inbounds %struct.arc, ptr %66, i64 %7
  %68 = icmp uge ptr %66, %63
  %69 = getelementptr inbounds %struct.arc, ptr %66, i64 %9
  %70 = sext i1 %68 to i64
  %71 = getelementptr inbounds %struct.arc, ptr %69, i64 %70
  store ptr %71, ptr %6, align 8, !tbaa !48
  %72 = icmp ult ptr %67, %71
  br i1 %72, label %73, label %113, !prof !82

73:                                               ; preds = %65, %109
  %74 = phi ptr [ %110, %109 ], [ %71, %65 ]
  %75 = phi ptr [ %111, %109 ], [ %67, %65 ]
  %76 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !52
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %109, !prof !83

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !68
  %82 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = load i64, ptr %83, align 8, !tbaa !70
  %85 = sub nsw i64 %81, %84
  %86 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = load i64, ptr %87, align 8, !tbaa !70
  %89 = add nsw i64 %88, %85
  %90 = tail call i32 @bea_is_dual_infeasible(ptr noundef nonnull %75, i64 noundef %89) #6, !range !84
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92, !prof !85

92:                                               ; preds = %79
  %93 = load i64, ptr %12, align 8, !tbaa !65
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr %12, align 8, !tbaa !65
  %95 = getelementptr inbounds ptr, ptr %4, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  store ptr %75, ptr %96, align 8, !tbaa !61
  %97 = load ptr, ptr %95, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.basket, ptr %97, i64 0, i32 1
  store i64 %89, ptr %98, align 8, !tbaa !78
  %99 = tail call i64 @llvm.abs.i64(i64 %89, i1 true)
  %100 = load i64, ptr %12, align 8, !tbaa !65
  %101 = getelementptr inbounds ptr, ptr %4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.basket, ptr %102, i64 0, i32 2
  store i64 %99, ptr %103, align 8, !tbaa !57
  %104 = load i64, ptr %12, align 8, !tbaa !65
  %105 = getelementptr inbounds ptr, ptr %4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct.basket, ptr %106, i64 0, i32 3
  store i64 0, ptr %107, align 8, !tbaa !67
  %108 = load ptr, ptr %6, align 8, !tbaa !48
  br label %109

109:                                              ; preds = %73, %92, %79
  %110 = phi ptr [ %74, %73 ], [ %108, %92 ], [ %74, %79 ]
  %111 = getelementptr inbounds %struct.arc, ptr %75, i64 %8
  %112 = icmp ult ptr %111, %110
  br i1 %112, label %73, label %113, !prof !86, !llvm.loop !87

113:                                              ; preds = %109, %65
  %114 = phi ptr [ %71, %65 ], [ %110, %109 ]
  %115 = icmp ult ptr %114, %2
  br i1 %115, label %117, label %116, !prof !88

116:                                              ; preds = %113
  store ptr %1, ptr %6, align 8, !tbaa !48
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi ptr [ %1, %116 ], [ %114, %113 ]
  %119 = icmp eq ptr %118, %62
  br i1 %119, label %132, label %120, !prof !89

120:                                              ; preds = %117
  br i1 %64, label %121, label %129, !prof !90

121:                                              ; preds = %120, %121
  %122 = phi i64 [ %126, %121 ], [ 0, %120 ]
  %123 = phi i64 [ %127, %121 ], [ 0, %120 ]
  %124 = getelementptr inbounds i64, ptr %3, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !65
  %126 = add nsw i64 %125, %122
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, %8
  br i1 %128, label %129, label %121, !prof !90, !llvm.loop !91

129:                                              ; preds = %121, %120
  %130 = phi i64 [ 0, %120 ], [ %126, %121 ]
  %131 = icmp sgt i64 %130, 59
  br i1 %131, label %132, label %65, !prof !92

132:                                              ; preds = %117, %129
  %133 = load i64, ptr %12, align 8, !tbaa !65
  %134 = getelementptr ptr, ptr %4, i64 %133
  %135 = getelementptr ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  %137 = getelementptr inbounds %struct.basket, ptr %136, i64 0, i32 3
  store i64 -1, ptr %137, align 8, !tbaa !67
  %138 = load i64, ptr %12, align 8, !tbaa !65
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140, !prof !93

140:                                              ; preds = %132
  %141 = getelementptr inbounds ptr, ptr %4, i64 1
  tail call void @spec_qsort(ptr noundef nonnull %141, i64 noundef %138, i64 noundef 8, ptr noundef nonnull @cost_compare) #7
  %142 = load ptr, ptr %141, align 8, !tbaa !48
  br label %143

143:                                              ; preds = %132, %140
  %144 = phi ptr [ %142, %140 ], [ null, %132 ]
  ret ptr %144
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37}
!36 = !{ptr @primal_bea_mpp, ptr @bea_is_dual_infeasible, i64 17552675966}
!37 = !{ptr @primal_bea_mpp, ptr @spec_qsort, i64 3377673}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 40}
!40 = !{!41, !44, i64 632}
!41 = !{!"network", !42, i64 0, !42, i64 200, !44, i64 400, !44, i64 408, !44, i64 416, !44, i64 424, !44, i64 432, !44, i64 440, !44, i64 448, !44, i64 456, !44, i64 464, !44, i64 472, !44, i64 480, !44, i64 488, !44, i64 496, !44, i64 504, !44, i64 512, !44, i64 520, !44, i64 528, !45, i64 536, !44, i64 544, !46, i64 552, !46, i64 560, !46, i64 568, !46, i64 576, !46, i64 584, !46, i64 592, !46, i64 600, !44, i64 608, !44, i64 616, !44, i64 624, !44, i64 632, !44, i64 640}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"long", !42, i64 0}
!45 = !{!"double", !42, i64 0}
!46 = !{!"any pointer", !42, i64 0}
!47 = !{!41, !44, i64 640}
!48 = !{!46, !46, i64 0}
!49 = !{!"function_entry_count", i64 17552692142}
!50 = !{!"branch_weights", i32 660401051, i32 -567195310}
!51 = !{!"branch_weights", i32 455477051, i32 1692006597}
!52 = !{!53, !55, i64 32}
!53 = !{!"arc", !54, i64 0, !44, i64 8, !46, i64 16, !46, i64 24, !55, i64 32, !46, i64 40, !46, i64 48, !44, i64 56, !44, i64 64}
!54 = !{!"int", !42, i64 0}
!55 = !{!"short", !42, i64 0}
!56 = !{!"function_entry_count", i64 28590381975}
!57 = !{!58, !44, i64 16}
!58 = !{!"basket", !46, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!59 = !{!"branch_weights", i32 2114607317, i32 -691498217}
!60 = !{!"branch_weights", i32 -1048176970, i32 -1535975823}
!61 = !{!58, !46, i64 0}
!62 = !{!53, !54, i64 0}
!63 = !{!"branch_weights", i32 -1987462715, i32 1830982629}
!64 = !{!"function_entry_count", i64 3377714}
!65 = !{!44, !44, i64 0}
!66 = !{!"branch_weights", i32 3377715, i32 202655177}
!67 = !{!58, !44, i64 24}
!68 = !{!53, !44, i64 8}
!69 = !{!53, !46, i64 16}
!70 = !{!71, !44, i64 0}
!71 = !{!"node", !44, i64 0, !54, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !44, i64 80, !44, i64 88, !54, i64 96, !54, i64 100}
!72 = !{!53, !46, i64 24}
!73 = !{!"branch_weights", i32 202655177, i32 1}
!74 = !{!"branch_weights", i32 196323905, i32 6331273}
!75 = !{!"branch_weights", i32 196321785, i32 2121}
!76 = !{!"branch_weights", i32 1451759470, i32 695724178}
!77 = !{!"branch_weights", i32 869445, i32 1181710}
!78 = !{!58, !44, i64 8}
!79 = !{!"branch_weights", i32 3377476, i32 199277940}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"branch_weights", i32 887396, i32 1}
!83 = !{!"branch_weights", i32 -784428867, i32 36507514}
!84 = !{i32 0, i32 2}
!85 = !{!"branch_weights", i32 -551488657, i32 644694398}
!86 = !{!"branch_weights", i32 -748808750, i32 887396}
!87 = distinct !{!87, !81}
!88 = !{!"branch_weights", i32 4432936, i32 4046}
!89 = !{!"branch_weights", i32 247, i32 4436735}
!90 = !{!"branch_weights", i32 4436734, i32 1}
!91 = distinct !{!91, !81}
!92 = !{!"branch_weights", i32 3377469, i32 1059267}
!93 = !{!"branch_weights", i32 41, i32 3377675}
