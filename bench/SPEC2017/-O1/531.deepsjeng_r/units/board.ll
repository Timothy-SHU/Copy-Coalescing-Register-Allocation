; ModuleID = 'board.cpp'
source_filename = "board.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@material = external local_unnamed_addr constant [14 x i32], align 16

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4ranki(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = ashr i32 %0, 3
  %3 = sub nsw i32 8, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4filei(i32 noundef %0) local_unnamed_addr #1 !prof !38 {
  %2 = and i32 %0, 7
  %3 = add nuw nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8sum_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = and i32 %0, 7
  %4 = and i32 %1, 7
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = ashr i32 %0, 3
  %8 = ashr i32 %1, 3
  %9 = sub nsw i32 %8, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = add nuw nsw i32 %6, %10
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !40 {
  %3 = and i32 %0, 7
  %4 = and i32 %1, 7
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = ashr i32 %0, 3
  %8 = ashr i32 %1, 3
  %9 = sub nsw i32 %8, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = tail call i32 @llvm.umax.i32(i32 %6, i32 %10)
  ret i32 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = and i32 %0, 7
  %4 = and i32 %1, 7
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = ashr i32 %0, 3
  %8 = ashr i32 %1, 3
  %9 = sub nsw i32 %8, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = tail call noundef i32 @llvm.umax.i32(i32 %6, i32 %10)
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z11check_phaseP11gamestate_tP7state_t(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !42 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !43
  store i64 %5, ptr %3, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %46, label %8, !prof !50

8:                                                ; preds = %2, %35
  %9 = phi i32 [ %38, %35 ], [ 0, %2 ]
  %10 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %11 = phi i32 [ %36, %35 ], [ 0, %2 ]
  %12 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %6, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !51
  switch i32 %15, label %16 [
    i32 1, label %35
    i32 2, label %35
    i32 13, label %35
    i32 5, label %31
    i32 6, label %31
  ], !prof !52

16:                                               ; preds = %8
  %17 = and i32 %15, -2147483647
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25, !prof !53

19:                                               ; preds = %16
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = add nsw i32 %23, %9
  br label %31

25:                                               ; preds = %16
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %11
  br label %31

31:                                               ; preds = %8, %8, %19, %25
  %32 = phi i32 [ %11, %19 ], [ %30, %25 ], [ %11, %8 ], [ %11, %8 ]
  %33 = phi i32 [ %24, %19 ], [ %9, %25 ], [ %9, %8 ], [ %9, %8 ]
  %34 = add nsw i32 %10, 1
  br label %35

35:                                               ; preds = %8, %8, %8, %31
  %36 = phi i32 [ %32, %31 ], [ %11, %8 ], [ %11, %8 ], [ %11, %8 ]
  %37 = phi i32 [ %34, %31 ], [ %10, %8 ], [ %10, %8 ], [ %10, %8 ]
  %38 = phi i32 [ %33, %31 ], [ %9, %8 ], [ %9, %8 ], [ %9, %8 ]
  %39 = load i64, ptr %3, align 8, !tbaa !49
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %8, !prof !54, !llvm.loop !55

41:                                               ; preds = %35
  %42 = icmp sgt i32 %37, 11
  %43 = icmp slt i32 %38, 1701
  %44 = icmp slt i32 %36, 1701
  %45 = select i1 %43, i1 %44, i1 false, !prof !58
  br label %46

46:                                               ; preds = %41, %2
  %47 = phi i1 [ false, %2 ], [ %42, %41 ]
  %48 = phi i1 [ true, %2 ], [ %45, %41 ]
  br i1 %47, label %49, label %63, !prof !59

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !60
  %52 = icmp eq i32 %51, 60
  br i1 %52, label %57, label %53, !prof !61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !62
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %63, !prof !63

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !64
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63, !prof !65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %62, align 4, !tbaa !66
  br label %67

63:                                               ; preds = %53, %57, %46
  %64 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 1
  br i1 %48, label %65, label %66, !prof !58

65:                                               ; preds = %63
  store i32 2, ptr %64, align 4, !tbaa !66
  br label %67

66:                                               ; preds = %63
  store i32 1, ptr %64, align 4, !tbaa !66
  br label %67

67:                                               ; preds = %65, %66, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_Z11check_phaseP11gamestate_tP7state_t, ptr @_Z15FindFirstRemovePy, i64 312}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 38116199}
!38 = !{!"function_entry_count", i64 31030}
!39 = !{!"function_entry_count", i64 426922806}
!40 = !{!"function_entry_count", i64 1301}
!41 = !{!"function_entry_count", i64 597932234}
!42 = !{!"function_entry_count", i64 12}
!43 = !{!44, !48, i64 264}
!44 = !{!"_ZTS7state_t", !45, i64 0, !46, i64 4, !48, i64 264, !48, i64 272, !48, i64 280, !46, i64 288, !45, i64 392, !45, i64 396, !46, i64 400, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !48, i64 480, !48, i64 488, !46, i64 496, !46, i64 2544, !46, i64 2800, !46, i64 3056, !48, i64 4080, !48, i64 4088, !45, i64 4096, !46, i64 4100, !45, i64 4356, !45, i64 4360, !45, i64 4364, !45, i64 4368, !45, i64 4372, !45, i64 4376, !45, i64 4380, !45, i64 4384, !45, i64 4388, !45, i64 4392, !46, i64 4400}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"long long", !46, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"branch_weights", i32 1, i32 191}
!51 = !{!45, !45, i64 0}
!52 = !{!"branch_weights", i32 143, i32 71, i32 74, i32 0, i32 12, i32 12}
!53 = !{!"branch_weights", i32 70, i32 73}
!54 = !{!"branch_weights", i32 191, i32 4801}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"branch_weights", i32 0, i32 8}
!59 = !{!"branch_weights", i32 11, i32 1}
!60 = !{!44, !45, i64 464}
!61 = !{!"branch_weights", i32 1, i32 10}
!62 = !{!44, !45, i64 468}
!63 = !{!"branch_weights", i32 3, i32 7}
!64 = !{!44, !45, i64 452}
!65 = !{!"branch_weights", i32 4, i32 0}
!66 = !{!67, !45, i64 4}
!67 = !{!"_ZTS11gamestate_t", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !46, i64 64, !46, i64 4064, !48, i64 36064, !45, i64 36072, !45, i64 36076, !45, i64 36080, !45, i64 36084, !45, i64 36088, !45, i64 36092, !45, i64 36096, !45, i64 36100}
