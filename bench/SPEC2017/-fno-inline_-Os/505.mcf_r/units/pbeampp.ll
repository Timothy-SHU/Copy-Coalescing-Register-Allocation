; ModuleID = 'pbeampp.c'
source_filename = "pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.basket = type { ptr, i64, i64, i64 }

@full_group_end_arc = internal unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_static_vars(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = mul nsw i64 %6, %4
  %8 = getelementptr inbounds %struct.arc, ptr %1, i64 %7
  store ptr %8, ptr @full_group_end_arc, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bea_is_dual_infeasible(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !48 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %6, label %4, !prof !49

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %12, label %6, !prof !50

6:                                                ; preds = %4, %2
  %7 = phi i16 [ 1, %2 ], [ 2, %4 ]
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i16 %9, %7
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %4 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cost_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !prof !55 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.basket, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = load ptr, ptr %1, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.basket, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %19, label %10, !prof !58

10:                                               ; preds = %2
  %11 = icmp sgt i64 %5, %8
  br i1 %11, label %19, label %12, !prof !59

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !tbaa !60
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = load ptr, ptr %6, align 8, !tbaa !60
  %16 = load i32, ptr %15, align 8, !tbaa !61
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 1, i32 -1, !prof !62
  br label %19

19:                                               ; preds = %12, %10, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #3 !prof !63 {
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i64, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %10, %56
  %14 = phi i64 [ 0, %10 ], [ %57, %56 ]
  %15 = phi i64 [ 1, %10 ], [ %58, %56 ]
  %16 = load i64, ptr %12, align 8, !tbaa !64
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %60, label %18, !prof !65

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.basket, ptr %20, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = sub nsw i64 %25, %28
  %30 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = load i64, ptr %31, align 8, !tbaa !69
  %33 = add nsw i64 %32, %29
  %34 = icmp sgt i64 %23, 0
  br i1 %34, label %35, label %56, !prof !72

35:                                               ; preds = %18
  %36 = icmp slt i64 %33, 0
  br i1 %36, label %37, label %41, !prof !73

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !51
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %47, label %56, !prof !74

41:                                               ; preds = %35
  %42 = icmp eq i64 %33, 0
  br i1 %42, label %56, label %43, !prof !75

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !51
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %47, label %56, !prof !76

47:                                               ; preds = %43, %37
  %48 = add nsw i64 %14, 1
  %49 = getelementptr inbounds ptr, ptr %4, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  store ptr %21, ptr %50, align 8, !tbaa !60
  %51 = load ptr, ptr %49, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 1
  store i64 %33, ptr %52, align 8, !tbaa !77
  %53 = tail call i64 @llvm.abs.i64(i64 %33, i1 true)
  %54 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 2
  store i64 %53, ptr %54, align 8, !tbaa !56
  %55 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 3
  store i64 0, ptr %55, align 8, !tbaa !66
  br label %56

56:                                               ; preds = %37, %18, %41, %43, %47
  %57 = phi i64 [ %48, %47 ], [ %14, %43 ], [ %14, %41 ], [ %14, %18 ], [ %14, %37 ]
  %58 = add nuw nsw i64 %15, 1
  %59 = icmp eq i64 %58, 61
  br i1 %59, label %60, label %13, !prof !78, !llvm.loop !79

60:                                               ; preds = %56, %13
  %61 = phi i64 [ %57, %56 ], [ %14, %13 ]
  store i64 %61, ptr %12, align 8, !tbaa !64
  %62 = load ptr, ptr %6, align 8, !tbaa !47
  %63 = load ptr, ptr @full_group_end_arc, align 8, !tbaa !47
  %64 = icmp sgt i64 %8, 0
  br label %65

65:                                               ; preds = %129, %60
  %66 = phi ptr [ %118, %129 ], [ %62, %60 ]
  %67 = getelementptr inbounds %struct.arc, ptr %66, i64 %7
  %68 = icmp uge ptr %66, %63
  %69 = getelementptr inbounds %struct.arc, ptr %66, i64 %9
  %70 = sext i1 %68 to i64
  %71 = getelementptr inbounds %struct.arc, ptr %69, i64 %70
  store ptr %71, ptr %6, align 8, !tbaa !47
  %72 = icmp ult ptr %67, %71
  br i1 %72, label %73, label %113, !prof !81

73:                                               ; preds = %65, %109
  %74 = phi ptr [ %110, %109 ], [ %71, %65 ]
  %75 = phi ptr [ %111, %109 ], [ %67, %65 ]
  %76 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !51
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %109, !prof !82

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !68
  %84 = load i64, ptr %83, align 8, !tbaa !69
  %85 = sub nsw i64 %81, %84
  %86 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !71
  %88 = load i64, ptr %87, align 8, !tbaa !69
  %89 = add nsw i64 %88, %85
  %90 = tail call i32 @bea_is_dual_infeasible(ptr noundef nonnull %75, i64 noundef %89) #6, !range !83
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92, !prof !84

92:                                               ; preds = %79
  %93 = load i64, ptr %12, align 8, !tbaa !64
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr %12, align 8, !tbaa !64
  %95 = getelementptr inbounds ptr, ptr %4, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  store ptr %75, ptr %96, align 8, !tbaa !60
  %97 = load ptr, ptr %95, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.basket, ptr %97, i64 0, i32 1
  store i64 %89, ptr %98, align 8, !tbaa !77
  %99 = tail call i64 @llvm.abs.i64(i64 %89, i1 true)
  %100 = load i64, ptr %12, align 8, !tbaa !64
  %101 = getelementptr inbounds ptr, ptr %4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = getelementptr inbounds %struct.basket, ptr %102, i64 0, i32 2
  store i64 %99, ptr %103, align 8, !tbaa !56
  %104 = load i64, ptr %12, align 8, !tbaa !64
  %105 = getelementptr inbounds ptr, ptr %4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !47
  %107 = getelementptr inbounds %struct.basket, ptr %106, i64 0, i32 3
  store i64 0, ptr %107, align 8, !tbaa !66
  %108 = load ptr, ptr %6, align 8, !tbaa !47
  br label %109

109:                                              ; preds = %73, %92, %79
  %110 = phi ptr [ %74, %73 ], [ %108, %92 ], [ %74, %79 ]
  %111 = getelementptr inbounds %struct.arc, ptr %75, i64 %8
  %112 = icmp ult ptr %111, %110
  br i1 %112, label %73, label %113, !prof !85, !llvm.loop !86

113:                                              ; preds = %109, %65
  %114 = phi ptr [ %71, %65 ], [ %110, %109 ]
  %115 = icmp ult ptr %114, %2
  br i1 %115, label %117, label %116, !prof !87

116:                                              ; preds = %113
  store ptr %1, ptr %6, align 8, !tbaa !47
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi ptr [ %1, %116 ], [ %114, %113 ]
  %119 = icmp eq ptr %118, %62
  br i1 %119, label %132, label %120, !prof !88

120:                                              ; preds = %117
  br i1 %64, label %121, label %129, !prof !89

121:                                              ; preds = %120, %121
  %122 = phi i64 [ %126, %121 ], [ 0, %120 ]
  %123 = phi i64 [ %127, %121 ], [ 0, %120 ]
  %124 = getelementptr inbounds i64, ptr %3, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !64
  %126 = add nsw i64 %125, %122
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, %8
  br i1 %128, label %129, label %121, !prof !89, !llvm.loop !90

129:                                              ; preds = %121, %120
  %130 = phi i64 [ 0, %120 ], [ %126, %121 ]
  %131 = icmp sgt i64 %130, 59
  br i1 %131, label %132, label %65, !prof !91

132:                                              ; preds = %117, %129
  %133 = load i64, ptr %12, align 8, !tbaa !64
  %134 = getelementptr ptr, ptr %4, i64 %133
  %135 = getelementptr ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !47
  %137 = getelementptr inbounds %struct.basket, ptr %136, i64 0, i32 3
  store i64 -1, ptr %137, align 8, !tbaa !66
  %138 = load i64, ptr %12, align 8, !tbaa !64
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140, !prof !92

140:                                              ; preds = %132
  %141 = getelementptr inbounds ptr, ptr %4, i64 1
  tail call void @spec_qsort(ptr noundef nonnull %141, i64 noundef %138, i64 noundef 8, ptr noundef nonnull @cost_compare) #7
  %142 = load ptr, ptr %141, align 8, !tbaa !47
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 85502453929}
!4 = !{!"MaxCount", i64 17199625996}
!5 = !{!"MaxInternalCount", i64 7388838583}
!6 = !{!"MaxFunctionCount", i64 17199625996}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 17199625996, i32 1}
!14 = !{i32 100000, i64 17199625996, i32 1}
!15 = !{i32 200000, i64 17199625996, i32 1}
!16 = !{i32 300000, i64 8939527315, i32 2}
!17 = !{i32 400000, i64 6848194679, i32 4}
!18 = !{i32 500000, i64 5961032710, i32 5}
!19 = !{i32 600000, i64 5547644419, i32 6}
!20 = !{i32 700000, i64 3854402676, i32 9}
!21 = !{i32 800000, i64 3712252500, i32 11}
!22 = !{i32 900000, i64 1613262769, i32 14}
!23 = !{i32 950000, i64 336885004, i32 20}
!24 = !{i32 990000, i64 90533666, i32 46}
!25 = !{i32 999000, i64 51748451, i32 55}
!26 = !{i32 999900, i64 733625, i32 81}
!27 = !{i32 999990, i64 246962, i32 97}
!28 = !{i32 999999, i64 38371, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @primal_bea_mpp, ptr @bea_is_dual_infeasible, i64 8939525860}
!36 = !{ptr @primal_bea_mpp, ptr @spec_qsort, i64 1977245}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 33}
!39 = !{!40, !43, i64 632}
!40 = !{!"network", !41, i64 0, !41, i64 200, !43, i64 400, !43, i64 408, !43, i64 416, !43, i64 424, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !43, i64 480, !43, i64 488, !43, i64 496, !43, i64 504, !43, i64 512, !43, i64 520, !43, i64 528, !44, i64 536, !43, i64 544, !45, i64 552, !45, i64 560, !45, i64 568, !45, i64 576, !45, i64 584, !45, i64 592, !45, i64 600, !43, i64 608, !43, i64 616, !43, i64 624, !43, i64 632, !43, i64 640}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"long", !41, i64 0}
!44 = !{!"double", !41, i64 0}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!40, !43, i64 640}
!47 = !{!45, !45, i64 0}
!48 = !{!"function_entry_count", i64 8939527315}
!49 = !{!"branch_weights", i32 806631385, i32 -631835022}
!50 = !{!"branch_weights", i32 140132425, i32 2007351223}
!51 = !{!52, !54, i64 32}
!52 = !{!"arc", !53, i64 0, !43, i64 8, !45, i64 16, !45, i64 24, !54, i64 32, !45, i64 40, !45, i64 48, !43, i64 56, !43, i64 64}
!53 = !{!"int", !41, i64 0}
!54 = !{!"short", !41, i64 0}
!55 = !{!"function_entry_count", i64 17199625996}
!56 = !{!57, !43, i64 16}
!57 = !{!"basket", !45, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!58 = !{!"branch_weights", i32 1987010904, i32 -548769533}
!59 = !{!"branch_weights", i32 -1521145086, i32 -1449492862}
!60 = !{!57, !45, i64 0}
!61 = !{!52, !53, i64 0}
!62 = !{!"branch_weights", i32 -1116323085, i32 -1782662638}
!63 = !{!"function_entry_count", i64 1977279}
!64 = !{!43, !43, i64 0}
!65 = !{!"branch_weights", i32 1977280, i32 118630299}
!66 = !{!57, !43, i64 24}
!67 = !{!52, !43, i64 8}
!68 = !{!52, !45, i64 16}
!69 = !{!70, !43, i64 0}
!70 = !{!"node", !43, i64 0, !53, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !43, i64 80, !43, i64 88, !53, i64 96, !53, i64 100}
!71 = !{!52, !45, i64 24}
!72 = !{!"branch_weights", i32 118630299, i32 1}
!73 = !{!"branch_weights", i32 114569691, i32 4060609}
!74 = !{!"branch_weights", i32 114568001, i32 1691}
!75 = !{!"branch_weights", i32 1375634591, i32 771849057}
!76 = !{!"branch_weights", i32 433330, i32 1026136}
!77 = !{!57, !43, i64 8}
!78 = !{!"branch_weights", i32 1977081, i32 116653417}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"branch_weights", i32 758498, i32 1}
!82 = !{!"branch_weights", i32 -1315124857, i32 50862359}
!83 = !{i32 0, i32 2}
!84 = !{!"branch_weights", i32 -601604446, i32 776400809}
!85 = !{!"branch_weights", i32 -1265020997, i32 758498}
!86 = distinct !{!86, !80}
!87 = !{!"branch_weights", i32 2270021, i32 5476}
!88 = !{!"branch_weights", i32 202, i32 2275295}
!89 = !{!"branch_weights", i32 2275294, i32 1}
!90 = distinct !{!90, !80}
!91 = !{!"branch_weights", i32 1977079, i32 298217}
!92 = !{!"branch_weights", i32 34, i32 1977247}
