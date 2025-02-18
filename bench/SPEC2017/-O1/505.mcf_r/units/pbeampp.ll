; ModuleID = 'pbeampp.c'
source_filename = "pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.basket = type { ptr, i64, i64, i64 }

@full_group_end_arc = internal unnamed_addr global ptr null, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_static_vars(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %6 = load i64, ptr %5, align 8, !tbaa !45
  %7 = mul nsw i64 %6, %4
  %8 = getelementptr inbounds %struct.arc, ptr %1, i64 %7
  store ptr %8, ptr @full_group_end_arc, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bea_is_dual_infeasible(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !47 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %15, label %8

8:                                                ; preds = %4, %2
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !48
  %13 = icmp eq i16 %12, 2
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %10, %4
  %16 = phi i32 [ 1, %4 ], [ 0, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cost_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !prof !52 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.basket, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %1, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.basket, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %19, label %10, !prof !55

10:                                               ; preds = %2
  %11 = icmp sgt i64 %5, %8
  br i1 %11, label %19, label %12, !prof !56

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !tbaa !57
  %14 = load i32, ptr %13, align 8, !tbaa !58
  %15 = load ptr, ptr %6, align 8, !tbaa !57
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 1, i32 -1, !prof !59
  br label %19

19:                                               ; preds = %12, %10, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #3 !prof !60 {
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i64, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %10, %56
  %14 = phi i64 [ 0, %10 ], [ %57, %56 ]
  %15 = phi i64 [ 1, %10 ], [ %58, %56 ]
  %16 = load i64, ptr %12, align 8, !tbaa !61
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %60, label %18, !prof !62

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.basket, ptr %20, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = load i64, ptr %27, align 8, !tbaa !66
  %29 = sub nsw i64 %25, %28
  %30 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = load i64, ptr %31, align 8, !tbaa !66
  %33 = add nsw i64 %32, %29
  %34 = icmp sgt i64 %23, 0
  br i1 %34, label %35, label %56, !prof !69

35:                                               ; preds = %18
  %36 = icmp slt i64 %33, 0
  br i1 %36, label %37, label %41, !prof !70

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !48
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %47, label %41, !prof !71

41:                                               ; preds = %37, %35
  %42 = icmp sgt i64 %33, 0
  br i1 %42, label %43, label %56, !prof !72

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !48
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %47, label %56, !prof !73

47:                                               ; preds = %43, %37
  %48 = add nsw i64 %14, 1
  %49 = getelementptr inbounds ptr, ptr %4, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  store ptr %21, ptr %50, align 8, !tbaa !57
  %51 = load ptr, ptr %49, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 1
  store i64 %33, ptr %52, align 8, !tbaa !74
  %53 = tail call i64 @llvm.abs.i64(i64 %33, i1 true)
  %54 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 2
  store i64 %53, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 3
  store i64 0, ptr %55, align 8, !tbaa !63
  br label %56

56:                                               ; preds = %18, %41, %43, %47
  %57 = phi i64 [ %48, %47 ], [ %14, %43 ], [ %14, %41 ], [ %14, %18 ]
  %58 = add nuw nsw i64 %15, 1
  %59 = icmp eq i64 %58, 61
  br i1 %59, label %60, label %13, !prof !75, !llvm.loop !76

60:                                               ; preds = %56, %13
  %61 = phi i64 [ %57, %56 ], [ %14, %13 ]
  %62 = sext i32 %5 to i64
  %63 = getelementptr inbounds i64, ptr %3, i64 %62
  store i64 %61, ptr %63, align 8, !tbaa !61
  %64 = load ptr, ptr %6, align 8, !tbaa !46
  %65 = load ptr, ptr @full_group_end_arc, align 8, !tbaa !46
  %66 = icmp sgt i64 %8, 0
  br label %67

67:                                               ; preds = %138, %60
  %68 = load ptr, ptr %6, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.arc, ptr %68, i64 %7
  %70 = icmp uge ptr %68, %65
  %71 = getelementptr inbounds %struct.arc, ptr %68, i64 %9
  %72 = sext i1 %70 to i64
  %73 = getelementptr inbounds %struct.arc, ptr %71, i64 %72
  store ptr %73, ptr %6, align 8, !tbaa !46
  %74 = icmp ult ptr %69, %73
  br i1 %74, label %75, label %122, !prof !79

75:                                               ; preds = %67, %118
  %76 = phi ptr [ %119, %118 ], [ %69, %67 ]
  %77 = getelementptr inbounds %struct.arc, ptr %76, i64 0, i32 4
  %78 = load i16, ptr %77, align 8, !tbaa !48
  %79 = icmp sgt i16 %78, 0
  br i1 %79, label %80, label %118, !prof !80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.arc, ptr %76, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !64
  %83 = getelementptr inbounds %struct.arc, ptr %76, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !65
  %85 = load i64, ptr %84, align 8, !tbaa !66
  %86 = sub nsw i64 %82, %85
  %87 = getelementptr inbounds %struct.arc, ptr %76, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !68
  %89 = load i64, ptr %88, align 8, !tbaa !66
  %90 = add nsw i64 %89, %86
  %91 = icmp slt i64 %90, 0
  %92 = icmp eq i16 %78, 1
  %93 = and i1 %92, %91
  br i1 %93, label %99, label %94, !prof !81

94:                                               ; preds = %80
  %95 = icmp sgt i64 %90, 0
  br i1 %95, label %96, label %99, !prof !82

96:                                               ; preds = %94
  %97 = icmp eq i16 %78, 2
  %98 = zext i1 %97 to i32
  br label %99

99:                                               ; preds = %80, %94, %96
  %100 = phi i32 [ 0, %94 ], [ %98, %96 ], [ 1, %80 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %118, label %102, !prof !83

102:                                              ; preds = %99
  %103 = load i64, ptr %63, align 8, !tbaa !61
  %104 = add nsw i64 %103, 1
  store i64 %104, ptr %63, align 8, !tbaa !61
  %105 = getelementptr inbounds ptr, ptr %4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  store ptr %76, ptr %106, align 8, !tbaa !57
  %107 = load ptr, ptr %105, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.basket, ptr %107, i64 0, i32 1
  store i64 %90, ptr %108, align 8, !tbaa !74
  %109 = tail call i64 @llvm.abs.i64(i64 %90, i1 true)
  %110 = load i64, ptr %63, align 8, !tbaa !61
  %111 = getelementptr inbounds ptr, ptr %4, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = getelementptr inbounds %struct.basket, ptr %112, i64 0, i32 2
  store i64 %109, ptr %113, align 8, !tbaa !53
  %114 = load i64, ptr %63, align 8, !tbaa !61
  %115 = getelementptr inbounds ptr, ptr %4, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = getelementptr inbounds %struct.basket, ptr %116, i64 0, i32 3
  store i64 0, ptr %117, align 8, !tbaa !63
  br label %118

118:                                              ; preds = %75, %102, %99
  %119 = getelementptr inbounds %struct.arc, ptr %76, i64 %8
  %120 = load ptr, ptr %6, align 8, !tbaa !46
  %121 = icmp ult ptr %119, %120
  br i1 %121, label %75, label %122, !prof !84, !llvm.loop !85

122:                                              ; preds = %118, %67
  %123 = phi ptr [ %73, %67 ], [ %120, %118 ]
  %124 = icmp ult ptr %123, %2
  br i1 %124, label %126, label %125, !prof !86

125:                                              ; preds = %122
  store ptr %1, ptr %6, align 8, !tbaa !46
  br label %126

126:                                              ; preds = %125, %122
  %127 = load ptr, ptr %6, align 8, !tbaa !46
  %128 = icmp eq ptr %127, %64
  br i1 %128, label %141, label %129, !prof !87

129:                                              ; preds = %126
  br i1 %66, label %130, label %138, !prof !88

130:                                              ; preds = %129, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %129 ]
  %132 = phi i64 [ %136, %130 ], [ 0, %129 ]
  %133 = getelementptr inbounds i64, ptr %3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !61
  %135 = add nsw i64 %134, %131
  %136 = add nuw nsw i64 %132, 1
  %137 = icmp eq i64 %136, %8
  br i1 %137, label %138, label %130, !prof !88, !llvm.loop !89

138:                                              ; preds = %130, %129
  %139 = phi i64 [ 0, %129 ], [ %135, %130 ]
  %140 = icmp sgt i64 %139, 59
  br i1 %140, label %141, label %67, !prof !90

141:                                              ; preds = %126, %138
  %142 = load i64, ptr %63, align 8, !tbaa !61
  %143 = getelementptr ptr, ptr %4, i64 %142
  %144 = getelementptr ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = getelementptr inbounds %struct.basket, ptr %145, i64 0, i32 3
  store i64 -1, ptr %146, align 8, !tbaa !63
  %147 = load i64, ptr %63, align 8, !tbaa !61
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %152, label %149, !prof !91

149:                                              ; preds = %141
  %150 = getelementptr inbounds ptr, ptr %4, i64 1
  tail call void @spec_qsort(ptr noundef nonnull %150, i64 noundef %147, i64 noundef 8, ptr noundef nonnull @cost_compare) #6
  %151 = load ptr, ptr %150, align 8, !tbaa !46
  br label %152

152:                                              ; preds = %141, %149
  %153 = phi ptr [ %151, %149 ], [ null, %141 ]
  ret ptr %153
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @primal_bea_mpp, ptr @spec_qsort, i64 1977246}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 33}
!38 = !{!39, !42, i64 632}
!39 = !{!"network", !40, i64 0, !40, i64 200, !42, i64 400, !42, i64 408, !42, i64 416, !42, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !42, i64 480, !42, i64 488, !42, i64 496, !42, i64 504, !42, i64 512, !42, i64 520, !42, i64 528, !43, i64 536, !42, i64 544, !44, i64 552, !44, i64 560, !44, i64 568, !44, i64 576, !44, i64 584, !44, i64 592, !44, i64 600, !42, i64 608, !42, i64 616, !42, i64 624, !42, i64 632, !42, i64 640}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"long", !40, i64 0}
!43 = !{!"double", !40, i64 0}
!44 = !{!"any pointer", !40, i64 0}
!45 = !{!39, !42, i64 640}
!46 = !{!44, !44, i64 0}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !51, i64 32}
!49 = !{!"arc", !50, i64 0, !42, i64 8, !44, i64 16, !44, i64 24, !51, i64 32, !44, i64 40, !44, i64 48, !42, i64 56, !42, i64 64}
!50 = !{!"int", !40, i64 0}
!51 = !{!"short", !40, i64 0}
!52 = !{!"function_entry_count", i64 17199625996}
!53 = !{!54, !42, i64 16}
!54 = !{!"basket", !44, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!55 = !{!"branch_weights", i32 1987010903, i32 -548769534}
!56 = !{!"branch_weights", i32 -1521145087, i32 -1449492863}
!57 = !{!54, !44, i64 0}
!58 = !{!49, !50, i64 0}
!59 = !{!"branch_weights", i32 -1116323086, i32 -1782662639}
!60 = !{!"function_entry_count", i64 1977279}
!61 = !{!42, !42, i64 0}
!62 = !{!"branch_weights", i32 199, i32 118630298}
!63 = !{!54, !42, i64 24}
!64 = !{!49, !42, i64 8}
!65 = !{!49, !44, i64 16}
!66 = !{!67, !42, i64 0}
!67 = !{!"node", !42, i64 0, !50, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !42, i64 80, !42, i64 88, !50, i64 96, !50, i64 100}
!68 = !{!49, !44, i64 24}
!69 = !{!"branch_weights", i32 118630298, i32 0}
!70 = !{!"branch_weights", i32 114569690, i32 4060608}
!71 = !{!"branch_weights", i32 114568000, i32 1690}
!72 = !{!"branch_weights", i32 1459464, i32 2602834}
!73 = !{!"branch_weights", i32 433329, i32 1026135}
!74 = !{!54, !42, i64 8}
!75 = !{!"branch_weights", i32 1977080, i32 116653417}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!"branch_weights", i32 758497, i32 1}
!80 = !{!"branch_weights", i32 -1315124858, i32 50862358}
!81 = !{!"branch_weights", i32 775344366, i32 -600548005}
!82 = !{!"branch_weights", i32 -870869957, i32 270321952}
!83 = !{!"branch_weights", i32 -601604447, i32 776400808}
!84 = !{!"branch_weights", i32 -1265020997, i32 758497}
!85 = distinct !{!85, !77, !78}
!86 = !{!"branch_weights", i32 2270020, i32 5475}
!87 = !{!"branch_weights", i32 201, i32 2275294}
!88 = !{!"branch_weights", i32 2275293, i32 1}
!89 = distinct !{!89, !77, !78}
!90 = !{!"branch_weights", i32 1977078, i32 298216}
!91 = !{!"branch_weights", i32 33, i32 1977246}
