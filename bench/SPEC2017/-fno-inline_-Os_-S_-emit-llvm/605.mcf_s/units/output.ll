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
define dso_local noundef i64 @write_circulations(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = sub i64 0, %6
  %8 = getelementptr inbounds %struct.arc, ptr %4, i64 %7
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %2
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %1, ptr noundef nonnull @getArcPosition) #5
  %12 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.node, ptr %13, i64 %15, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.network, ptr %1, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %60
  %22 = phi ptr [ %17, %19 ], [ %62, %60 ]
  %23 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !17
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
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.node, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !22
  %38 = sub nsw i32 0, %37
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i32 noundef %38) #4
  %40 = load ptr, ptr %34, align 8, !tbaa !21
  %41 = load i64, ptr %20, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.node, ptr %40, i64 %41, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %33, %50
  %46 = phi ptr [ %52, %50 ], [ %43, %33 ]
  %47 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !17
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %45, !llvm.loop !25

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.arc, ptr %46, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = getelementptr inbounds %struct.node, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 8, !tbaa !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %28

60:                                               ; preds = %54, %21
  %61 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21, !llvm.loop !27

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
define dso_local noundef i64 @write_objective_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 576}
!7 = !{!"network", !8, i64 0, !8, i64 200, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !11, i64 536, !10, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!7, !10, i64 440}
!14 = !{!7, !12, i64 552}
!15 = !{!7, !10, i64 400}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !10, i64 56}
!18 = !{!"arc", !19, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !20, i64 32, !12, i64 40, !12, i64 48, !10, i64 56, !10, i64 64}
!19 = !{!"int", !8, i64 0}
!20 = !{!"short", !8, i64 0}
!21 = !{!18, !12, i64 24}
!22 = !{!23, !19, i64 96}
!23 = !{!"node", !10, i64 0, !19, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !10, i64 80, !10, i64 88, !19, i64 96, !19, i64 100}
!24 = !{!7, !10, i64 408}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
