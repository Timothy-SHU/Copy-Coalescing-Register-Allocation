; ModuleID = 'ldecod_src/transform.c'
source_filename = "ldecod_src/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 3
  %9 = sext i32 %8 to i64
  br label %19

10:                                               ; preds = %19
  %11 = getelementptr inbounds ptr, ptr %1, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr ptr, ptr %11, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr ptr, ptr %11, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr ptr, ptr %11, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %48

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %7, %4 ], [ %46, %19 ]
  %21 = phi ptr [ %5, %4 ], [ %45, %19 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds i32, ptr %23, i64 %6
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  %26 = load i32, ptr %24, align 4, !tbaa !39
  %27 = getelementptr inbounds i32, ptr %24, i64 2
  %28 = load i32, ptr %25, align 4, !tbaa !39
  %29 = getelementptr inbounds i32, ptr %24, i64 3
  %30 = load i32, ptr %27, align 4, !tbaa !39
  %31 = load i32, ptr %29, align 4, !tbaa !39
  %32 = add nsw i32 %31, %26
  %33 = add nsw i32 %30, %28
  %34 = sub nsw i32 %28, %30
  %35 = sub nsw i32 %26, %31
  %36 = add nsw i32 %32, %33
  %37 = getelementptr inbounds i32, ptr %21, i64 1
  store i32 %36, ptr %21, align 4, !tbaa !39
  %38 = shl i32 %35, 1
  %39 = add nsw i32 %38, %34
  %40 = getelementptr inbounds i32, ptr %21, i64 2
  store i32 %39, ptr %37, align 4, !tbaa !39
  %41 = sub nsw i32 %32, %33
  %42 = getelementptr inbounds i32, ptr %21, i64 3
  store i32 %41, ptr %40, align 4, !tbaa !39
  %43 = shl i32 %34, 1
  %44 = sub nsw i32 %35, %43
  %45 = getelementptr inbounds i32, ptr %21, i64 4
  store i32 %44, ptr %42, align 4, !tbaa !39
  %46 = add nsw i64 %20, 1
  %47 = icmp slt i64 %20, %9
  br i1 %47, label %19, label %10, !llvm.loop !41

48:                                               ; preds = %10, %48
  %49 = phi i64 [ 0, %10 ], [ %73, %48 ]
  %50 = getelementptr inbounds i32, ptr %5, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !39
  %52 = getelementptr inbounds i32, ptr %50, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !39
  %54 = getelementptr inbounds i32, ptr %50, i64 8
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = getelementptr inbounds i32, ptr %50, i64 12
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = add nsw i32 %57, %51
  %59 = add nsw i32 %55, %53
  %60 = sub nsw i32 %53, %55
  %61 = sub nsw i32 %51, %57
  %62 = add nsw i64 %49, %6
  %63 = add nsw i32 %58, %59
  %64 = getelementptr inbounds i32, ptr %12, i64 %62
  store i32 %63, ptr %64, align 4, !tbaa !39
  %65 = shl i32 %61, 1
  %66 = add nsw i32 %65, %60
  %67 = getelementptr inbounds i32, ptr %14, i64 %62
  store i32 %66, ptr %67, align 4, !tbaa !39
  %68 = sub nsw i32 %58, %59
  %69 = getelementptr inbounds i32, ptr %16, i64 %62
  store i32 %68, ptr %69, align 4, !tbaa !39
  %70 = shl i32 %60, 1
  %71 = sub nsw i32 %61, %70
  %72 = getelementptr inbounds i32, ptr %18, i64 %62
  store i32 %71, ptr %72, align 4, !tbaa !39
  %73 = add nuw nsw i64 %49, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %48, !llvm.loop !43

75:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 3
  %9 = sext i32 %8 to i64
  br label %19

10:                                               ; preds = %19
  %11 = getelementptr inbounds ptr, ptr %1, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr ptr, ptr %11, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr ptr, ptr %11, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr ptr, ptr %11, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %48

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %7, %4 ], [ %46, %19 ]
  %21 = phi ptr [ %5, %4 ], [ %45, %19 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds i32, ptr %23, i64 %6
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  %26 = load i32, ptr %24, align 4, !tbaa !39
  %27 = getelementptr inbounds i32, ptr %24, i64 2
  %28 = load i32, ptr %25, align 4, !tbaa !39
  %29 = getelementptr inbounds i32, ptr %24, i64 3
  %30 = load i32, ptr %27, align 4, !tbaa !39
  %31 = load i32, ptr %29, align 4, !tbaa !39
  %32 = add nsw i32 %30, %26
  %33 = sub nsw i32 %26, %30
  %34 = ashr i32 %28, 1
  %35 = sub nsw i32 %34, %31
  %36 = ashr i32 %31, 1
  %37 = add nsw i32 %36, %28
  %38 = add nsw i32 %37, %32
  %39 = getelementptr inbounds i32, ptr %21, i64 1
  store i32 %38, ptr %21, align 4, !tbaa !39
  %40 = add nsw i32 %35, %33
  %41 = getelementptr inbounds i32, ptr %21, i64 2
  store i32 %40, ptr %39, align 4, !tbaa !39
  %42 = sub nsw i32 %33, %35
  %43 = getelementptr inbounds i32, ptr %21, i64 3
  store i32 %42, ptr %41, align 4, !tbaa !39
  %44 = sub nsw i32 %32, %37
  %45 = getelementptr inbounds i32, ptr %21, i64 4
  store i32 %44, ptr %43, align 4, !tbaa !39
  %46 = add nsw i64 %20, 1
  %47 = icmp slt i64 %20, %9
  br i1 %47, label %19, label %10, !llvm.loop !44

48:                                               ; preds = %10, %48
  %49 = phi i64 [ 0, %10 ], [ %73, %48 ]
  %50 = getelementptr inbounds i32, ptr %5, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !39
  %52 = getelementptr inbounds i32, ptr %50, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !39
  %54 = getelementptr inbounds i32, ptr %50, i64 8
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = getelementptr inbounds i32, ptr %50, i64 12
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = add nsw i32 %55, %51
  %59 = sub nsw i32 %51, %55
  %60 = ashr i32 %53, 1
  %61 = sub nsw i32 %60, %57
  %62 = ashr i32 %57, 1
  %63 = add nsw i32 %62, %53
  %64 = add nsw i64 %49, %6
  %65 = add nsw i32 %63, %58
  %66 = getelementptr inbounds i32, ptr %12, i64 %64
  store i32 %65, ptr %66, align 4, !tbaa !39
  %67 = add nsw i32 %61, %59
  %68 = getelementptr inbounds i32, ptr %14, i64 %64
  store i32 %67, ptr %68, align 4, !tbaa !39
  %69 = sub nsw i32 %59, %61
  %70 = getelementptr inbounds i32, ptr %16, i64 %64
  store i32 %69, ptr %70, align 4, !tbaa !39
  %71 = sub nsw i32 %58, %63
  %72 = getelementptr inbounds i32, ptr %18, i64 %64
  store i32 %71, ptr %72, align 4, !tbaa !39
  %73 = add nuw nsw i64 %49, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %48, !llvm.loop !45

75:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  br label %12

4:                                                ; preds = %12
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %1, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %1, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %29

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 0, %2 ], [ %27, %12 ]
  %14 = phi ptr [ %3, %2 ], [ %17, %12 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds i32, ptr %14, i64 4
  %18 = load <4 x i32>, ptr %16, align 4, !tbaa !39
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %20 = add nsw <4 x i32> %18, %19
  %21 = sub nsw <4 x i32> %18, %19
  %22 = shufflevector <4 x i32> %20, <4 x i32> %21, <4 x i32> <i32 2, i32 5, i32 3, i32 4>
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %24 = add nsw <4 x i32> %22, %23
  %25 = sub nsw <4 x i32> %22, %23
  %26 = shufflevector <4 x i32> %24, <4 x i32> %25, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %26, ptr %14, align 4, !tbaa !39
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %4, label %12, !llvm.loop !46

29:                                               ; preds = %4, %29
  %30 = phi i64 [ 0, %4 ], [ %55, %29 ]
  %31 = getelementptr inbounds i32, ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = getelementptr inbounds i32, ptr %31, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !39
  %35 = getelementptr inbounds i32, ptr %31, i64 8
  %36 = load i32, ptr %35, align 4, !tbaa !39
  %37 = getelementptr inbounds i32, ptr %31, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = add nsw i32 %38, %32
  %40 = add nsw i32 %36, %34
  %41 = sub nsw i32 %34, %36
  %42 = sub nsw i32 %32, %38
  %43 = add nsw i32 %39, %40
  %44 = ashr i32 %43, 1
  %45 = getelementptr inbounds i32, ptr %5, i64 %30
  store i32 %44, ptr %45, align 4, !tbaa !39
  %46 = add nsw i32 %42, %41
  %47 = ashr i32 %46, 1
  %48 = getelementptr inbounds i32, ptr %7, i64 %30
  store i32 %47, ptr %48, align 4, !tbaa !39
  %49 = sub nsw i32 %39, %40
  %50 = ashr i32 %49, 1
  %51 = getelementptr inbounds i32, ptr %9, i64 %30
  store i32 %50, ptr %51, align 4, !tbaa !39
  %52 = sub nsw i32 %42, %41
  %53 = ashr i32 %52, 1
  %54 = getelementptr inbounds i32, ptr %11, i64 %30
  store i32 %53, ptr %54, align 4, !tbaa !39
  %55 = add nuw nsw i64 %30, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %29, !llvm.loop !47

57:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  br label %12

4:                                                ; preds = %12
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %1, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %1, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %29

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 0, %2 ], [ %27, %12 ]
  %14 = phi ptr [ %3, %2 ], [ %17, %12 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds i32, ptr %14, i64 4
  %18 = load <4 x i32>, ptr %16, align 4, !tbaa !39
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %20 = add nsw <4 x i32> %18, %19
  %21 = sub nsw <4 x i32> %18, %19
  %22 = shufflevector <4 x i32> %20, <4 x i32> %21, <4 x i32> <i32 3, i32 5, i32 4, i32 2>
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %24 = add nsw <4 x i32> %22, %23
  %25 = sub nsw <4 x i32> %22, %23
  %26 = shufflevector <4 x i32> %24, <4 x i32> %25, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %26, ptr %14, align 4, !tbaa !39
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %4, label %12, !llvm.loop !48

29:                                               ; preds = %4, %29
  %30 = phi i64 [ 0, %4 ], [ %51, %29 ]
  %31 = getelementptr inbounds i32, ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = getelementptr inbounds i32, ptr %31, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !39
  %35 = getelementptr inbounds i32, ptr %31, i64 8
  %36 = load i32, ptr %35, align 4, !tbaa !39
  %37 = getelementptr inbounds i32, ptr %31, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = add nsw i32 %36, %32
  %40 = sub nsw i32 %32, %36
  %41 = sub nsw i32 %34, %38
  %42 = add nsw i32 %38, %34
  %43 = add nsw i32 %42, %39
  %44 = getelementptr inbounds i32, ptr %5, i64 %30
  store i32 %43, ptr %44, align 4, !tbaa !39
  %45 = add nsw i32 %41, %40
  %46 = getelementptr inbounds i32, ptr %7, i64 %30
  store i32 %45, ptr %46, align 4, !tbaa !39
  %47 = sub nsw i32 %40, %41
  %48 = getelementptr inbounds i32, ptr %9, i64 %30
  store i32 %47, ptr %48, align 4, !tbaa !39
  %49 = sub nsw i32 %39, %42
  %50 = getelementptr inbounds i32, ptr %11, i64 %30
  store i32 %49, ptr %50, align 4, !tbaa !39
  %51 = add nuw nsw i64 %30, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %29, !llvm.loop !49

53:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = add nsw i32 %8, %5
  %10 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %9, ptr %3, align 16, !tbaa !39
  %11 = getelementptr inbounds i32, ptr %4, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %15, ptr %10, align 4, !tbaa !39
  %17 = getelementptr inbounds i32, ptr %4, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %21, ptr %16, align 8, !tbaa !39
  %23 = getelementptr inbounds i32, ptr %4, i64 3
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = getelementptr inbounds i32, ptr %7, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !39
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds i32, ptr %3, i64 4
  store i32 %27, ptr %22, align 4, !tbaa !39
  %29 = sub nsw i32 %5, %8
  %30 = getelementptr inbounds i32, ptr %3, i64 5
  store i32 %29, ptr %28, align 16, !tbaa !39
  %31 = sub nsw i32 %12, %14
  %32 = getelementptr inbounds i32, ptr %3, i64 6
  store i32 %31, ptr %30, align 4, !tbaa !39
  %33 = sub nsw i32 %18, %20
  %34 = getelementptr inbounds i32, ptr %3, i64 7
  store i32 %33, ptr %32, align 8, !tbaa !39
  %35 = sub nsw i32 %24, %26
  store i32 %35, ptr %34, align 4, !tbaa !39
  br label %36

36:                                               ; preds = %2, %36
  %37 = phi i1 [ true, %2 ], [ false, %36 ]
  %38 = phi i64 [ 0, %2 ], [ 1, %36 ]
  %39 = phi ptr [ %3, %2 ], [ %40, %36 ]
  %40 = getelementptr inbounds i32, ptr %39, i64 4
  %41 = getelementptr inbounds ptr, ptr %1, i64 %38
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = load <4 x i32>, ptr %39, align 4, !tbaa !39
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %45 = add nsw <4 x i32> %43, %44
  %46 = sub nsw <4 x i32> %43, %44
  %47 = shufflevector <4 x i32> %45, <4 x i32> %46, <4 x i32> <i32 2, i32 5, i32 3, i32 4>
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %49 = add nsw <4 x i32> %47, %48
  %50 = sub nsw <4 x i32> %47, %48
  %51 = shufflevector <4 x i32> %49, <4 x i32> %50, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %51, ptr %42, align 4, !tbaa !39
  br i1 %37, label %36, label %52, !llvm.loop !50

52:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = add nsw i32 %8, %5
  %10 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %9, ptr %3, align 16, !tbaa !39
  %11 = getelementptr inbounds i32, ptr %4, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %15, ptr %10, align 4, !tbaa !39
  %17 = getelementptr inbounds i32, ptr %4, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %21, ptr %16, align 8, !tbaa !39
  %23 = getelementptr inbounds i32, ptr %4, i64 3
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = getelementptr inbounds i32, ptr %7, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !39
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds i32, ptr %3, i64 4
  store i32 %27, ptr %22, align 4, !tbaa !39
  %29 = sub nsw i32 %5, %8
  %30 = getelementptr inbounds i32, ptr %3, i64 5
  store i32 %29, ptr %28, align 16, !tbaa !39
  %31 = sub nsw i32 %12, %14
  %32 = getelementptr inbounds i32, ptr %3, i64 6
  store i32 %31, ptr %30, align 4, !tbaa !39
  %33 = sub nsw i32 %18, %20
  %34 = getelementptr inbounds i32, ptr %3, i64 7
  store i32 %33, ptr %32, align 8, !tbaa !39
  %35 = sub nsw i32 %24, %26
  store i32 %35, ptr %34, align 4, !tbaa !39
  %36 = load ptr, ptr %1, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %1, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %1, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %1, i64 3
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %2, %43
  %44 = phi i1 [ true, %2 ], [ false, %43 ]
  %45 = phi i64 [ 0, %2 ], [ 1, %43 ]
  %46 = phi ptr [ %3, %2 ], [ %53, %43 ]
  %47 = getelementptr inbounds i32, ptr %46, i64 1
  %48 = load i32, ptr %46, align 4, !tbaa !39
  %49 = getelementptr inbounds i32, ptr %46, i64 2
  %50 = load i32, ptr %47, align 4, !tbaa !39
  %51 = getelementptr inbounds i32, ptr %46, i64 3
  %52 = load i32, ptr %49, align 4, !tbaa !39
  %53 = getelementptr inbounds i32, ptr %46, i64 4
  %54 = load i32, ptr %51, align 4, !tbaa !39
  %55 = add nsw i32 %52, %48
  %56 = sub nsw i32 %48, %52
  %57 = sub nsw i32 %50, %54
  %58 = add nsw i32 %54, %50
  %59 = add nsw i32 %58, %55
  %60 = getelementptr inbounds i32, ptr %36, i64 %45
  store i32 %59, ptr %60, align 4, !tbaa !39
  %61 = add nsw i32 %57, %56
  %62 = getelementptr inbounds i32, ptr %38, i64 %45
  store i32 %61, ptr %62, align 4, !tbaa !39
  %63 = sub nsw i32 %56, %57
  %64 = getelementptr inbounds i32, ptr %40, i64 %45
  store i32 %63, ptr %64, align 4, !tbaa !39
  %65 = sub nsw i32 %55, %58
  %66 = getelementptr inbounds i32, ptr %42, i64 %45
  store i32 %65, ptr %66, align 4, !tbaa !39
  br i1 %44, label %43, label %67, !llvm.loop !51

67:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 4, !tbaa !39
  %5 = getelementptr inbounds i32, ptr %3, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = add nsw i32 %6, %4
  %8 = sub nsw i32 %4, %6
  %9 = getelementptr inbounds ptr, ptr %0, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = getelementptr inbounds i32, ptr %10, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = add nsw i32 %14, %7
  store i32 %16, ptr %1, align 4, !tbaa !39
  %17 = add nsw i32 %15, %8
  %18 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !39
  %19 = sub nsw i32 %7, %14
  %20 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %19, ptr %20, align 4, !tbaa !39
  %21 = sub nsw i32 %8, %15
  %22 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %21, ptr %22, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ihadamard2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load <4 x i32>, ptr %0, align 4, !tbaa !39
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %5 = add nsw <4 x i32> %3, %4
  %6 = sub nsw <4 x i32> %3, %4
  %7 = shufflevector <4 x i32> %5, <4 x i32> %6, <4 x i32> <i32 3, i32 6, i32 1, i32 4>
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %9 = add nsw <4 x i32> %7, %8
  %10 = sub nsw <4 x i32> %7, %8
  %11 = shufflevector <4 x i32> %9, <4 x i32> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %11, ptr %1, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 7
  %9 = sext i32 %8 to i64
  br label %27

10:                                               ; preds = %27
  %11 = getelementptr inbounds ptr, ptr %1, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr ptr, ptr %11, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr ptr, ptr %11, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr ptr, ptr %11, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr ptr, ptr %11, i64 4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %11, i64 5
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr ptr, ptr %11, i64 6
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr ptr, ptr %11, i64 7
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %100

27:                                               ; preds = %4, %27
  %28 = phi i64 [ %7, %4 ], [ %98, %27 ]
  %29 = phi ptr [ %5, %4 ], [ %97, %27 ]
  %30 = getelementptr inbounds ptr, ptr %0, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = getelementptr inbounds i32, ptr %31, i64 %6
  %33 = getelementptr inbounds i32, ptr %32, i64 1
  %34 = load i32, ptr %32, align 4, !tbaa !39
  %35 = getelementptr inbounds i32, ptr %32, i64 2
  %36 = load i32, ptr %33, align 4, !tbaa !39
  %37 = getelementptr inbounds i32, ptr %32, i64 3
  %38 = load i32, ptr %35, align 4, !tbaa !39
  %39 = getelementptr inbounds i32, ptr %32, i64 4
  %40 = load i32, ptr %37, align 4, !tbaa !39
  %41 = getelementptr inbounds i32, ptr %32, i64 5
  %42 = load i32, ptr %39, align 4, !tbaa !39
  %43 = getelementptr inbounds i32, ptr %32, i64 6
  %44 = load i32, ptr %41, align 4, !tbaa !39
  %45 = getelementptr inbounds i32, ptr %32, i64 7
  %46 = load i32, ptr %43, align 4, !tbaa !39
  %47 = load i32, ptr %45, align 4, !tbaa !39
  %48 = add nsw i32 %47, %34
  %49 = add nsw i32 %46, %36
  %50 = add nsw i32 %44, %38
  %51 = add nsw i32 %42, %40
  %52 = add nsw i32 %48, %51
  %53 = add nsw i32 %49, %50
  %54 = sub nsw i32 %48, %51
  %55 = sub nsw i32 %49, %50
  %56 = sub nsw i32 %34, %47
  %57 = sub nsw i32 %36, %46
  %58 = sub nsw i32 %38, %44
  %59 = sub nsw i32 %40, %42
  %60 = ashr i32 %56, 1
  %61 = add i32 %57, %58
  %62 = add i32 %61, %56
  %63 = add i32 %62, %60
  %64 = ashr i32 %58, 1
  %65 = add i32 %58, %59
  %66 = add i32 %65, %64
  %67 = sub i32 %56, %66
  %68 = ashr i32 %57, 1
  %69 = add i32 %59, %56
  %70 = add i32 %57, %68
  %71 = sub i32 %69, %70
  %72 = sub nsw i32 %57, %58
  %73 = ashr i32 %59, 1
  %74 = add nsw i32 %73, %59
  %75 = add nsw i32 %74, %72
  %76 = add nsw i32 %52, %53
  %77 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %76, ptr %29, align 4, !tbaa !39
  %78 = ashr i32 %75, 2
  %79 = add nsw i32 %63, %78
  %80 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %79, ptr %77, align 4, !tbaa !39
  %81 = ashr i32 %55, 1
  %82 = add nsw i32 %54, %81
  %83 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %82, ptr %80, align 4, !tbaa !39
  %84 = ashr i32 %71, 2
  %85 = add nsw i32 %84, %67
  %86 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %85, ptr %83, align 4, !tbaa !39
  %87 = sub nsw i32 %52, %53
  %88 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %87, ptr %86, align 4, !tbaa !39
  %89 = ashr i32 %67, 2
  %90 = sub nsw i32 %71, %89
  %91 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %90, ptr %88, align 4, !tbaa !39
  %92 = ashr i32 %54, 1
  %93 = sub nsw i32 %92, %55
  %94 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %93, ptr %91, align 4, !tbaa !39
  %95 = ashr i32 %63, 2
  %96 = sub nsw i32 %95, %75
  %97 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %96, ptr %94, align 4, !tbaa !39
  %98 = add nsw i64 %28, 1
  %99 = icmp slt i64 %28, %9
  br i1 %99, label %27, label %10, !llvm.loop !52

100:                                              ; preds = %10, %100
  %101 = phi i64 [ 0, %10 ], [ %169, %100 ]
  %102 = getelementptr inbounds i32, ptr %5, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !39
  %104 = getelementptr inbounds i32, ptr %102, i64 8
  %105 = load i32, ptr %104, align 4, !tbaa !39
  %106 = getelementptr inbounds i32, ptr %102, i64 16
  %107 = load i32, ptr %106, align 4, !tbaa !39
  %108 = getelementptr inbounds i32, ptr %102, i64 24
  %109 = load i32, ptr %108, align 4, !tbaa !39
  %110 = getelementptr inbounds i32, ptr %102, i64 32
  %111 = load i32, ptr %110, align 4, !tbaa !39
  %112 = getelementptr inbounds i32, ptr %102, i64 40
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = getelementptr inbounds i32, ptr %102, i64 48
  %115 = load i32, ptr %114, align 4, !tbaa !39
  %116 = getelementptr inbounds i32, ptr %102, i64 56
  %117 = load i32, ptr %116, align 4, !tbaa !39
  %118 = add nsw i32 %117, %103
  %119 = add nsw i32 %115, %105
  %120 = add nsw i32 %113, %107
  %121 = add nsw i32 %111, %109
  %122 = add nsw i32 %118, %121
  %123 = add nsw i32 %119, %120
  %124 = sub nsw i32 %118, %121
  %125 = sub nsw i32 %119, %120
  %126 = sub nsw i32 %103, %117
  %127 = sub nsw i32 %105, %115
  %128 = sub nsw i32 %107, %113
  %129 = sub nsw i32 %109, %111
  %130 = ashr i32 %126, 1
  %131 = add i32 %127, %128
  %132 = add i32 %131, %126
  %133 = add i32 %132, %130
  %134 = ashr i32 %128, 1
  %135 = add i32 %128, %129
  %136 = add i32 %135, %134
  %137 = sub i32 %126, %136
  %138 = ashr i32 %127, 1
  %139 = add i32 %129, %126
  %140 = add i32 %127, %138
  %141 = sub i32 %139, %140
  %142 = sub nsw i32 %127, %128
  %143 = ashr i32 %129, 1
  %144 = add nsw i32 %143, %129
  %145 = add nsw i32 %144, %142
  %146 = add nsw i64 %101, %6
  %147 = add nsw i32 %122, %123
  %148 = getelementptr inbounds i32, ptr %12, i64 %146
  store i32 %147, ptr %148, align 4, !tbaa !39
  %149 = ashr i32 %145, 2
  %150 = add nsw i32 %133, %149
  %151 = getelementptr inbounds i32, ptr %14, i64 %146
  store i32 %150, ptr %151, align 4, !tbaa !39
  %152 = ashr i32 %125, 1
  %153 = add nsw i32 %124, %152
  %154 = getelementptr inbounds i32, ptr %16, i64 %146
  store i32 %153, ptr %154, align 4, !tbaa !39
  %155 = ashr i32 %141, 2
  %156 = add nsw i32 %155, %137
  %157 = getelementptr inbounds i32, ptr %18, i64 %146
  store i32 %156, ptr %157, align 4, !tbaa !39
  %158 = sub nsw i32 %122, %123
  %159 = getelementptr inbounds i32, ptr %20, i64 %146
  store i32 %158, ptr %159, align 4, !tbaa !39
  %160 = ashr i32 %137, 2
  %161 = sub nsw i32 %141, %160
  %162 = getelementptr inbounds i32, ptr %22, i64 %146
  store i32 %161, ptr %162, align 4, !tbaa !39
  %163 = ashr i32 %124, 1
  %164 = sub nsw i32 %163, %125
  %165 = getelementptr inbounds i32, ptr %24, i64 %146
  store i32 %164, ptr %165, align 4, !tbaa !39
  %166 = ashr i32 %133, 2
  %167 = sub nsw i32 %166, %145
  %168 = getelementptr inbounds i32, ptr %26, i64 %146
  store i32 %167, ptr %168, align 4, !tbaa !39
  %169 = add nuw nsw i64 %101, 1
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %100, !llvm.loop !53

171:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 7
  %9 = sext i32 %8 to i64
  br label %27

10:                                               ; preds = %27
  %11 = getelementptr inbounds ptr, ptr %1, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr ptr, ptr %11, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr ptr, ptr %11, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr ptr, ptr %11, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr ptr, ptr %11, i64 4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %11, i64 5
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr ptr, ptr %11, i64 6
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr ptr, ptr %11, i64 7
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %100

27:                                               ; preds = %4, %27
  %28 = phi i64 [ %7, %4 ], [ %98, %27 ]
  %29 = phi ptr [ %5, %4 ], [ %97, %27 ]
  %30 = getelementptr inbounds ptr, ptr %0, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = getelementptr inbounds i32, ptr %31, i64 %6
  %33 = getelementptr inbounds i32, ptr %32, i64 1
  %34 = load i32, ptr %32, align 4, !tbaa !39
  %35 = getelementptr inbounds i32, ptr %32, i64 2
  %36 = load i32, ptr %33, align 4, !tbaa !39
  %37 = getelementptr inbounds i32, ptr %32, i64 3
  %38 = load i32, ptr %35, align 4, !tbaa !39
  %39 = getelementptr inbounds i32, ptr %32, i64 4
  %40 = load i32, ptr %37, align 4, !tbaa !39
  %41 = getelementptr inbounds i32, ptr %32, i64 5
  %42 = load i32, ptr %39, align 4, !tbaa !39
  %43 = getelementptr inbounds i32, ptr %32, i64 6
  %44 = load i32, ptr %41, align 4, !tbaa !39
  %45 = getelementptr inbounds i32, ptr %32, i64 7
  %46 = load i32, ptr %43, align 4, !tbaa !39
  %47 = load i32, ptr %45, align 4, !tbaa !39
  %48 = add nsw i32 %42, %34
  %49 = sub nsw i32 %34, %42
  %50 = ashr i32 %38, 1
  %51 = sub nsw i32 %46, %50
  %52 = ashr i32 %46, 1
  %53 = add nsw i32 %52, %38
  %54 = add nsw i32 %53, %48
  %55 = sub nsw i32 %49, %51
  %56 = add nsw i32 %51, %49
  %57 = sub nsw i32 %48, %53
  %58 = ashr i32 %47, 1
  %59 = add i32 %40, %47
  %60 = add i32 %59, %58
  %61 = sub i32 %44, %60
  %62 = ashr i32 %40, 1
  %63 = add i32 %40, %62
  %64 = sub i32 %36, %63
  %65 = add i32 %64, %47
  %66 = ashr i32 %44, 1
  %67 = sub i32 %44, %36
  %68 = add i32 %67, %66
  %69 = add i32 %68, %47
  %70 = ashr i32 %36, 1
  %71 = add i32 %70, %36
  %72 = add i32 %71, %40
  %73 = add i32 %72, %44
  %74 = ashr i32 %73, 2
  %75 = add nsw i32 %61, %74
  %76 = ashr i32 %69, 2
  %77 = add nsw i32 %76, %65
  %78 = ashr i32 %65, 2
  %79 = sub nsw i32 %69, %78
  %80 = ashr i32 %61, 2
  %81 = sub nsw i32 %73, %80
  %82 = add nsw i32 %81, %54
  %83 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %82, ptr %29, align 4, !tbaa !39
  %84 = sub nsw i32 %55, %79
  %85 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %84, ptr %83, align 4, !tbaa !39
  %86 = add nsw i32 %77, %56
  %87 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %86, ptr %85, align 4, !tbaa !39
  %88 = add nsw i32 %75, %57
  %89 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %88, ptr %87, align 4, !tbaa !39
  %90 = sub nsw i32 %57, %75
  %91 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %90, ptr %89, align 4, !tbaa !39
  %92 = sub nsw i32 %56, %77
  %93 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %92, ptr %91, align 4, !tbaa !39
  %94 = add nsw i32 %79, %55
  %95 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %94, ptr %93, align 4, !tbaa !39
  %96 = sub nsw i32 %54, %81
  %97 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %96, ptr %95, align 4, !tbaa !39
  %98 = add nsw i64 %28, 1
  %99 = icmp slt i64 %28, %9
  br i1 %99, label %27, label %10, !llvm.loop !54

100:                                              ; preds = %10, %100
  %101 = phi i64 [ 0, %10 ], [ %169, %100 ]
  %102 = getelementptr inbounds i32, ptr %5, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !39
  %104 = getelementptr inbounds i32, ptr %102, i64 8
  %105 = load i32, ptr %104, align 4, !tbaa !39
  %106 = getelementptr inbounds i32, ptr %102, i64 16
  %107 = load i32, ptr %106, align 4, !tbaa !39
  %108 = getelementptr inbounds i32, ptr %102, i64 24
  %109 = load i32, ptr %108, align 4, !tbaa !39
  %110 = getelementptr inbounds i32, ptr %102, i64 32
  %111 = load i32, ptr %110, align 4, !tbaa !39
  %112 = getelementptr inbounds i32, ptr %102, i64 40
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = getelementptr inbounds i32, ptr %102, i64 48
  %115 = load i32, ptr %114, align 4, !tbaa !39
  %116 = getelementptr inbounds i32, ptr %102, i64 56
  %117 = load i32, ptr %116, align 4, !tbaa !39
  %118 = add nsw i32 %111, %103
  %119 = sub nsw i32 %103, %111
  %120 = ashr i32 %107, 1
  %121 = sub nsw i32 %115, %120
  %122 = ashr i32 %115, 1
  %123 = add nsw i32 %122, %107
  %124 = add nsw i32 %123, %118
  %125 = sub nsw i32 %119, %121
  %126 = add nsw i32 %121, %119
  %127 = sub nsw i32 %118, %123
  %128 = ashr i32 %117, 1
  %129 = add i32 %109, %117
  %130 = add i32 %129, %128
  %131 = sub i32 %113, %130
  %132 = ashr i32 %109, 1
  %133 = add i32 %109, %132
  %134 = sub i32 %105, %133
  %135 = add i32 %134, %117
  %136 = ashr i32 %113, 1
  %137 = sub i32 %113, %105
  %138 = add i32 %137, %136
  %139 = add i32 %138, %117
  %140 = ashr i32 %105, 1
  %141 = add i32 %140, %105
  %142 = add i32 %141, %109
  %143 = add i32 %142, %113
  %144 = ashr i32 %143, 2
  %145 = add nsw i32 %131, %144
  %146 = ashr i32 %131, 2
  %147 = sub nsw i32 %143, %146
  %148 = ashr i32 %139, 2
  %149 = add nsw i32 %148, %135
  %150 = ashr i32 %135, 2
  %151 = sub nsw i32 %139, %150
  %152 = add nsw i64 %101, %6
  %153 = add nsw i32 %147, %124
  %154 = getelementptr inbounds i32, ptr %12, i64 %152
  store i32 %153, ptr %154, align 4, !tbaa !39
  %155 = sub nsw i32 %125, %151
  %156 = getelementptr inbounds i32, ptr %14, i64 %152
  store i32 %155, ptr %156, align 4, !tbaa !39
  %157 = add nsw i32 %149, %126
  %158 = getelementptr inbounds i32, ptr %16, i64 %152
  store i32 %157, ptr %158, align 4, !tbaa !39
  %159 = add nsw i32 %145, %127
  %160 = getelementptr inbounds i32, ptr %18, i64 %152
  store i32 %159, ptr %160, align 4, !tbaa !39
  %161 = sub nsw i32 %127, %145
  %162 = getelementptr inbounds i32, ptr %20, i64 %152
  store i32 %161, ptr %162, align 4, !tbaa !39
  %163 = sub nsw i32 %126, %149
  %164 = getelementptr inbounds i32, ptr %22, i64 %152
  store i32 %163, ptr %164, align 4, !tbaa !39
  %165 = add nsw i32 %151, %125
  %166 = getelementptr inbounds i32, ptr %24, i64 %152
  store i32 %165, ptr %166, align 4, !tbaa !39
  %167 = sub nsw i32 %124, %147
  %168 = getelementptr inbounds i32, ptr %26, i64 %152
  store i32 %167, ptr %168, align 4, !tbaa !39
  %169 = add nuw nsw i64 %101, 1
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %100, !llvm.loop !55

171:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #4
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
