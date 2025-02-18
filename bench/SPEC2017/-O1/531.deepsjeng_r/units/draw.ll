; ModuleID = 'draw.cpp'
source_filename = "draw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %34, !prof !41

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
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %66, label %23, !prof !54

34:                                               ; preds = %23, %10, %6, %2
  %35 = icmp sgt i32 %4, 5
  br i1 %35, label %36, label %66, !prof !55

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  %38 = load i32, ptr %37, align 8, !tbaa !42
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %66, !prof !56

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = add nsw i32 %42, %38
  %44 = sub nsw i32 %43, %4
  %45 = icmp sgt i32 %43, -1
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %48 = load i64, ptr %47, align 8, !tbaa !48
  %49 = zext nneg i32 %43 to i64
  br label %50

50:                                               ; preds = %46, %58
  %51 = phi i64 [ %49, %46 ], [ %60, %58 ]
  %52 = phi i32 [ 0, %46 ], [ %59, %58 ]
  %53 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %51
  %54 = load i64, ptr %53, align 8, !tbaa !53
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = icmp sgt i32 %52, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %50, %56
  %59 = phi i32 [ 1, %56 ], [ %52, %50 ]
  %60 = add nsw i64 %51, -2
  %61 = trunc i64 %60 to i32
  %62 = trunc i64 %51 to i32
  %63 = icmp sgt i32 %62, 1
  %64 = icmp sle i32 %44, %61
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %50, label %66, !llvm.loop !57

66:                                               ; preds = %28, %56, %58, %40, %34, %36
  %67 = phi i32 [ 0, %36 ], [ 0, %34 ], [ 0, %40 ], [ 0, %58 ], [ 1, %56 ], [ 1, %28 ]
  ret i32 %67
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z21insufficient_materialP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !58 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %19 = load i32, ptr %18, align 4, !tbaa !59
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %23 = load i32, ptr %22, align 4, !tbaa !59
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %31 = load i32, ptr %30, align 4, !tbaa !59
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !59
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %37, %33, %29, %25
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %43 = load i32, ptr %42, align 4, !tbaa !59
  %44 = or i32 %43, %27
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %48 = load i32, ptr %47, align 4, !tbaa !59
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !59
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %41, %46, %21, %17, %13, %9, %5, %1
  br label %55

55:                                               ; preds = %37, %50, %54
  %56 = phi i32 [ 0, %54 ], [ 1, %50 ], [ 1, %37 ]
  ret i32 %56
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 507243255}
!35 = !{!36, !37, i64 476}
!36 = !{!"_ZTS7state_t", !37, i64 0, !38, i64 4, !40, i64 264, !40, i64 272, !40, i64 280, !38, i64 288, !37, i64 392, !37, i64 396, !38, i64 400, !37, i64 452, !37, i64 456, !37, i64 460, !37, i64 464, !37, i64 468, !37, i64 472, !37, i64 476, !40, i64 480, !40, i64 488, !38, i64 496, !38, i64 2544, !38, i64 2800, !38, i64 3056, !40, i64 4080, !40, i64 4088, !37, i64 4096, !38, i64 4100, !37, i64 4356, !37, i64 4360, !37, i64 4364, !37, i64 4368, !37, i64 4372, !37, i64 4376, !37, i64 4380, !37, i64 4384, !37, i64 4388, !37, i64 4392, !38, i64 4400}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"long long", !38, i64 0}
!41 = !{!"branch_weights", i32 58024077, i32 449219178}
!42 = !{!36, !37, i64 472}
!43 = !{!"branch_weights", i32 58024077, i32 0}
!44 = !{!45, !37, i64 60}
!45 = !{!"_ZTS11gamestate_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !38, i64 64, !38, i64 4064, !40, i64 36064, !37, i64 36072, !37, i64 36076, !37, i64 36080, !37, i64 36084, !37, i64 36088, !37, i64 36092, !37, i64 36096, !37, i64 36100}
!46 = !{!"branch_weights", i32 206396723, i32 3982080}
!47 = !{!"branch_weights", i32 57350600, i32 1}
!48 = !{!36, !40, i64 480}
!49 = !{!"branch_weights", i32 95677602, i32 57350600}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!40, !40, i64 0}
!54 = !{!"branch_weights", i32 673476, i32 152354726}
!55 = !{!"branch_weights", i32 23871230, i32 482698549}
!56 = !{!"branch_weights", i32 0, i32 23871230}
!57 = distinct !{!57, !51, !52}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!37, !37, i64 0}
