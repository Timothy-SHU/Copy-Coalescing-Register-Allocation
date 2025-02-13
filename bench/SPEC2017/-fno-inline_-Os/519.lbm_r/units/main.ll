; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MAIN_Param = type { i32, ptr, i32, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@srcGrid = internal global ptr null, align 8
@dstGrid = internal global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"MAIN_parseCommandLine: cannot stat result file '%s'\0A\00", align 1
@__const.MAIN_printInfo.actionString = private unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"nothing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"compare\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"store\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@__const.MAIN_printInfo.simTypeString = private unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"lid-driven cavity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel flow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@str = private unnamed_addr constant [108 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !54 {
  %3 = alloca %struct.MAIN_Param, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @MAIN_parseCommandLine(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #10
  call void @MAIN_printInfo(ptr noundef nonnull %3) #10
  call void @MAIN_initialize(ptr noundef nonnull %3) #10
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %25, label %6, !prof !61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MAIN_Param, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !62
  %9 = icmp eq i32 %8, 1
  br label %10

10:                                               ; preds = %6, %22
  %11 = phi i32 [ 1, %6 ], [ %23, %22 ]
  br i1 %9, label %12, label %14, !prof !63

12:                                               ; preds = %10
  %13 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_handleInOutFlow(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  %16 = load ptr, ptr @dstGrid, align 8, !tbaa !64
  tail call void @LBM_performStreamCollideTRT(ptr noundef %15, ptr noundef %16) #11
  tail call void @LBM_swapGrids(ptr noundef nonnull @srcGrid, ptr noundef nonnull @dstGrid) #11
  %17 = and i32 %11, 63
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22, !prof !65

19:                                               ; preds = %14
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11) #10
  %21 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_showGridStatistics(ptr noundef %21) #11
  br label %22

22:                                               ; preds = %14, %19
  %23 = add nuw i32 %11, 1
  %24 = icmp eq i32 %11, %4
  br i1 %24, label %25, label %10, !prof !66, !llvm.loop !67

25:                                               ; preds = %22, %2
  call void @MAIN_finalize(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MAIN_parseCommandLine(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !54 {
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #9
  %5 = add i32 %0, -7
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %9, !prof !69

7:                                                ; preds = %3
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #12
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = tail call i32 @atoi(ptr nocapture noundef %11) #13
  store i32 %12, ptr %2, align 8, !tbaa !55
  %13 = getelementptr inbounds ptr, ptr %1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %1, i64 3
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = tail call i32 @atoi(ptr nocapture noundef %17) #13
  %19 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !71
  %20 = getelementptr inbounds ptr, ptr %1, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #13
  %23 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !62
  %24 = icmp eq i32 %0, 6
  br i1 %24, label %25, label %44, !prof !72

25:                                               ; preds = %9
  %26 = getelementptr inbounds ptr, ptr %1, i64 5
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !73
  %29 = call i32 @stat(ptr noundef %27, ptr noundef nonnull %4) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !72

31:                                               ; preds = %25
  %32 = load ptr, ptr %28, align 8, !tbaa !73
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %32) #10
  tail call void @exit(i32 noundef 1) #12
  unreachable

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !74
  %37 = icmp eq i64 %36, 1313130
  br i1 %37, label %38, label %40, !prof !72

38:                                               ; preds = %34
  %39 = load i32, ptr %19, align 8, !tbaa !71
  br label %46

40:                                               ; preds = %34
  %41 = load ptr, ptr %28, align 8, !tbaa !73
  %42 = trunc i64 %36 to i32
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %41, i32 noundef %42, i32 noundef 1313130) #10
  tail call void @exit(i32 noundef 1) #12
  unreachable

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 4
  store ptr null, ptr %45, align 8, !tbaa !73
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi i32 [ %39, %38 ], [ %18, %44 ]
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %56, !prof !78

49:                                               ; preds = %46
  %50 = load ptr, ptr %15, align 8, !tbaa !70
  %51 = call i32 @stat(ptr noundef %50, ptr noundef nonnull %4) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %15, align 8, !tbaa !70
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %54) #10
  tail call void @exit(i32 noundef 1) #12
  unreachable

56:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @MAIN_printInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !54 {
  %2 = alloca [3 x [32 x i8]], align 16
  %3 = alloca [3 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.actionString, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.simTypeString, i64 96, i1 false)
  %4 = load i32, ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !62
  %11 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.6, ptr %12, !prof !78
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds [3 x [32 x i8]], ptr %3, i64 0, i64 %15
  %17 = zext i32 %8 to i64
  %18 = getelementptr inbounds [3 x [32 x i8]], ptr %2, i64 0, i64 %17
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 100, i32 noundef 100, i32 noundef 130, double noundef 0x3FF4CCCCCCCCCCCC, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MAIN_initialize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !54 {
  tail call void @LBM_allocateGrid(ptr noundef nonnull @srcGrid) #11
  tail call void @LBM_allocateGrid(ptr noundef nonnull @dstGrid) #11
  %2 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_initializeGrid(ptr noundef %2) #11
  %3 = load ptr, ptr @dstGrid, align 8, !tbaa !64
  tail call void @LBM_initializeGrid(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !78

7:                                                ; preds = %1
  %8 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_loadObstacleFile(ptr noundef %8, ptr noundef nonnull %5) #11
  %9 = load ptr, ptr @dstGrid, align 8, !tbaa !64
  %10 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @LBM_loadObstacleFile(ptr noundef %9, ptr noundef %10) #11
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !62
  %14 = icmp eq i32 %13, 1
  %15 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  br i1 %14, label %16, label %18, !prof !78

16:                                               ; preds = %11
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %15) #11
  %17 = load ptr, ptr @dstGrid, align 8, !tbaa !64
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %17) #11
  br label %20

18:                                               ; preds = %11
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %15) #11
  %19 = load ptr, ptr @dstGrid, align 8, !tbaa !64
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %19) #11
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_showGridStatistics(ptr noundef %21) #11
  ret void
}

; Function Attrs: optsize
declare void @LBM_handleInOutFlow(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_performStreamCollideTRT(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_swapGrids(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @LBM_showGridStatistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MAIN_finalize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !54 {
  %2 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  tail call void @LBM_showGridStatistics(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11, !prof !78

6:                                                ; preds = %1
  %7 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  tail call void @LBM_compareVelocityField(ptr noundef %7, ptr noundef %9, i32 noundef -1) #11
  %10 = load i32, ptr %3, align 8, !tbaa !71
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ %4, %1 ]
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18, !prof !78

14:                                               ; preds = %11
  %15 = load ptr, ptr @srcGrid, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  tail call void @LBM_storeVelocityField(ptr noundef %15, ptr noundef %17, i32 noundef -1) #11
  br label %18

18:                                               ; preds = %14, %11
  tail call void @LBM_freeGrid(ptr noundef nonnull @srcGrid) #11
  tail call void @LBM_freeGrid(ptr noundef nonnull @dstGrid) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @LBM_allocateGrid(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_initializeGrid(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_loadObstacleFile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForChannel(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForLDC(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_compareVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_storeVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LBM_freeGrid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!53}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 4329703715}
!4 = !{!"MaxCount", i64 3900000000}
!5 = !{!"MaxInternalCount", i64 3900000000}
!6 = !{!"MaxFunctionCount", i64 3000}
!7 = !{!"NumCounts", i64 78}
!8 = !{!"NumFunctions", i64 16}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3900000000, i32 1}
!14 = !{i32 100000, i64 3900000000, i32 1}
!15 = !{i32 200000, i64 3900000000, i32 1}
!16 = !{i32 300000, i64 3900000000, i32 1}
!17 = !{i32 400000, i64 3900000000, i32 1}
!18 = !{i32 500000, i64 3900000000, i32 1}
!19 = !{i32 600000, i64 3900000000, i32 1}
!20 = !{i32 700000, i64 3900000000, i32 1}
!21 = !{i32 800000, i64 3900000000, i32 1}
!22 = !{i32 900000, i64 3900000000, i32 1}
!23 = !{i32 950000, i64 337617000, i32 2}
!24 = !{i32 990000, i64 55296000, i32 3}
!25 = !{i32 999000, i64 2516248, i32 16}
!26 = !{i32 999900, i64 144544, i32 18}
!27 = !{i32 999990, i64 36864, i32 27}
!28 = !{i32 999999, i64 3000, i32 31}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @main, ptr @MAIN_parseCommandLine, i64 1}
!36 = !{ptr @main, ptr @MAIN_printInfo, i64 1}
!37 = !{ptr @main, ptr @MAIN_initialize, i64 1}
!38 = !{ptr @main, ptr @LBM_performStreamCollideTRT, i64 1500}
!39 = !{ptr @main, ptr @LBM_swapGrids, i64 1500}
!40 = !{ptr @main, ptr @printf, i64 23}
!41 = !{ptr @main, ptr @LBM_showGridStatistics, i64 23}
!42 = !{ptr @main, ptr @MAIN_finalize, i64 1}
!43 = !{ptr @MAIN_parseCommandLine, ptr @puts, i64 1}
!44 = !{ptr @MAIN_parseCommandLine, ptr @exit, i64 1}
!45 = !{ptr @MAIN_printInfo, ptr @printf, i64 1}
!46 = !{ptr @MAIN_initialize, ptr @LBM_allocateGrid, i64 2}
!47 = !{ptr @MAIN_initialize, ptr @LBM_initializeGrid, i64 2}
!48 = !{ptr @MAIN_initialize, ptr @LBM_loadObstacleFile, i64 2}
!49 = !{ptr @MAIN_initialize, ptr @LBM_initializeSpecialCellsForLDC, i64 2}
!50 = !{ptr @MAIN_initialize, ptr @LBM_showGridStatistics, i64 1}
!51 = !{ptr @MAIN_finalize, ptr @LBM_showGridStatistics, i64 1}
!52 = !{ptr @MAIN_finalize, ptr @LBM_freeGrid, i64 2}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 1}
!55 = !{!56, !57, i64 0}
!56 = !{!"", !57, i64 0, !60, i64 8, !57, i64 16, !57, i64 20, !60, i64 24}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!"any pointer", !58, i64 0}
!61 = !{!"branch_weights", i32 1, i32 127}
!62 = !{!56, !57, i64 20}
!63 = !{!"branch_weights", i32 1, i32 3001}
!64 = !{!60, !60, i64 0}
!65 = !{!"branch_weights", i32 47, i32 2955}
!66 = !{!"branch_weights", i32 127, i32 191937}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"branch_weights", i32 5, i32 4}
!70 = !{!56, !60, i64 8}
!71 = !{!56, !57, i64 16}
!72 = !{!"branch_weights", i32 2, i32 1}
!73 = !{!56, !60, i64 24}
!74 = !{!75, !76, i64 48}
!75 = !{!"stat", !76, i64 0, !76, i64 8, !76, i64 16, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !77, i64 72, !77, i64 88, !77, i64 104, !58, i64 120}
!76 = !{!"long", !58, i64 0}
!77 = !{!"timespec", !76, i64 0, !76, i64 8}
!78 = !{!"branch_weights", i32 1, i32 2}
