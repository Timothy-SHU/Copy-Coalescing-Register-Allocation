; ModuleID = 'treeup.c'
source_filename = "treeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tree(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readnone %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 !prof !34 {
  %13 = getelementptr inbounds %struct.arc, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, %5
  %16 = icmp slt i64 %10, 0
  %17 = and i1 %16, %15
  br i1 %17, label %22, label %18, !prof !43

18:                                               ; preds = %12
  %19 = icmp eq ptr %14, %4
  %20 = icmp sgt i64 %10, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24, !prof !44

22:                                               ; preds = %18, %12
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
  %31 = load i64, ptr %30, align 8, !tbaa !45
  %32 = add nsw i64 %31, %28
  store i64 %32, ptr %30, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !48

36:                                               ; preds = %40, %29
  %37 = phi ptr [ %34, %29 ], [ %43, %40 ]
  br label %29

38:                                               ; preds = %29
  %39 = icmp eq ptr %30, %6
  br i1 %39, label %49, label %40, !prof !49

40:                                               ; preds = %38, %45
  %41 = phi ptr [ %47, %45 ], [ %30, %38 ]
  %42 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !prof !51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %49, label %40, !prof !53

49:                                               ; preds = %38, %45
  %50 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 11
  %51 = load i64, ptr %50, align 8, !tbaa !54
  %52 = icmp eq ptr %4, %7
  br i1 %52, label %101, label %53, !prof !49

53:                                               ; preds = %49
  %54 = sub i64 0, %2
  br label %55

55:                                               ; preds = %53, %83
  %56 = phi i64 [ %99, %83 ], [ %51, %53 ]
  %57 = phi i64 [ %87, %83 ], [ %1, %53 ]
  %58 = phi i64 [ %92, %83 ], [ %3, %53 ]
  %59 = phi ptr [ %60, %83 ], [ %5, %53 ]
  %60 = phi ptr [ %63, %83 ], [ %4, %53 ]
  %61 = phi ptr [ %94, %83 ], [ %9, %53 ]
  %62 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !55

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = getelementptr inbounds %struct.node, ptr %65, i64 0, i32 5
  store ptr %69, ptr %70, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %67, %55
  %72 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %struct.node, ptr %63, i64 0, i32 2
  %76 = getelementptr inbounds %struct.node, ptr %73, i64 0, i32 4
  %77 = select i1 %74, ptr %75, ptr %76, !prof !57
  store ptr %65, ptr %77, align 8, !tbaa !58
  store ptr %59, ptr %62, align 8, !tbaa !52
  %78 = getelementptr inbounds %struct.node, ptr %59, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  store ptr %79, ptr %64, align 8, !tbaa !50
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !59

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.node, ptr %79, i64 0, i32 5
  store ptr %60, ptr %82, align 8, !tbaa !56
  br label %83

83:                                               ; preds = %81, %71
  store ptr %60, ptr %78, align 8, !tbaa !47
  store ptr null, ptr %72, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !60
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = icmp eq i64 %87, %0
  %89 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  %90 = load i64, ptr %89, align 8, !tbaa !61
  %91 = select i1 %88, i64 %2, i64 %54, !prof !62
  %92 = add i64 %90, %91
  %93 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !63
  %95 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 11
  %96 = load i64, ptr %95, align 8, !tbaa !54
  %97 = trunc i64 %57 to i32
  store i32 %97, ptr %84, align 8, !tbaa !60
  %98 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  store i64 %58, ptr %98, align 8, !tbaa !61
  store ptr %61, ptr %93, align 8, !tbaa !63
  store i64 %56, ptr %95, align 8, !tbaa !54
  %99 = sub nsw i64 %51, %96
  %100 = icmp eq ptr %63, %7
  br i1 %100, label %101, label %55, !prof !64, !llvm.loop !65

101:                                              ; preds = %83, %49
  %102 = icmp sgt i64 %2, %11
  %103 = icmp eq ptr %7, %8
  br i1 %102, label %105, label %104, !prof !68

104:                                              ; preds = %101
  br i1 %103, label %142, label %144, !prof !69

105:                                              ; preds = %101
  br i1 %103, label %106, label %108, !prof !70

106:                                              ; preds = %108, %105
  %107 = icmp eq ptr %5, %8
  br i1 %107, label %160, label %125, !prof !70

108:                                              ; preds = %105, %108
  %109 = phi ptr [ %123, %108 ], [ %7, %105 ]
  %110 = sub i64 0, %2
  %111 = getelementptr inbounds %struct.node, ptr %109, i64 0, i32 11
  %112 = load i64, ptr %111, align 8, !tbaa !54
  %113 = sub nsw i64 %112, %51
  store i64 %113, ptr %111, align 8, !tbaa !54
  %114 = getelementptr inbounds %struct.node, ptr %109, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !60
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %116, %0
  %118 = getelementptr inbounds %struct.node, ptr %109, i64 0, i32 10
  %119 = load i64, ptr %118, align 8, !tbaa !61
  %120 = select i1 %117, i64 %110, i64 %2
  %121 = add i64 %119, %120
  store i64 %121, ptr %118, align 8, !tbaa !61
  %122 = getelementptr inbounds %struct.node, ptr %109, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  %124 = icmp eq ptr %123, %8
  br i1 %124, label %106, label %108, !prof !70, !llvm.loop !71

125:                                              ; preds = %106, %125
  %126 = phi ptr [ %140, %125 ], [ %5, %106 ]
  %127 = sub i64 0, %2
  %128 = getelementptr inbounds %struct.node, ptr %126, i64 0, i32 11
  %129 = load i64, ptr %128, align 8, !tbaa !54
  %130 = add nsw i64 %129, %51
  store i64 %130, ptr %128, align 8, !tbaa !54
  %131 = getelementptr inbounds %struct.node, ptr %126, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !60
  %133 = sext i32 %132 to i64
  %134 = icmp eq i64 %133, %0
  %135 = getelementptr inbounds %struct.node, ptr %126, i64 0, i32 10
  %136 = load i64, ptr %135, align 8, !tbaa !61
  %137 = select i1 %134, i64 %2, i64 %127
  %138 = add i64 %136, %137
  store i64 %138, ptr %135, align 8, !tbaa !61
  %139 = getelementptr inbounds %struct.node, ptr %126, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !52
  %141 = icmp eq ptr %140, %8
  br i1 %141, label %160, label %125, !prof !70, !llvm.loop !72

142:                                              ; preds = %144, %104
  %143 = icmp eq ptr %5, %8
  br i1 %143, label %160, label %152, !prof !69

144:                                              ; preds = %104, %144
  %145 = phi ptr [ %150, %144 ], [ %7, %104 ]
  %146 = getelementptr inbounds %struct.node, ptr %145, i64 0, i32 11
  %147 = load i64, ptr %146, align 8, !tbaa !54
  %148 = sub nsw i64 %147, %51
  store i64 %148, ptr %146, align 8, !tbaa !54
  %149 = getelementptr inbounds %struct.node, ptr %145, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !52
  %151 = icmp eq ptr %150, %8
  br i1 %151, label %142, label %144, !prof !73, !llvm.loop !74

152:                                              ; preds = %142, %152
  %153 = phi ptr [ %158, %152 ], [ %5, %142 ]
  %154 = getelementptr inbounds %struct.node, ptr %153, i64 0, i32 11
  %155 = load i64, ptr %154, align 8, !tbaa !54
  %156 = add nsw i64 %155, %51
  store i64 %156, ptr %154, align 8, !tbaa !54
  %157 = getelementptr inbounds %struct.node, ptr %153, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  %159 = icmp eq ptr %158, %8
  br i1 %159, label %160, label %152, !prof !75, !llvm.loop !76

160:                                              ; preds = %152, %125, %142, %106
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!43 = !{!"branch_weights", i32 9915, i32 1967331}
!44 = !{!"branch_weights", i32 6597, i32 1960734}
!45 = !{!46, !40, i64 0}
!46 = !{!"node", !40, i64 0, !37, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !40, i64 80, !40, i64 88, !37, i64 96, !37, i64 100}
!47 = !{!46, !41, i64 16}
!48 = !{!"branch_weights", i32 31075547, i32 53782086}
!49 = !{!"branch_weights", i32 1, i32 1977245}
!50 = !{!46, !41, i64 32}
!51 = !{!"branch_weights", i32 53782086, i32 29098301}
!52 = !{!46, !41, i64 24}
!53 = !{!"branch_weights", i32 1977245, i32 80903142}
!54 = !{!46, !40, i64 88}
!55 = !{!"branch_weights", i32 746895, i32 1638184}
!56 = !{!46, !41, i64 40}
!57 = !{!"branch_weights", i32 791318, i32 1593761}
!58 = !{!41, !41, i64 0}
!59 = !{!"branch_weights", i32 476345, i32 1908734}
!60 = !{!46, !37, i64 8}
!61 = !{!46, !40, i64 80}
!62 = !{!"branch_weights", i32 240086, i32 2144993}
!63 = !{!46, !41, i64 48}
!64 = !{!"branch_weights", i32 1977245, i32 407834}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"branch_weights", i32 16512, i32 1960734}
!69 = !{!"branch_weights", i32 1, i32 1960733}
!70 = !{!"branch_weights", i32 1, i32 0}
!71 = distinct !{!71, !66, !67}
!72 = distinct !{!72, !66, !67}
!73 = !{!"branch_weights", i32 1960733, i32 108625121}
!74 = distinct !{!74, !66, !67}
!75 = !{!"branch_weights", i32 1960733, i32 117631015}
!76 = distinct !{!76, !66, !67}
