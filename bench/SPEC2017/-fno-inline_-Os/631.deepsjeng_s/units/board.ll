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
define dso_local noundef i32 @_Z4ranki(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = ashr i32 %0, 3
  %3 = sub nsw i32 8, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4filei(i32 noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = and i32 %0, 7
  %3 = add nuw nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8sum_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !45 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !46
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !46
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !47
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !47
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
define dso_local noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !48 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !46
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !46
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !47
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !47
  %9 = sub nsw i32 %7, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = tail call i32 @llvm.umax.i32(i32 %6, i32 %10)
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !49 {
  %3 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) #6, !range !50
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11check_phaseP11gamestate_tP7state_t(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !51 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !52
  store i64 %5, ptr %3, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %60, label %8, !prof !59

8:                                                ; preds = %2, %35
  %9 = phi i32 [ %38, %35 ], [ 0, %2 ]
  %10 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %11 = phi i32 [ %36, %35 ], [ 0, %2 ]
  %12 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %6, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !60
  switch i32 %15, label %16 [
    i32 1, label %35
    i32 2, label %35
    i32 13, label %35
    i32 5, label %31
    i32 6, label %31
  ], !prof !61

16:                                               ; preds = %8
  %17 = and i32 %15, -2147483647
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25, !prof !62

19:                                               ; preds = %16
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = add nsw i32 %23, %9
  br label %31

25:                                               ; preds = %16
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !60
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
  %39 = load i64, ptr %3, align 8, !tbaa !58
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %8, !prof !63, !llvm.loop !64

41:                                               ; preds = %35
  %42 = icmp sgt i32 %37, 11
  %43 = icmp slt i32 %38, 1701
  %44 = icmp slt i32 %36, 1701
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %42, label %46, label %58, !prof !66

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %48 = load i32, ptr %47, align 8, !tbaa !67
  %49 = icmp eq i32 %48, 60
  br i1 %49, label %54, label %50, !prof !68

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !69
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58, !prof !70

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !71
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %60, label %58, !prof !72

58:                                               ; preds = %54, %50, %41
  %59 = select i1 %45, i32 2, i32 1, !prof !73
  br label %60

60:                                               ; preds = %58, %2, %54
  %61 = phi i32 [ 0, %54 ], [ 2, %2 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !74
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!42}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41}
!36 = !{ptr @_Z8sum_distii, ptr @_Z4filei, i64 1008644770}
!37 = !{ptr @_Z8sum_distii, ptr @_Z4ranki, i64 1008644770}
!38 = !{ptr @_Z12taxicab_distii, ptr @_Z4filei, i64 1476061734}
!39 = !{ptr @_Z12taxicab_distii, ptr @_Z4ranki, i64 1476061734}
!40 = !{ptr @_Z16taxicab_dist_bitii, ptr @_Z12taxicab_distii, i64 738030122}
!41 = !{ptr @_Z11check_phaseP11gamestate_tP7state_t, ptr @_Z15FindFirstRemovePy, i64 289}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 2531791873}
!44 = !{!"function_entry_count", i64 2484737392}
!45 = !{!"function_entry_count", i64 504322385}
!46 = !{i32 1, i32 9}
!47 = !{i32 -268435447, i32 268435465}
!48 = !{!"function_entry_count", i64 738030867}
!49 = !{!"function_entry_count", i64 738030122}
!50 = !{i32 0, i32 536870912}
!51 = !{!"function_entry_count", i64 12}
!52 = !{!53, !57, i64 264}
!53 = !{!"_ZTS7state_t", !54, i64 0, !55, i64 4, !57, i64 264, !57, i64 272, !57, i64 280, !55, i64 288, !54, i64 392, !54, i64 396, !55, i64 400, !54, i64 452, !54, i64 456, !54, i64 460, !54, i64 464, !54, i64 468, !54, i64 472, !54, i64 476, !57, i64 480, !57, i64 488, !55, i64 496, !55, i64 2544, !55, i64 2800, !55, i64 3056, !57, i64 4080, !57, i64 4088, !54, i64 4096, !55, i64 4100, !54, i64 4356, !54, i64 4360, !54, i64 4364, !54, i64 4368, !54, i64 4372, !54, i64 4376, !54, i64 4380, !54, i64 4384, !54, i64 4388, !54, i64 4392, !55, i64 4400}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"long long", !55, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"branch_weights", i32 1, i32 207}
!60 = !{!54, !54, i64 0}
!61 = !{!"branch_weights", i32 -1897564288, i32 1225834549, i32 1271656211, i32 16855088, i32 217819602, i32 216432216}
!62 = !{!"branch_weights", i32 71, i32 74}
!63 = !{!"branch_weights", i32 207, i32 4801}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"branch_weights", i32 1849592542, i32 297891106}
!67 = !{!53, !54, i64 464}
!68 = !{!"branch_weights", i32 2, i32 11}
!69 = !{!53, !54, i64 468}
!70 = !{!"branch_weights", i32 4, i32 8}
!71 = !{!53, !54, i64 452}
!72 = !{!"branch_weights", i32 5, i32 1}
!73 = !{!"branch_weights", i32 93031262, i32 2054452386}
!74 = !{!75, !54, i64 4}
!75 = !{!"_ZTS11gamestate_t", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !55, i64 64, !55, i64 4064, !57, i64 36064, !54, i64 36072, !54, i64 36076, !54, i64 36080, !54, i64 36084, !54, i64 36088, !54, i64 36092, !54, i64 36096, !54, i64 36100}
