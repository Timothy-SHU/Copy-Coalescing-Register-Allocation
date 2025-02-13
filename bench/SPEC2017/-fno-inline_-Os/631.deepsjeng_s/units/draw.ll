; ModuleID = 'draw.cpp'
source_filename = "draw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !36
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %64, !prof !42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %34, !prof !44

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = add nsw i32 %12, %8
  %14 = xor i32 %4, -1
  %15 = add i32 %13, %14
  %16 = add nsw i32 %13, -3
  %17 = icmp sgt i32 %13, 2
  %18 = icmp sge i32 %16, %15
  %19 = select i1 %17, i1 %18, i1 false, !prof !47
  br i1 %19, label %20, label %34, !prof !48

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %22 = load i64, ptr %21, align 8, !tbaa !49
  br label %28

23:                                               ; preds = %28
  %24 = add nsw i32 %29, -2
  %25 = icmp sgt i32 %29, 1
  %26 = icmp sge i32 %24, %15
  %27 = select i1 %25, i1 %26, i1 false, !prof !47
  br i1 %27, label %28, label %34, !prof !50, !llvm.loop !51

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %16, %20 ], [ %24, %23 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %64, label %23, !prof !54

34:                                               ; preds = %23, %10, %6
  %35 = icmp sgt i32 %4, 5
  %36 = icmp slt i32 %8, 2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %64, !prof !55

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !45
  %41 = add nsw i32 %40, %8
  %42 = sub nsw i32 %41, %4
  %43 = icmp sgt i32 %41, -1
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %46 = load i64, ptr %45, align 8, !tbaa !49
  %47 = zext nneg i32 %41 to i64
  br label %48

48:                                               ; preds = %44, %56
  %49 = phi i64 [ %47, %44 ], [ %58, %56 ]
  %50 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %49
  %52 = load i64, ptr %51, align 8, !tbaa !53
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = icmp sgt i32 %50, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %48, %54
  %57 = phi i32 [ 1, %54 ], [ %50, %48 ]
  %58 = add nsw i64 %49, -2
  %59 = trunc i64 %58 to i32
  %60 = trunc i64 %49 to i32
  %61 = icmp sgt i32 %60, 1
  %62 = icmp sle i32 %42, %59
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %48, label %64, !llvm.loop !56

64:                                               ; preds = %28, %54, %56, %38, %2, %34
  %65 = phi i32 [ 0, %34 ], [ 0, %2 ], [ 0, %38 ], [ 1, %54 ], [ 0, %56 ], [ 1, %28 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z21insufficient_materialP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !57 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %11 = load i32, ptr %10, align 4, !tbaa !58
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %23 = load i32, ptr %22, align 4, !tbaa !58
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = icmp slt i32 %27, 2
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %30 = load i32, ptr %29, align 4, !tbaa !58
  %31 = icmp slt i32 %30, 2
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !58
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !58
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %25, %37, %33
  %42 = or i32 %30, %27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !58
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %53, label %52

52:                                               ; preds = %41, %44, %48, %21, %17, %13, %9, %5, %1
  br label %53

53:                                               ; preds = %48, %37, %52
  %54 = phi i32 [ 0, %52 ], [ 1, %37 ], [ 1, %48 ]
  ret i32 %54
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 588199992}
!36 = !{!37, !38, i64 476}
!37 = !{!"_ZTS7state_t", !38, i64 0, !39, i64 4, !41, i64 264, !41, i64 272, !41, i64 280, !39, i64 288, !38, i64 392, !38, i64 396, !39, i64 400, !38, i64 452, !38, i64 456, !38, i64 460, !38, i64 464, !38, i64 468, !38, i64 472, !38, i64 476, !41, i64 480, !41, i64 488, !39, i64 496, !39, i64 2544, !39, i64 2800, !39, i64 3056, !41, i64 4080, !41, i64 4088, !38, i64 4096, !39, i64 4100, !38, i64 4356, !38, i64 4360, !38, i64 4364, !38, i64 4368, !38, i64 4372, !38, i64 4376, !38, i64 4380, !38, i64 4384, !38, i64 4388, !38, i64 4392, !39, i64 4400}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"long long", !39, i64 0}
!42 = !{!"branch_weights", i32 72440100, i32 515759894}
!43 = !{!37, !38, i64 472}
!44 = !{!"branch_weights", i32 72440100, i32 1}
!45 = !{!46, !38, i64 60}
!46 = !{!"_ZTS11gamestate_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !39, i64 64, !39, i64 4064, !41, i64 36064, !38, i64 36072, !38, i64 36076, !38, i64 36080, !38, i64 36084, !38, i64 36088, !38, i64 36092, !38, i64 36096, !38, i64 36100}
!47 = !{!"branch_weights", i32 262318803, i32 4496818}
!48 = !{!"branch_weights", i32 71600502, i32 1}
!49 = !{!37, !41, i64 480}
!50 = !{!"branch_weights", i32 123614616, i32 71600502}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!41, !41, i64 0}
!54 = !{!"branch_weights", i32 839598, i32 194375521}
!55 = !{!"branch_weights", i32 55, i32 -320324792}
!56 = distinct !{!56, !52}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!38, !38, i64 0}
