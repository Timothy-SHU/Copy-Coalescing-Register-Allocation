; ModuleID = 'treeup.c'
source_filename = "treeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tree(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readnone %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 !prof !34 {
  %13 = getelementptr inbounds %struct.arc, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %18, !prof !43

16:                                               ; preds = %12
  %17 = icmp slt i64 %10, 0
  br i1 %17, label %22, label %18, !prof !44

18:                                               ; preds = %16, %12
  %19 = icmp eq ptr %14, %4
  %20 = icmp sgt i64 %10, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24, !prof !45

22:                                               ; preds = %18, %16
  %23 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  br label %27

24:                                               ; preds = %18
  %25 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  %26 = sub nsw i64 0, %25
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i64 [ %23, %22 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %36, %27
  %30 = phi ptr [ %6, %27 ], [ %37, %36 ]
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = add nsw i64 %31, %28
  store i64 %32, ptr %30, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !49

36:                                               ; preds = %40, %29
  %37 = phi ptr [ %34, %29 ], [ %43, %40 ]
  br label %29

38:                                               ; preds = %29
  %39 = icmp eq ptr %30, %6
  br i1 %39, label %49, label %40, !prof !50

40:                                               ; preds = %38, %45
  %41 = phi ptr [ %47, %45 ], [ %30, %38 ]
  %42 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !prof !52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %49, label %40, !prof !54

49:                                               ; preds = %38, %45
  %50 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 11
  %51 = load i64, ptr %50, align 8, !tbaa !55
  %52 = icmp eq ptr %4, %7
  br i1 %52, label %100, label %53, !prof !50

53:                                               ; preds = %49
  %54 = sub i64 0, %2
  br label %55

55:                                               ; preds = %53, %82
  %56 = phi i64 [ %98, %82 ], [ %51, %53 ]
  %57 = phi i64 [ %86, %82 ], [ %1, %53 ]
  %58 = phi i64 [ %91, %82 ], [ %3, %53 ]
  %59 = phi ptr [ %60, %82 ], [ %5, %53 ]
  %60 = phi ptr [ %63, %82 ], [ %4, %53 ]
  %61 = phi ptr [ %93, %82 ], [ %9, %53 ]
  %62 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  br i1 %66, label %71, label %69, !prof !57

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.node, ptr %65, i64 0, i32 5
  store ptr %68, ptr %70, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %55, %69
  %72 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %73 = icmp eq ptr %68, null
  %74 = getelementptr inbounds %struct.node, ptr %63, i64 0, i32 2
  %75 = getelementptr inbounds %struct.node, ptr %68, i64 0, i32 4
  %76 = select i1 %73, ptr %74, ptr %75, !prof !58
  store ptr %65, ptr %76, align 8, !tbaa !59
  store ptr %59, ptr %62, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.node, ptr %59, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  store ptr %78, ptr %64, align 8, !tbaa !51
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80, !prof !60

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.node, ptr %78, i64 0, i32 5
  store ptr %60, ptr %81, align 8, !tbaa !56
  br label %82

82:                                               ; preds = %80, %71
  store ptr %60, ptr %77, align 8, !tbaa !48
  store ptr null, ptr %72, align 8, !tbaa !56
  %83 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !61
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = icmp eq i64 %86, %0
  %88 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  %89 = load i64, ptr %88, align 8, !tbaa !62
  %90 = select i1 %87, i64 %2, i64 %54, !prof !63
  %91 = add i64 %89, %90
  %92 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 11
  %95 = load i64, ptr %94, align 8, !tbaa !55
  %96 = trunc i64 %57 to i32
  store i32 %96, ptr %83, align 8, !tbaa !61
  %97 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  store i64 %58, ptr %97, align 8, !tbaa !62
  store ptr %61, ptr %92, align 8, !tbaa !64
  store i64 %56, ptr %94, align 8, !tbaa !55
  %98 = sub nsw i64 %51, %95
  %99 = icmp eq ptr %63, %7
  br i1 %99, label %100, label %55, !prof !65, !llvm.loop !66

100:                                              ; preds = %82, %49
  %101 = icmp sgt i64 %2, %11
  %102 = icmp eq ptr %7, %8
  br i1 %101, label %104, label %103, !prof !68

103:                                              ; preds = %100
  br i1 %102, label %141, label %143, !prof !69

104:                                              ; preds = %100
  br i1 %102, label %105, label %107, !prof !70

105:                                              ; preds = %107, %104
  %106 = icmp eq ptr %5, %8
  br i1 %106, label %159, label %124, !prof !70

107:                                              ; preds = %104, %107
  %108 = phi ptr [ %122, %107 ], [ %7, %104 ]
  %109 = sub i64 0, %2
  %110 = getelementptr inbounds %struct.node, ptr %108, i64 0, i32 11
  %111 = load i64, ptr %110, align 8, !tbaa !55
  %112 = sub nsw i64 %111, %51
  store i64 %112, ptr %110, align 8, !tbaa !55
  %113 = getelementptr inbounds %struct.node, ptr %108, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !61
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %115, %0
  %117 = getelementptr inbounds %struct.node, ptr %108, i64 0, i32 10
  %118 = load i64, ptr %117, align 8, !tbaa !62
  %119 = select i1 %116, i64 %109, i64 %2
  %120 = add i64 %118, %119
  store i64 %120, ptr %117, align 8, !tbaa !62
  %121 = getelementptr inbounds %struct.node, ptr %108, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !53
  %123 = icmp eq ptr %122, %8
  br i1 %123, label %105, label %107, !prof !71, !llvm.loop !72

124:                                              ; preds = %105, %124
  %125 = phi ptr [ %139, %124 ], [ %5, %105 ]
  %126 = sub i64 0, %2
  %127 = getelementptr inbounds %struct.node, ptr %125, i64 0, i32 11
  %128 = load i64, ptr %127, align 8, !tbaa !55
  %129 = add nsw i64 %128, %51
  store i64 %129, ptr %127, align 8, !tbaa !55
  %130 = getelementptr inbounds %struct.node, ptr %125, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !61
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %132, %0
  %134 = getelementptr inbounds %struct.node, ptr %125, i64 0, i32 10
  %135 = load i64, ptr %134, align 8, !tbaa !62
  %136 = select i1 %133, i64 %2, i64 %126
  %137 = add i64 %135, %136
  store i64 %137, ptr %134, align 8, !tbaa !62
  %138 = getelementptr inbounds %struct.node, ptr %125, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !53
  %140 = icmp eq ptr %139, %8
  br i1 %140, label %159, label %124, !prof !71, !llvm.loop !73

141:                                              ; preds = %143, %103
  %142 = icmp eq ptr %5, %8
  br i1 %142, label %159, label %151, !prof !69

143:                                              ; preds = %103, %143
  %144 = phi ptr [ %149, %143 ], [ %7, %103 ]
  %145 = getelementptr inbounds %struct.node, ptr %144, i64 0, i32 11
  %146 = load i64, ptr %145, align 8, !tbaa !55
  %147 = sub nsw i64 %146, %51
  store i64 %147, ptr %145, align 8, !tbaa !55
  %148 = getelementptr inbounds %struct.node, ptr %144, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !53
  %150 = icmp eq ptr %149, %8
  br i1 %150, label %141, label %143, !prof !74, !llvm.loop !75

151:                                              ; preds = %141, %151
  %152 = phi ptr [ %157, %151 ], [ %5, %141 ]
  %153 = getelementptr inbounds %struct.node, ptr %152, i64 0, i32 11
  %154 = load i64, ptr %153, align 8, !tbaa !55
  %155 = add nsw i64 %154, %51
  store i64 %155, ptr %153, align 8, !tbaa !55
  %156 = getelementptr inbounds %struct.node, ptr %152, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !53
  %158 = icmp eq ptr %157, %8
  br i1 %158, label %159, label %151, !prof !76, !llvm.loop !77

159:                                              ; preds = %151, %124, %141, %105
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1977246}
!35 = !{!36, !41, i64 16}
!36 = !{!"arc", !37, i64 0, !40, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !41, i64 40, !41, i64 48, !40, i64 56, !40, i64 64}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!"branch_weights", i32 10018, i32 1967230}
!44 = !{!"branch_weights", i32 9916, i32 103}
!45 = !{!"branch_weights", i32 12675569, i32 -528152178}
!46 = !{!47, !40, i64 0}
!47 = !{!"node", !40, i64 0, !37, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !40, i64 80, !40, i64 88, !37, i64 96, !37, i64 100}
!48 = !{!47, !41, i64 16}
!49 = !{!"branch_weights", i32 31075548, i32 53782087}
!50 = !{!"branch_weights", i32 1, i32 1977246}
!51 = !{!47, !41, i64 32}
!52 = !{!"branch_weights", i32 53782087, i32 29098302}
!53 = !{!47, !41, i64 24}
!54 = !{!"branch_weights", i32 1977246, i32 80903142}
!55 = !{!47, !40, i64 88}
!56 = !{!47, !41, i64 40}
!57 = !{!"branch_weights", i32 746896, i32 1638185}
!58 = !{!"branch_weights", i32 791319, i32 1593762}
!59 = !{!41, !41, i64 0}
!60 = !{!"branch_weights", i32 476346, i32 1908735}
!61 = !{!47, !37, i64 8}
!62 = !{!47, !40, i64 80}
!63 = !{!"branch_weights", i32 240087, i32 2144994}
!64 = !{!47, !41, i64 48}
!65 = !{!"branch_weights", i32 1977246, i32 407834}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"branch_weights", i32 16513, i32 1960735}
!69 = !{!"branch_weights", i32 1, i32 1960734}
!70 = !{!"branch_weights", i32 16512, i32 1}
!71 = !{!"branch_weights", i32 1, i32 0}
!72 = distinct !{!72, !67}
!73 = distinct !{!73, !67}
!74 = !{!"branch_weights", i32 1960734, i32 108625121}
!75 = distinct !{!75, !67}
!76 = !{!"branch_weights", i32 1960734, i32 117631015}
!77 = distinct !{!77, !67}
