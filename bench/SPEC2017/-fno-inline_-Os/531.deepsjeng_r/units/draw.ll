; ModuleID = 'draw.cpp'
source_filename = "draw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %64, !prof !41

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %34, !prof !43

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = add nsw i32 %12, %8
  %14 = xor i32 %4, -1
  %15 = add i32 %13, %14
  %16 = add nsw i32 %13, -3
  %17 = icmp sgt i32 %13, 2
  %18 = icmp sge i32 %16, %15
  %19 = select i1 %17, i1 %18, i1 false, !prof !46
  br i1 %19, label %20, label %34, !prof !47

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %22 = load i64, ptr %21, align 8, !tbaa !48
  br label %28

23:                                               ; preds = %28
  %24 = add nsw i32 %29, -2
  %25 = icmp sgt i32 %29, 1
  %26 = icmp sge i32 %24, %15
  %27 = select i1 %25, i1 %26, i1 false, !prof !46
  br i1 %27, label %28, label %34, !prof !49, !llvm.loop !50

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %16, %20 ], [ %24, %23 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !52
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %64, label %23, !prof !53

34:                                               ; preds = %23, %10, %6
  %35 = icmp sgt i32 %4, 5
  %36 = icmp slt i32 %8, 2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %64, !prof !54

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = add nsw i32 %40, %8
  %42 = sub nsw i32 %41, %4
  %43 = icmp sgt i32 %41, -1
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = zext nneg i32 %41 to i64
  br label %48

48:                                               ; preds = %44, %56
  %49 = phi i64 [ %47, %44 ], [ %58, %56 ]
  %50 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %49
  %52 = load i64, ptr %51, align 8, !tbaa !52
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
  br i1 %63, label %48, label %64, !llvm.loop !55

64:                                               ; preds = %28, %54, %56, %38, %2, %34
  %65 = phi i32 [ 0, %34 ], [ 0, %2 ], [ 0, %38 ], [ 1, %54 ], [ 0, %56 ], [ 1, %28 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z21insufficient_materialP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !56 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %19 = load i32, ptr %18, align 4, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !57
  %28 = icmp slt i32 %27, 2
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %30 = load i32, ptr %29, align 4, !tbaa !57
  %31 = icmp slt i32 %30, 2
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !57
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %25, %37, %33
  %42 = or i32 %30, %27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !57
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !57
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %53, label %52

52:                                               ; preds = %41, %44, %48, %21, %17, %13, %9, %5, %1
  br label %53

53:                                               ; preds = %48, %37, %52
  %54 = phi i32 [ 0, %52 ], [ 1, %37 ], [ 1, %48 ]
  ret i32 %54
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 507243255}
!35 = !{!36, !37, i64 476}
!36 = !{!"_ZTS7state_t", !37, i64 0, !38, i64 4, !40, i64 264, !40, i64 272, !40, i64 280, !38, i64 288, !37, i64 392, !37, i64 396, !38, i64 400, !37, i64 452, !37, i64 456, !37, i64 460, !37, i64 464, !37, i64 468, !37, i64 472, !37, i64 476, !40, i64 480, !40, i64 488, !38, i64 496, !38, i64 2544, !38, i64 2800, !38, i64 3056, !40, i64 4080, !40, i64 4088, !37, i64 4096, !38, i64 4100, !37, i64 4356, !37, i64 4360, !37, i64 4364, !37, i64 4368, !37, i64 4372, !37, i64 4376, !37, i64 4380, !37, i64 4384, !37, i64 4388, !37, i64 4392, !38, i64 4400}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"long long", !38, i64 0}
!41 = !{!"branch_weights", i32 58024078, i32 449219179}
!42 = !{!36, !37, i64 472}
!43 = !{!"branch_weights", i32 58024078, i32 1}
!44 = !{!45, !37, i64 60}
!45 = !{!"_ZTS11gamestate_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !38, i64 64, !38, i64 4064, !40, i64 36064, !37, i64 36072, !37, i64 36076, !37, i64 36080, !37, i64 36084, !37, i64 36088, !37, i64 36092, !37, i64 36096, !37, i64 36100}
!46 = !{!"branch_weights", i32 206396724, i32 3982081}
!47 = !{!"branch_weights", i32 57350601, i32 1}
!48 = !{!36, !40, i64 480}
!49 = !{!"branch_weights", i32 95677602, i32 57350601}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!40, !40, i64 0}
!53 = !{!"branch_weights", i32 673477, i32 152354727}
!54 = !{!"branch_weights", i32 53, i32 -1239449654}
!55 = distinct !{!55, !51}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!37, !37, i64 0}
