; ModuleID = 'board.cpp'
source_filename = "board.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@material = external local_unnamed_addr constant [14 x i32], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4ranki(i32 noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = ashr i32 %0, 3
  %3 = sub nsw i32 8, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4filei(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = and i32 %0, 7
  %3 = add nuw nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8sum_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !45
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !45
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !46
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !46
  %9 = sub nsw i32 %7, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = add nuw nsw i32 %10, %6
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !45
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !45
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !46
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !46
  %9 = sub nsw i32 %7, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = tail call i32 @llvm.umax.i32(i32 %6, i32 %10)
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !48 {
  %3 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) #6, !range !49
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11check_phaseP11gamestate_tP7state_t(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !50 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !51
  store i64 %5, ptr %3, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %60, label %8, !prof !58

8:                                                ; preds = %2, %35
  %9 = phi i32 [ %38, %35 ], [ 0, %2 ]
  %10 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %11 = phi i32 [ %36, %35 ], [ 0, %2 ]
  %12 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %6, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !59
  switch i32 %15, label %16 [
    i32 1, label %35
    i32 2, label %35
    i32 13, label %35
    i32 5, label %31
    i32 6, label %31
  ], !prof !60

16:                                               ; preds = %8
  %17 = and i32 %15, -2147483647
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25, !prof !61

19:                                               ; preds = %16
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !59
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = add nsw i32 %23, %9
  br label %31

25:                                               ; preds = %16
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !59
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
  %39 = load i64, ptr %3, align 8, !tbaa !57
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %8, !prof !62, !llvm.loop !63

41:                                               ; preds = %35
  %42 = icmp sgt i32 %37, 11
  %43 = icmp slt i32 %38, 1701
  %44 = icmp slt i32 %36, 1701
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %42, label %46, label %58, !prof !65

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %48 = load i32, ptr %47, align 8, !tbaa !66
  %49 = icmp eq i32 %48, 60
  br i1 %49, label %54, label %50, !prof !67

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !68
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58, !prof !69

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !70
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %60, label %58, !prof !71

58:                                               ; preds = %54, %50, %41
  %59 = select i1 %45, i32 2, i32 1, !prof !72
  br label %60

60:                                               ; preds = %58, %2, %54
  %61 = phi i32 [ 0, %54 ], [ 2, %2 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_Z8sum_distii, ptr @_Z4filei, i64 853845612}
!36 = !{ptr @_Z8sum_distii, ptr @_Z4ranki, i64 853845612}
!37 = !{ptr @_Z12taxicab_distii, ptr @_Z4filei, i64 1195867070}
!38 = !{ptr @_Z12taxicab_distii, ptr @_Z4ranki, i64 1195867070}
!39 = !{ptr @_Z16taxicab_dist_bitii, ptr @_Z12taxicab_distii, i64 597932234}
!40 = !{ptr @_Z11check_phaseP11gamestate_tP7state_t, ptr @_Z15FindFirstRemovePy, i64 289}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 2087828881}
!43 = !{!"function_entry_count", i64 2049743712}
!44 = !{!"function_entry_count", i64 426922806}
!45 = !{i32 1, i32 9}
!46 = !{i32 -268435447, i32 268435465}
!47 = !{!"function_entry_count", i64 597933535}
!48 = !{!"function_entry_count", i64 597932234}
!49 = !{i32 0, i32 536870912}
!50 = !{!"function_entry_count", i64 12}
!51 = !{!52, !56, i64 264}
!52 = !{!"_ZTS7state_t", !53, i64 0, !54, i64 4, !56, i64 264, !56, i64 272, !56, i64 280, !54, i64 288, !53, i64 392, !53, i64 396, !54, i64 400, !53, i64 452, !53, i64 456, !53, i64 460, !53, i64 464, !53, i64 468, !53, i64 472, !53, i64 476, !56, i64 480, !56, i64 488, !54, i64 496, !54, i64 2544, !54, i64 2800, !54, i64 3056, !56, i64 4080, !56, i64 4088, !53, i64 4096, !54, i64 4100, !53, i64 4356, !53, i64 4360, !53, i64 4364, !53, i64 4368, !53, i64 4372, !53, i64 4376, !53, i64 4380, !53, i64 4384, !53, i64 4388, !53, i64 4392, !54, i64 4400}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"long long", !54, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"branch_weights", i32 1, i32 207}
!59 = !{!53, !53, i64 0}
!60 = !{!"branch_weights", i32 -1897564288, i32 1225834549, i32 1271656211, i32 16855088, i32 217819602, i32 216432216}
!61 = !{!"branch_weights", i32 71, i32 74}
!62 = !{!"branch_weights", i32 207, i32 4801}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"branch_weights", i32 1849592542, i32 297891106}
!66 = !{!52, !53, i64 464}
!67 = !{!"branch_weights", i32 2, i32 11}
!68 = !{!52, !53, i64 468}
!69 = !{!"branch_weights", i32 4, i32 8}
!70 = !{!52, !53, i64 452}
!71 = !{!"branch_weights", i32 5, i32 1}
!72 = !{!"branch_weights", i32 93031262, i32 2054452386}
!73 = !{!74, !53, i64 4}
!74 = !{!"_ZTS11gamestate_t", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !54, i64 64, !54, i64 4064, !56, i64 36064, !53, i64 36072, !53, i64 36076, !53, i64 36080, !53, i64 36084, !53, i64 36088, !53, i64 36092, !53, i64 36096, !53, i64 36100}
