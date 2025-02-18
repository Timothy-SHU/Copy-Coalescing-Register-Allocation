; ModuleID = 'liblzma/common/filter_common.c'
source_filename = "liblzma/common/filter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i64, i64, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter_coder = type { i64, ptr, ptr }

@features = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i64 4611686018427387905, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 33, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 4, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 5, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 6, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 7, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 8, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 9, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 3, i64 40, i8 1, i8 0, i8 0 }, %struct.anon { i64 -1, i64 0, i8 0, i8 0, i8 0 }], align 16

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_filters_copy(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !40 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %66, label %7, !prof !41

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8, !tbaa !42
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %52, label %10, !prof !48

10:                                               ; preds = %7, %46
  %11 = phi i64 [ %50, %46 ], [ %8, %7 ]
  %12 = phi ptr [ %49, %46 ], [ %0, %7 ]
  %13 = phi i64 [ %48, %46 ], [ 0, %7 ]
  %14 = phi i32 [ %47, %46 ], [ undef, %7 ]
  %15 = icmp eq i64 %13, 4
  br i1 %15, label %56, label %16, !prof !41

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13
  store i64 %11, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %13, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !41

21:                                               ; preds = %16
  %22 = load i64, ptr %12, align 8, !tbaa !42
  %23 = icmp eq i64 %22, 4611686018427387905
  br i1 %23, label %34, label %26, !prof !48

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13, i32 1
  store ptr null, ptr %25, align 8, !tbaa !49
  br label %46

26:                                               ; preds = %21, %29
  %27 = phi i64 [ %30, %29 ], [ 0, %21 ]
  %28 = icmp eq i64 %27, 9
  br i1 %28, label %43, label %29, !prof !41

29:                                               ; preds = %26
  %30 = add nuw nsw i64 %27, 1
  %31 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %34, label %26, !prof !53, !llvm.loop !54

34:                                               ; preds = %29, %21
  %35 = phi i64 [ 0, %21 ], [ %30, %29 ]
  %36 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %35, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !57
  %38 = tail call ptr @lzma_alloc(i64 noundef %37, ptr noundef %2) #5
  %39 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !49
  %40 = icmp eq ptr %38, null
  br i1 %40, label %43, label %41, !prof !41

41:                                               ; preds = %34
  %42 = load ptr, ptr %18, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %42, i64 %37, i1 false), !prof !58
  br label %43

43:                                               ; preds = %26, %34, %41
  %44 = phi i32 [ %14, %41 ], [ 5, %34 ], [ 8, %26 ]
  %45 = phi i32 [ 0, %41 ], [ 5, %34 ], [ 5, %26 ]
  switch i32 %45, label %66 [
    i32 0, label %46
    i32 5, label %56
  ], !prof !59

46:                                               ; preds = %24, %43
  %47 = phi i32 [ %14, %24 ], [ %44, %43 ]
  %48 = add nuw nsw i64 %13, 1
  %49 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !42
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %10, !prof !53, !llvm.loop !60

52:                                               ; preds = %46, %7
  %53 = phi i64 [ 0, %7 ], [ %48, %46 ]
  %54 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %53
  store i64 -1, ptr %54, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %53, i32 1
  store ptr null, ptr %55, align 8, !tbaa !49
  br label %66

56:                                               ; preds = %10, %43
  %57 = phi i64 [ 4, %10 ], [ %13, %43 ]
  %58 = phi i32 [ 8, %10 ], [ %44, %43 ]
  %59 = icmp eq i64 %57, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56, %60
  %61 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %62 = add nsw i64 %61, -1
  %63 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %62, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  tail call void @lzma_free(ptr noundef %64, ptr noundef %2) #5
  store ptr null, ptr %63, align 8, !tbaa !49
  %65 = icmp eq i64 %62, 0
  br i1 %65, label %66, label %60, !llvm.loop !61

66:                                               ; preds = %43, %60, %56, %52, %3
  %67 = phi i32 [ 11, %3 ], [ 0, %52 ], [ %58, %56 ], [ %58, %60 ], [ undef, %43 ]
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 !prof !62 {
  %6 = alloca i64, align 8
  %7 = alloca [5 x %struct.lzma_filter_info_s], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %8 = call fastcc i32 @validate_chain(ptr noundef %2, ptr noundef nonnull %6)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %84, !prof !63

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #5
  %11 = load i64, ptr %6, align 8, !tbaa !64
  %12 = icmp ne i64 %11, 0
  br i1 %4, label %14, label %13, !prof !65

13:                                               ; preds = %10
  br i1 %12, label %50, label %72, !prof !53

14:                                               ; preds = %10
  br i1 %12, label %19, label %43, !prof !53

15:                                               ; preds = %40
  %16 = add nuw i64 %22, 1
  %17 = icmp ult i64 %16, %11
  %18 = icmp eq i64 %16, %11
  br i1 %18, label %43, label %19, !prof !53, !llvm.loop !66

19:                                               ; preds = %14, %15
  %20 = phi i1 [ %17, %15 ], [ %12, %14 ]
  %21 = phi i32 [ %42, %15 ], [ %8, %14 ]
  %22 = phi i64 [ %16, %15 ], [ 0, %14 ]
  %23 = xor i64 %22, -1
  %24 = add i64 %11, %23
  %25 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !42
  %27 = tail call ptr %3(i64 noundef %26) #5, !prof !67
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29, !prof !41

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.lzma_filter_coder, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33, !prof !41

33:                                               ; preds = %29
  %34 = load i64, ptr %25, align 8, !tbaa !42
  %35 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %24
  store i64 %34, ptr %35, align 8, !tbaa !70
  %36 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %24, i32 1
  store ptr %31, ptr %36, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %22, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %24, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !73
  br label %40

40:                                               ; preds = %19, %29, %33
  %41 = phi i1 [ true, %33 ], [ false, %29 ], [ false, %19 ]
  %42 = phi i32 [ %21, %33 ], [ 8, %29 ], [ 8, %19 ]
  br i1 %41, label %15, label %43, !prof !74

43:                                               ; preds = %40, %15, %14
  %44 = phi i1 [ %12, %14 ], [ %20, %40 ], [ %17, %15 ]
  %45 = phi i32 [ %8, %14 ], [ %42, %15 ], [ %42, %40 ]
  br i1 %44, label %82, label %75, !prof !41

46:                                               ; preds = %69
  %47 = add nuw i64 %53, 1
  %48 = icmp ult i64 %47, %11
  %49 = icmp eq i64 %47, %11
  br i1 %49, label %72, label %50, !prof !53, !llvm.loop !75

50:                                               ; preds = %13, %46
  %51 = phi i1 [ %48, %46 ], [ %12, %13 ]
  %52 = phi i32 [ %71, %46 ], [ %8, %13 ]
  %53 = phi i64 [ %47, %46 ], [ 0, %13 ]
  %54 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !42
  %56 = tail call ptr %3(i64 noundef %55) #5, !prof !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58, !prof !77

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.lzma_filter_coder, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !68
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !77

62:                                               ; preds = %58
  %63 = load i64, ptr %54, align 8, !tbaa !42
  %64 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %53
  store i64 %63, ptr %64, align 8, !tbaa !70
  %65 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %53, i32 1
  store ptr %60, ptr %65, align 8, !tbaa !72
  %66 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %53, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %53, i32 2
  store ptr %67, ptr %68, align 8, !tbaa !73
  br label %69

69:                                               ; preds = %50, %58, %62
  %70 = phi i1 [ true, %62 ], [ false, %58 ], [ false, %50 ]
  %71 = phi i32 [ %52, %62 ], [ 8, %58 ], [ 8, %50 ]
  br i1 %70, label %46, label %72, !prof !78

72:                                               ; preds = %69, %46, %13
  %73 = phi i1 [ %12, %13 ], [ %51, %69 ], [ %48, %46 ]
  %74 = phi i32 [ %8, %13 ], [ %71, %46 ], [ %71, %69 ]
  br i1 %73, label %82, label %75, !prof !77

75:                                               ; preds = %72, %43
  %76 = load i64, ptr %6, align 8, !tbaa !64
  %77 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %76
  store i64 -1, ptr %77, align 8, !tbaa !70
  %78 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %76, i32 1
  store ptr null, ptr %78, align 8, !tbaa !72
  %79 = call i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !63

81:                                               ; preds = %75
  call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  br label %82

82:                                               ; preds = %75, %72, %81, %43
  %83 = phi i32 [ %45, %43 ], [ %79, %81 ], [ %74, %72 ], [ %79, %75 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #5
  br label %84

84:                                               ; preds = %5, %82
  %85 = phi i32 [ %83, %82 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %85
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @validate_chain(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !prof !79 !PGOFuncName !80 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4, !prof !81

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8, !tbaa !42
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %53, label %7, !prof !81

7:                                                ; preds = %4, %40
  %8 = phi i64 [ %36, %40 ], [ 0, %4 ]
  %9 = phi i8 [ %37, %40 ], [ 1, %4 ]
  %10 = phi i8 [ %38, %40 ], [ 0, %4 ]
  %11 = phi i64 [ %41, %40 ], [ 0, %4 ]
  %12 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = icmp eq i64 %13, 4611686018427387905
  br i1 %14, label %23, label %15, !prof !82

15:                                               ; preds = %7, %18
  %16 = phi i64 [ %19, %18 ], [ 0, %7 ]
  %17 = icmp eq i64 %16, 9
  br i1 %17, label %35, label %18, !prof !81

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %16, 1
  %20 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %13, %21
  br i1 %22, label %23, label %15, !prof !83, !llvm.loop !84

23:                                               ; preds = %18, %7
  %24 = phi i64 [ 0, %7 ], [ %19, %18 ]
  %25 = and i8 %9, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !81

27:                                               ; preds = %23
  %28 = add i64 %24, -2
  %29 = icmp ult i64 %28, 7
  %30 = zext i1 %29 to i8
  %31 = icmp ult i64 %24, 2
  %32 = zext i1 %31 to i8
  %33 = zext i1 %31 to i64
  %34 = add i64 %8, %33
  br label %35

35:                                               ; preds = %15, %23, %27
  %36 = phi i64 [ %34, %27 ], [ %8, %23 ], [ %8, %15 ]
  %37 = phi i8 [ %30, %27 ], [ %9, %23 ], [ %9, %15 ]
  %38 = phi i8 [ %32, %27 ], [ %10, %23 ], [ %10, %15 ]
  %39 = phi i1 [ true, %27 ], [ false, %23 ], [ false, %15 ]
  br i1 %39, label %40, label %53, !prof !85

40:                                               ; preds = %35
  %41 = add i64 %11, 1
  %42 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !42
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %7, !prof !85, !llvm.loop !86

45:                                               ; preds = %40
  %46 = icmp ugt i64 %41, 4
  br i1 %46, label %53, label %47, !prof !81

47:                                               ; preds = %45
  %48 = and i8 %38, 1
  %49 = icmp eq i8 %48, 0
  %50 = icmp ugt i64 %36, 3
  %51 = select i1 %49, i1 true, i1 %50, !prof !81
  br i1 %51, label %53, label %52, !prof !81

52:                                               ; preds = %47
  store i64 %41, ptr %1, align 8, !tbaa !64
  br label %53

53:                                               ; preds = %35, %52, %47, %45, %2, %4
  %54 = phi i32 [ 11, %4 ], [ 11, %2 ], [ 0, %52 ], [ 8, %47 ], [ 8, %45 ], [ 8, %35 ]
  ret i32 %54
}

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !87 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = call fastcc i32 @validate_chain(ptr noundef %1, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  br i1 %5, label %6, label %36, !prof !78

6:                                                ; preds = %2, %29
  %7 = phi i64 [ %27, %29 ], [ 0, %2 ]
  %8 = phi i64 [ %30, %29 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = tail call ptr %0(i64 noundef %10) #5, !prof !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !prof !77

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.lzma_filter_coder, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !77

17:                                               ; preds = %13
  %18 = add i64 %7, 1024
  br label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %8, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = tail call i64 %15(ptr noundef %21) #5, !prof !89
  %23 = icmp ne i64 %22, -1
  %24 = select i1 %23, i64 %22, i64 0, !prof !78
  %25 = add i64 %24, %7
  br label %26

26:                                               ; preds = %19, %17, %6
  %27 = phi i64 [ %7, %6 ], [ %18, %17 ], [ %25, %19 ]
  %28 = phi i1 [ false, %6 ], [ true, %17 ], [ %23, %19 ]
  br i1 %28, label %29, label %36, !prof !78

29:                                               ; preds = %26
  %30 = add i64 %8, 1
  %31 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !42
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %6, !prof !78, !llvm.loop !90

34:                                               ; preds = %29
  %35 = add i64 %27, 32768
  br label %36

36:                                               ; preds = %26, %2, %34
  %37 = phi i64 [ -1, %2 ], [ %35, %34 ], [ -1, %26 ]
  ret i64 %37
}

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @lzma_filters_copy, ptr @lzma_alloc, i64 1}
!36 = !{ptr @lzma_raw_coder_init, ptr @validate_chain, i64 3}
!37 = !{ptr @lzma_raw_coder_init, ptr @lzma_next_filter_init, i64 3}
!38 = !{ptr @lzma_raw_coder_memusage, ptr @validate_chain, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!"branch_weights", i32 0, i32 1}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !47, i64 8}
!44 = !{!"long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"branch_weights", i32 1, i32 127}
!49 = !{!43, !47, i64 8}
!50 = !{!51, !44, i64 0}
!51 = !{!"", !44, i64 0, !44, i64 8, !52, i64 16, !52, i64 17, !52, i64 18}
!52 = !{!"_Bool", !45, i64 0}
!53 = !{!"branch_weights", i32 127, i32 1}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!51, !44, i64 8}
!58 = !{!"VP", i32 1, i64 1, i64 65, i64 1}
!59 = !{!"branch_weights", i32 0, i32 1, i32 0}
!60 = distinct !{!60, !55, !56}
!61 = distinct !{!61, !55, !56}
!62 = !{!"function_entry_count", i64 3}
!63 = !{!"branch_weights", i32 3, i32 0}
!64 = !{!44, !44, i64 0}
!65 = !{!"branch_weights", i32 1, i32 2}
!66 = distinct !{!66, !55, !56}
!67 = !{!"VP", i32 0, i64 1, i64 -860288324677832500, i64 1}
!68 = !{!69, !47, i64 8}
!69 = !{!"", !44, i64 0, !47, i64 8, !47, i64 16}
!70 = !{!71, !44, i64 0}
!71 = !{!"lzma_filter_info_s", !44, i64 0, !47, i64 8, !47, i64 16}
!72 = !{!71, !47, i64 8}
!73 = !{!71, !47, i64 16}
!74 = !{!"branch_weights", i32 1, i32 0}
!75 = distinct !{!75, !55, !56}
!76 = !{!"VP", i32 0, i64 2, i64 -7087762284309215334, i64 2}
!77 = !{!"branch_weights", i32 0, i32 2}
!78 = !{!"branch_weights", i32 2, i32 0}
!79 = !{!"function_entry_count", i64 5}
!80 = !{!"liblzma/common/filter_common.c;validate_chain"}
!81 = !{!"branch_weights", i32 0, i32 5}
!82 = !{!"branch_weights", i32 1, i32 159}
!83 = !{!"branch_weights", i32 159, i32 1}
!84 = distinct !{!84, !55, !56}
!85 = !{!"branch_weights", i32 5, i32 0}
!86 = distinct !{!86, !55, !56}
!87 = !{!"function_entry_count", i64 2}
!88 = !{!69, !47, i64 16}
!89 = !{!"VP", i32 0, i64 2, i64 7357184141499019978, i64 2}
!90 = distinct !{!90, !55, !56}
