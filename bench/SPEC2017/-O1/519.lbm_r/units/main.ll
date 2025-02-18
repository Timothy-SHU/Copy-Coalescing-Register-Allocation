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

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca [3 x [32 x i8]], align 16
  %4 = alloca [3 x [32 x i8]], align 16
  %5 = alloca %struct.MAIN_Param, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @MAIN_parseCommandLine(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.actionString, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.simTypeString, i64 96, i1 false)
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.MAIN_Param, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.MAIN_Param, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.MAIN_Param, ptr %5, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds %struct.MAIN_Param, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.6, ptr %14, !prof !63
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [3 x [32 x i8]], ptr %4, i64 0, i64 %17
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds [3 x [32 x i8]], ptr %3, i64 0, i64 %19
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 100, i32 noundef 100, i32 noundef 130, double noundef 0x3FF4CCCCCCCCCCCC, i32 noundef %6, ptr noundef %8, ptr noundef nonnull %20, ptr noundef nonnull %18, ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #9
  call void @MAIN_initialize(ptr noundef nonnull %5)
  %22 = icmp slt i32 %6, 1
  br i1 %22, label %40, label %23, !prof !64

23:                                               ; preds = %2
  %24 = icmp eq i32 %12, 1
  br label %25

25:                                               ; preds = %23, %37
  %26 = phi i32 [ 1, %23 ], [ %38, %37 ]
  br i1 %24, label %27, label %29, !prof !65

27:                                               ; preds = %25
  %28 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  call void @LBM_handleInOutFlow(ptr noundef %28) #9
  br label %29

29:                                               ; preds = %27, %25
  %30 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  %31 = load ptr, ptr @dstGrid, align 8, !tbaa !66
  call void @LBM_performStreamCollideTRT(ptr noundef %30, ptr noundef %31) #9
  call void @LBM_swapGrids(ptr noundef nonnull @srcGrid, ptr noundef nonnull @dstGrid) #9
  %32 = and i32 %26, 63
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37, !prof !67

34:                                               ; preds = %29
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %26)
  %36 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  call void @LBM_showGridStatistics(ptr noundef %36) #9
  br label %37

37:                                               ; preds = %29, %34
  %38 = add nuw i32 %26, 1
  %39 = icmp eq i32 %26, %6
  br i1 %39, label %40, label %25, !prof !68, !llvm.loop !69

40:                                               ; preds = %37, %2
  call void @MAIN_finalize(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @MAIN_parseCommandLine(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !52 {
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #9
  %5 = add i32 %0, -7
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %9, !prof !63

7:                                                ; preds = %3
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #10
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = tail call i64 @strtol(ptr nocapture noundef nonnull %11, ptr noundef null, i32 noundef 10) #9
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %2, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %1, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !59
  %17 = getelementptr inbounds ptr, ptr %1, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = tail call i64 @strtol(ptr nocapture noundef nonnull %18, ptr noundef null, i32 noundef 10) #9
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 2
  store i32 %20, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %1, i64 4
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = tail call i64 @strtol(ptr nocapture noundef nonnull %23, ptr noundef null, i32 noundef 10) #9
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !61
  %27 = icmp eq i32 %0, 6
  br i1 %27, label %28, label %45, !prof !72

28:                                               ; preds = %9
  %29 = getelementptr inbounds ptr, ptr %1, i64 5
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !62
  %32 = call i32 @stat(ptr noundef %30, ptr noundef nonnull %4) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34, !prof !72

34:                                               ; preds = %28
  %35 = load ptr, ptr %31, align 8, !tbaa !62
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %35)
  tail call void @exit(i32 noundef 1) #10
  unreachable

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !73
  %40 = icmp eq i64 %39, 1313130
  br i1 %40, label %47, label %41, !prof !72

41:                                               ; preds = %37
  %42 = load ptr, ptr %31, align 8, !tbaa !62
  %43 = trunc i64 %39 to i32
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %42, i32 noundef %43, i32 noundef 1313130)
  tail call void @exit(i32 noundef 1) #10
  unreachable

45:                                               ; preds = %9
  %46 = getelementptr inbounds %struct.MAIN_Param, ptr %2, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !62
  br label %47

47:                                               ; preds = %37, %45
  %48 = load i32, ptr %21, align 8, !tbaa !60
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57, !prof !63

50:                                               ; preds = %47
  %51 = load ptr, ptr %16, align 8, !tbaa !59
  %52 = call i32 @stat(ptr noundef %51, ptr noundef nonnull %4) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %16, align 8, !tbaa !59
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %55)
  tail call void @exit(i32 noundef 1) #10
  unreachable

57:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #9
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @MAIN_printInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !77 {
  %2 = alloca [3 x [32 x i8]], align 16
  %3 = alloca [3 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.actionString, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %3, ptr noundef nonnull align 16 dereferenceable(96) @__const.MAIN_printInfo.simTypeString, i64 96, i1 false)
  %4 = load i32, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.6, ptr %12
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds [3 x [32 x i8]], ptr %3, i64 0, i64 %15
  %17 = zext i32 %8 to i64
  %18 = getelementptr inbounds [3 x [32 x i8]], ptr %2, i64 0, i64 %17
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 100, i32 noundef 100, i32 noundef 130, double noundef 0x3FF4CCCCCCCCCCCC, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @MAIN_initialize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !52 {
  tail call void @LBM_allocateGrid(ptr noundef nonnull @srcGrid) #9
  tail call void @LBM_allocateGrid(ptr noundef nonnull @dstGrid) #9
  %2 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  tail call void @LBM_initializeGrid(ptr noundef %2) #9
  %3 = load ptr, ptr @dstGrid, align 8, !tbaa !66
  tail call void @LBM_initializeGrid(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !63

7:                                                ; preds = %1
  %8 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  tail call void @LBM_loadObstacleFile(ptr noundef %8, ptr noundef nonnull %5) #9
  %9 = load ptr, ptr @dstGrid, align 8, !tbaa !66
  %10 = load ptr, ptr %4, align 8, !tbaa !62
  tail call void @LBM_loadObstacleFile(ptr noundef %9, ptr noundef %10) #9
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = icmp eq i32 %13, 1
  %15 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  br i1 %14, label %16, label %18, !prof !63

16:                                               ; preds = %11
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %15) #9
  %17 = load ptr, ptr @dstGrid, align 8, !tbaa !66
  tail call void @LBM_initializeSpecialCellsForChannel(ptr noundef %17) #9
  br label %20

18:                                               ; preds = %11
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %15) #9
  %19 = load ptr, ptr @dstGrid, align 8, !tbaa !66
  tail call void @LBM_initializeSpecialCellsForLDC(ptr noundef %19) #9
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  tail call void @LBM_showGridStatistics(ptr noundef %21) #9
  ret void
}

declare void @LBM_handleInOutFlow(ptr noundef) local_unnamed_addr #3

declare void @LBM_performStreamCollideTRT(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @LBM_swapGrids(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @LBM_showGridStatistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @MAIN_finalize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !52 {
  %2 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  tail call void @LBM_showGridStatistics(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10, !prof !63

6:                                                ; preds = %1
  %7 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @LBM_compareVelocityField(ptr noundef %7, ptr noundef %9, i32 noundef -1) #9
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, ptr %3, align 8, !tbaa !60
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %17, !prof !63

13:                                               ; preds = %10
  %14 = load ptr, ptr @srcGrid, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.MAIN_Param, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void @LBM_storeVelocityField(ptr noundef %14, ptr noundef %16, i32 noundef -1) #9
  br label %17

17:                                               ; preds = %13, %10
  tail call void @LBM_freeGrid(ptr noundef nonnull @srcGrid) #9
  tail call void @LBM_freeGrid(ptr noundef nonnull @dstGrid) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @LBM_allocateGrid(ptr noundef) local_unnamed_addr #3

declare void @LBM_initializeGrid(ptr noundef) local_unnamed_addr #3

declare void @LBM_loadObstacleFile(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @LBM_initializeSpecialCellsForChannel(ptr noundef) local_unnamed_addr #3

declare void @LBM_initializeSpecialCellsForLDC(ptr noundef) local_unnamed_addr #3

declare void @LBM_compareVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @LBM_storeVelocityField(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @LBM_freeGrid(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 14491839199}
!8 = !{!"MaxCount", i64 3562383000}
!9 = !{!"MaxInternalCount", i64 3562383000}
!10 = !{!"MaxFunctionCount", i64 337617000}
!11 = !{!"NumCounts", i64 77}
!12 = !{!"NumFunctions", i64 18}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3562383000, i32 1}
!18 = !{i32 100000, i64 3562383000, i32 1}
!19 = !{i32 200000, i64 3562383000, i32 1}
!20 = !{i32 300000, i64 3507087000, i32 4}
!21 = !{i32 400000, i64 3507087000, i32 4}
!22 = !{i32 500000, i64 3507087000, i32 4}
!23 = !{i32 600000, i64 3507087000, i32 4}
!24 = !{i32 700000, i64 3507087000, i32 4}
!25 = !{i32 800000, i64 3507087000, i32 4}
!26 = !{i32 900000, i64 3507087000, i32 4}
!27 = !{i32 950000, i64 3507087000, i32 4}
!28 = !{i32 990000, i64 337617000, i32 5}
!29 = !{i32 999000, i64 56998128, i32 6}
!30 = !{i32 999900, i64 2535456, i32 10}
!31 = !{i32 999990, i64 83702, i32 12}
!32 = !{i32 999999, i64 4095, i32 18}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @main, ptr @MAIN_parseCommandLine, i64 1}
!36 = !{ptr @main, ptr @printf, i64 47}
!37 = !{ptr @main, ptr @MAIN_initialize, i64 1}
!38 = !{ptr @main, ptr @LBM_performStreamCollideTRT, i64 3000}
!39 = !{ptr @main, ptr @LBM_swapGrids, i64 3000}
!40 = !{ptr @main, ptr @LBM_showGridStatistics, i64 46}
!41 = !{ptr @main, ptr @MAIN_finalize, i64 1}
!42 = !{ptr @MAIN_parseCommandLine, ptr @strtol, i64 3}
!43 = !{ptr @MAIN_parseCommandLine, ptr @stat, i64 1}
!44 = !{ptr @MAIN_initialize, ptr @LBM_allocateGrid, i64 2}
!45 = !{ptr @MAIN_initialize, ptr @LBM_initializeGrid, i64 2}
!46 = !{ptr @MAIN_initialize, ptr @LBM_loadObstacleFile, i64 2}
!47 = !{ptr @MAIN_initialize, ptr @LBM_initializeSpecialCellsForLDC, i64 2}
!48 = !{ptr @MAIN_initialize, ptr @LBM_showGridStatistics, i64 1}
!49 = !{ptr @MAIN_finalize, ptr @LBM_showGridStatistics, i64 1}
!50 = !{ptr @MAIN_finalize, ptr @LBM_freeGrid, i64 2}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!54, !55, i64 0}
!54 = !{!"", !55, i64 0, !58, i64 8, !55, i64 16, !55, i64 20, !58, i64 24}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"any pointer", !56, i64 0}
!59 = !{!54, !58, i64 8}
!60 = !{!54, !55, i64 16}
!61 = !{!54, !55, i64 20}
!62 = !{!54, !58, i64 24}
!63 = !{!"branch_weights", i32 0, i32 1}
!64 = !{!"branch_weights", i32 1, i32 127}
!65 = !{!"branch_weights", i32 0, i32 3000}
!66 = !{!58, !58, i64 0}
!67 = !{!"branch_weights", i32 46, i32 2954}
!68 = !{!"branch_weights", i32 127, i32 383873}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = !{!74, !75, i64 48}
!74 = !{!"stat", !75, i64 0, !75, i64 8, !75, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !76, i64 72, !76, i64 88, !76, i64 104, !56, i64 120}
!75 = !{!"long", !56, i64 0}
!76 = !{!"timespec", !75, i64 0, !75, i64 8}
!77 = !{!"function_entry_count", i64 0}
