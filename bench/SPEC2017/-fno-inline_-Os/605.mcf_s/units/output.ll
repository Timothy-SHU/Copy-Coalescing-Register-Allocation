; ModuleID = 'output.c'
source_filename = "output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.0f\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @write_circulations(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = sub i64 0, %6
  %8 = getelementptr inbounds %struct.arc, ptr %4, i64 %7
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %2
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %1, ptr noundef nonnull @getArcPosition) #5
  %12 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.node, ptr %13, i64 %15, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %60
  %22 = phi ptr [ %17, %19 ], [ %62, %60 ]
  %23 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr nonnull %9)
  br label %28

28:                                               ; preds = %26, %54
  %29 = phi ptr [ %22, %26 ], [ %46, %54 ]
  %30 = icmp ult ptr %29, %8
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr nonnull %9)
  br label %33

33:                                               ; preds = %31, %28
  %34 = getelementptr inbounds %struct.arc, ptr %29, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.node, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !58
  %38 = sub nsw i32 0, %37
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i32 noundef %38) #4
  %40 = load ptr, ptr %34, align 8, !tbaa !57
  %41 = load i64, ptr %20, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.node, ptr %40, i64 %41, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %33, %50
  %46 = phi ptr [ %52, %50 ], [ %43, %33 ]
  %47 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !53
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %45, !llvm.loop !61

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = getelementptr inbounds %struct.node, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 8, !tbaa !58
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %28

60:                                               ; preds = %54, %21
  %61 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21, !llvm.loop !63

64:                                               ; preds = %60, %33, %50, %11
  %65 = phi i64 [ 0, %11 ], [ -1, %50 ], [ -1, %33 ], [ 0, %60 ]
  %66 = tail call i32 @fclose(ptr noundef nonnull %9) #4
  br label %67

67:                                               ; preds = %64, %2
  %68 = phi i64 [ -1, %2 ], [ %65, %64 ]
  ret i64 %68
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: optsize
declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @getArcPosition(ptr noundef, i64 noundef) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @write_objective_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !65

5:                                                ; preds = %2
  %6 = tail call double @flow_cost(ptr noundef %1) #5
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, double noundef %6) #4
  %8 = tail call i32 @fclose(ptr noundef nonnull %3) #4
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i64 [ 0, %5 ], [ -1, %2 ]
  ret i64 %10
}

; Function Attrs: optsize
declare double @flow_cost(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @write_objective_value, ptr @fopen, i64 1}
!37 = !{ptr @write_objective_value, ptr @flow_cost, i64 1}
!38 = !{ptr @write_objective_value, ptr @fprintf, i64 1}
!39 = !{ptr @write_objective_value, ptr @fclose, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !48, i64 576}
!43 = !{!"network", !44, i64 0, !44, i64 200, !46, i64 400, !46, i64 408, !46, i64 416, !46, i64 424, !46, i64 432, !46, i64 440, !46, i64 448, !46, i64 456, !46, i64 464, !46, i64 472, !46, i64 480, !46, i64 488, !46, i64 496, !46, i64 504, !46, i64 512, !46, i64 520, !46, i64 528, !47, i64 536, !46, i64 544, !48, i64 552, !48, i64 560, !48, i64 568, !48, i64 576, !48, i64 584, !48, i64 592, !48, i64 600, !46, i64 608, !46, i64 616, !46, i64 624, !46, i64 632, !46, i64 640}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"long", !44, i64 0}
!47 = !{!"double", !44, i64 0}
!48 = !{!"any pointer", !44, i64 0}
!49 = !{!43, !46, i64 440}
!50 = !{!43, !48, i64 552}
!51 = !{!43, !46, i64 400}
!52 = !{!48, !48, i64 0}
!53 = !{!54, !46, i64 56}
!54 = !{!"arc", !55, i64 0, !46, i64 8, !48, i64 16, !48, i64 24, !56, i64 32, !48, i64 40, !48, i64 48, !46, i64 56, !46, i64 64}
!55 = !{!"int", !44, i64 0}
!56 = !{!"short", !44, i64 0}
!57 = !{!54, !48, i64 24}
!58 = !{!59, !55, i64 96}
!59 = !{!"node", !46, i64 0, !55, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !46, i64 80, !46, i64 88, !55, i64 96, !55, i64 100}
!60 = !{!43, !46, i64 408}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!"function_entry_count", i64 1}
!65 = !{!"branch_weights", i32 1, i32 2}
