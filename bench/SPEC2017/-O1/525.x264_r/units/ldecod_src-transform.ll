; ModuleID = 'ldecod_src/transform.c'
source_filename = "ldecod_src/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 3
  %9 = sext i32 %8 to i64
  br label %21

10:                                               ; preds = %21
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr ptr, ptr %12, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr ptr, ptr %12, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr ptr, ptr %12, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = sext i32 %3 to i64
  br label %50

21:                                               ; preds = %4, %21
  %22 = phi i64 [ %7, %4 ], [ %48, %21 ]
  %23 = phi ptr [ %5, %4 ], [ %47, %21 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds i32, ptr %25, i64 %6
  %27 = getelementptr inbounds i32, ptr %26, i64 1
  %28 = load i32, ptr %26, align 4, !tbaa !38
  %29 = getelementptr inbounds i32, ptr %26, i64 2
  %30 = load i32, ptr %27, align 4, !tbaa !38
  %31 = getelementptr inbounds i32, ptr %26, i64 3
  %32 = load i32, ptr %29, align 4, !tbaa !38
  %33 = load i32, ptr %31, align 4, !tbaa !38
  %34 = add nsw i32 %33, %28
  %35 = add nsw i32 %32, %30
  %36 = sub nsw i32 %30, %32
  %37 = sub nsw i32 %28, %33
  %38 = add nsw i32 %34, %35
  %39 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %38, ptr %23, align 4, !tbaa !38
  %40 = shl i32 %37, 1
  %41 = add nsw i32 %40, %36
  %42 = getelementptr inbounds i32, ptr %23, i64 2
  store i32 %41, ptr %39, align 4, !tbaa !38
  %43 = sub nsw i32 %34, %35
  %44 = getelementptr inbounds i32, ptr %23, i64 3
  store i32 %43, ptr %42, align 4, !tbaa !38
  %45 = shl i32 %36, 1
  %46 = sub nsw i32 %37, %45
  %47 = getelementptr inbounds i32, ptr %23, i64 4
  store i32 %46, ptr %44, align 4, !tbaa !38
  %48 = add nsw i64 %22, 1
  %49 = icmp slt i64 %22, %9
  br i1 %49, label %21, label %10, !llvm.loop !40

50:                                               ; preds = %10, %50
  %51 = phi i64 [ 0, %10 ], [ %75, %50 ]
  %52 = getelementptr inbounds i32, ptr %5, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = getelementptr inbounds i32, ptr %52, i64 4
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = getelementptr inbounds i32, ptr %52, i64 8
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = getelementptr inbounds i32, ptr %52, i64 12
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = add nsw i32 %59, %53
  %61 = add nsw i32 %57, %55
  %62 = sub nsw i32 %55, %57
  %63 = sub nsw i32 %53, %59
  %64 = add nsw i64 %51, %20
  %65 = add nsw i32 %60, %61
  %66 = getelementptr inbounds i32, ptr %13, i64 %64
  store i32 %65, ptr %66, align 4, !tbaa !38
  %67 = shl i32 %63, 1
  %68 = add nsw i32 %67, %62
  %69 = getelementptr inbounds i32, ptr %15, i64 %64
  store i32 %68, ptr %69, align 4, !tbaa !38
  %70 = sub nsw i32 %60, %61
  %71 = getelementptr inbounds i32, ptr %17, i64 %64
  store i32 %70, ptr %71, align 4, !tbaa !38
  %72 = shl i32 %62, 1
  %73 = sub nsw i32 %63, %72
  %74 = getelementptr inbounds i32, ptr %19, i64 %64
  store i32 %73, ptr %74, align 4, !tbaa !38
  %75 = add nuw nsw i64 %51, 1
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %50, !llvm.loop !43

77:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 3
  %9 = sext i32 %8 to i64
  br label %21

10:                                               ; preds = %21
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr ptr, ptr %12, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr ptr, ptr %12, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr ptr, ptr %12, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = sext i32 %3 to i64
  br label %50

21:                                               ; preds = %4, %21
  %22 = phi i64 [ %7, %4 ], [ %48, %21 ]
  %23 = phi ptr [ %5, %4 ], [ %47, %21 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds i32, ptr %25, i64 %6
  %27 = getelementptr inbounds i32, ptr %26, i64 1
  %28 = load i32, ptr %26, align 4, !tbaa !38
  %29 = getelementptr inbounds i32, ptr %26, i64 2
  %30 = load i32, ptr %27, align 4, !tbaa !38
  %31 = getelementptr inbounds i32, ptr %26, i64 3
  %32 = load i32, ptr %29, align 4, !tbaa !38
  %33 = load i32, ptr %31, align 4, !tbaa !38
  %34 = add nsw i32 %32, %28
  %35 = sub nsw i32 %28, %32
  %36 = ashr i32 %30, 1
  %37 = sub nsw i32 %36, %33
  %38 = ashr i32 %33, 1
  %39 = add nsw i32 %38, %30
  %40 = add nsw i32 %39, %34
  %41 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %40, ptr %23, align 4, !tbaa !38
  %42 = add nsw i32 %37, %35
  %43 = getelementptr inbounds i32, ptr %23, i64 2
  store i32 %42, ptr %41, align 4, !tbaa !38
  %44 = sub nsw i32 %35, %37
  %45 = getelementptr inbounds i32, ptr %23, i64 3
  store i32 %44, ptr %43, align 4, !tbaa !38
  %46 = sub nsw i32 %34, %39
  %47 = getelementptr inbounds i32, ptr %23, i64 4
  store i32 %46, ptr %45, align 4, !tbaa !38
  %48 = add nsw i64 %22, 1
  %49 = icmp slt i64 %22, %9
  br i1 %49, label %21, label %10, !llvm.loop !44

50:                                               ; preds = %10, %50
  %51 = phi i64 [ 0, %10 ], [ %75, %50 ]
  %52 = getelementptr inbounds i32, ptr %5, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = getelementptr inbounds i32, ptr %52, i64 4
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = getelementptr inbounds i32, ptr %52, i64 8
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = getelementptr inbounds i32, ptr %52, i64 12
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = add nsw i32 %57, %53
  %61 = sub nsw i32 %53, %57
  %62 = ashr i32 %55, 1
  %63 = sub nsw i32 %62, %59
  %64 = ashr i32 %59, 1
  %65 = add nsw i32 %64, %55
  %66 = add nsw i64 %51, %20
  %67 = add nsw i32 %65, %60
  %68 = getelementptr inbounds i32, ptr %13, i64 %66
  store i32 %67, ptr %68, align 4, !tbaa !38
  %69 = add nsw i32 %63, %61
  %70 = getelementptr inbounds i32, ptr %15, i64 %66
  store i32 %69, ptr %70, align 4, !tbaa !38
  %71 = sub nsw i32 %61, %63
  %72 = getelementptr inbounds i32, ptr %17, i64 %66
  store i32 %71, ptr %72, align 4, !tbaa !38
  %73 = sub nsw i32 %60, %65
  %74 = getelementptr inbounds i32, ptr %19, i64 %66
  store i32 %73, ptr %74, align 4, !tbaa !38
  %75 = add nuw nsw i64 %51, 1
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %50, !llvm.loop !45

77:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  br label %12

4:                                                ; preds = %12
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %1, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %38

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 0, %2 ], [ %36, %12 ]
  %14 = phi ptr [ %3, %2 ], [ %35, %12 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds i32, ptr %16, i64 1
  %18 = load i32, ptr %16, align 4, !tbaa !38
  %19 = getelementptr inbounds i32, ptr %16, i64 2
  %20 = load i32, ptr %17, align 4, !tbaa !38
  %21 = getelementptr inbounds i32, ptr %16, i64 3
  %22 = load i32, ptr %19, align 4, !tbaa !38
  %23 = load i32, ptr %21, align 4, !tbaa !38
  %24 = add nsw i32 %23, %18
  %25 = add nsw i32 %22, %20
  %26 = sub nsw i32 %20, %22
  %27 = sub nsw i32 %18, %23
  %28 = add nsw i32 %24, %25
  %29 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %28, ptr %14, align 4, !tbaa !38
  %30 = add nsw i32 %27, %26
  %31 = getelementptr inbounds i32, ptr %14, i64 2
  store i32 %30, ptr %29, align 4, !tbaa !38
  %32 = sub nsw i32 %24, %25
  %33 = getelementptr inbounds i32, ptr %14, i64 3
  store i32 %32, ptr %31, align 4, !tbaa !38
  %34 = sub nsw i32 %27, %26
  %35 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %34, ptr %33, align 4, !tbaa !38
  %36 = add nuw nsw i64 %13, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %4, label %12, !llvm.loop !46

38:                                               ; preds = %4, %38
  %39 = phi i64 [ 0, %4 ], [ %64, %38 ]
  %40 = getelementptr inbounds i32, ptr %3, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !38
  %42 = getelementptr inbounds i32, ptr %40, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !38
  %44 = getelementptr inbounds i32, ptr %40, i64 8
  %45 = load i32, ptr %44, align 4, !tbaa !38
  %46 = getelementptr inbounds i32, ptr %40, i64 12
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = add nsw i32 %47, %41
  %49 = add nsw i32 %45, %43
  %50 = sub nsw i32 %43, %45
  %51 = sub nsw i32 %41, %47
  %52 = add nsw i32 %48, %49
  %53 = ashr i32 %52, 1
  %54 = getelementptr inbounds i32, ptr %5, i64 %39
  store i32 %53, ptr %54, align 4, !tbaa !38
  %55 = add nsw i32 %51, %50
  %56 = ashr i32 %55, 1
  %57 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %56, ptr %57, align 4, !tbaa !38
  %58 = sub nsw i32 %48, %49
  %59 = ashr i32 %58, 1
  %60 = getelementptr inbounds i32, ptr %9, i64 %39
  store i32 %59, ptr %60, align 4, !tbaa !38
  %61 = sub nsw i32 %51, %50
  %62 = ashr i32 %61, 1
  %63 = getelementptr inbounds i32, ptr %11, i64 %39
  store i32 %62, ptr %63, align 4, !tbaa !38
  %64 = add nuw nsw i64 %39, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %38, !llvm.loop !47

66:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  br label %12

4:                                                ; preds = %12
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %1, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %38

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 0, %2 ], [ %36, %12 ]
  %14 = phi ptr [ %3, %2 ], [ %35, %12 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds i32, ptr %16, i64 1
  %18 = load i32, ptr %16, align 4, !tbaa !38
  %19 = getelementptr inbounds i32, ptr %16, i64 2
  %20 = load i32, ptr %17, align 4, !tbaa !38
  %21 = getelementptr inbounds i32, ptr %16, i64 3
  %22 = load i32, ptr %19, align 4, !tbaa !38
  %23 = load i32, ptr %21, align 4, !tbaa !38
  %24 = add nsw i32 %22, %18
  %25 = sub nsw i32 %18, %22
  %26 = sub nsw i32 %20, %23
  %27 = add nsw i32 %23, %20
  %28 = add nsw i32 %27, %24
  %29 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %28, ptr %14, align 4, !tbaa !38
  %30 = add nsw i32 %26, %25
  %31 = getelementptr inbounds i32, ptr %14, i64 2
  store i32 %30, ptr %29, align 4, !tbaa !38
  %32 = sub nsw i32 %25, %26
  %33 = getelementptr inbounds i32, ptr %14, i64 3
  store i32 %32, ptr %31, align 4, !tbaa !38
  %34 = sub nsw i32 %24, %27
  %35 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %34, ptr %33, align 4, !tbaa !38
  %36 = add nuw nsw i64 %13, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %4, label %12, !llvm.loop !48

38:                                               ; preds = %4, %38
  %39 = phi i64 [ 0, %4 ], [ %60, %38 ]
  %40 = getelementptr inbounds i32, ptr %3, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !38
  %42 = getelementptr inbounds i32, ptr %40, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !38
  %44 = getelementptr inbounds i32, ptr %40, i64 8
  %45 = load i32, ptr %44, align 4, !tbaa !38
  %46 = getelementptr inbounds i32, ptr %40, i64 12
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = add nsw i32 %45, %41
  %49 = sub nsw i32 %41, %45
  %50 = sub nsw i32 %43, %47
  %51 = add nsw i32 %47, %43
  %52 = add nsw i32 %51, %48
  %53 = getelementptr inbounds i32, ptr %5, i64 %39
  store i32 %52, ptr %53, align 4, !tbaa !38
  %54 = add nsw i32 %50, %49
  %55 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %54, ptr %55, align 4, !tbaa !38
  %56 = sub nsw i32 %49, %50
  %57 = getelementptr inbounds i32, ptr %9, i64 %39
  store i32 %56, ptr %57, align 4, !tbaa !38
  %58 = sub nsw i32 %48, %51
  %59 = getelementptr inbounds i32, ptr %11, i64 %39
  store i32 %58, ptr %59, align 4, !tbaa !38
  %60 = add nuw nsw i64 %39, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %38, !llvm.loop !49

62:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = add nsw i32 %8, %5
  %10 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %9, ptr %3, align 16, !tbaa !38
  %11 = getelementptr inbounds i32, ptr %4, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !38
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %15, ptr %10, align 4, !tbaa !38
  %17 = getelementptr inbounds i32, ptr %4, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !38
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %21, ptr %16, align 8, !tbaa !38
  %23 = getelementptr inbounds i32, ptr %4, i64 3
  %24 = load i32, ptr %23, align 4, !tbaa !38
  %25 = getelementptr inbounds i32, ptr %7, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds i32, ptr %3, i64 4
  store i32 %27, ptr %22, align 4, !tbaa !38
  %29 = sub nsw i32 %5, %8
  %30 = getelementptr inbounds i32, ptr %3, i64 5
  store i32 %29, ptr %28, align 16, !tbaa !38
  %31 = sub nsw i32 %12, %14
  %32 = getelementptr inbounds i32, ptr %3, i64 6
  store i32 %31, ptr %30, align 4, !tbaa !38
  %33 = sub nsw i32 %18, %20
  %34 = getelementptr inbounds i32, ptr %3, i64 7
  store i32 %33, ptr %32, align 8, !tbaa !38
  %35 = sub nsw i32 %24, %26
  store i32 %35, ptr %34, align 4, !tbaa !38
  br label %36

36:                                               ; preds = %2, %36
  %37 = phi i64 [ 0, %2 ], [ %60, %36 ]
  %38 = phi ptr [ %3, %2 ], [ %45, %36 ]
  %39 = getelementptr inbounds i32, ptr %38, i64 1
  %40 = load i32, ptr %38, align 4, !tbaa !38
  %41 = getelementptr inbounds i32, ptr %38, i64 2
  %42 = load i32, ptr %39, align 4, !tbaa !38
  %43 = getelementptr inbounds i32, ptr %38, i64 3
  %44 = load i32, ptr %41, align 4, !tbaa !38
  %45 = getelementptr inbounds i32, ptr %38, i64 4
  %46 = load i32, ptr %43, align 4, !tbaa !38
  %47 = add nsw i32 %46, %40
  %48 = add nsw i32 %44, %42
  %49 = sub nsw i32 %42, %44
  %50 = sub nsw i32 %40, %46
  %51 = add nsw i32 %47, %48
  %52 = getelementptr inbounds ptr, ptr %1, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  store i32 %51, ptr %53, align 4, !tbaa !38
  %54 = add nsw i32 %50, %49
  %55 = getelementptr inbounds i32, ptr %53, i64 1
  store i32 %54, ptr %55, align 4, !tbaa !38
  %56 = sub nsw i32 %47, %48
  %57 = getelementptr inbounds i32, ptr %53, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !38
  %58 = sub nsw i32 %50, %49
  %59 = getelementptr inbounds i32, ptr %53, i64 3
  store i32 %58, ptr %59, align 4, !tbaa !38
  %60 = add nuw nsw i64 %37, 1
  %61 = icmp eq i64 %37, 0
  br i1 %61, label %36, label %62, !llvm.loop !50

62:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = add nsw i32 %8, %5
  %10 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %9, ptr %3, align 16, !tbaa !38
  %11 = getelementptr inbounds i32, ptr %4, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !38
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !38
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %15, ptr %10, align 4, !tbaa !38
  %17 = getelementptr inbounds i32, ptr %4, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !38
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %21, ptr %16, align 8, !tbaa !38
  %23 = getelementptr inbounds i32, ptr %4, i64 3
  %24 = load i32, ptr %23, align 4, !tbaa !38
  %25 = getelementptr inbounds i32, ptr %7, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds i32, ptr %3, i64 4
  store i32 %27, ptr %22, align 4, !tbaa !38
  %29 = sub nsw i32 %5, %8
  %30 = getelementptr inbounds i32, ptr %3, i64 5
  store i32 %29, ptr %28, align 16, !tbaa !38
  %31 = sub nsw i32 %12, %14
  %32 = getelementptr inbounds i32, ptr %3, i64 6
  store i32 %31, ptr %30, align 4, !tbaa !38
  %33 = sub nsw i32 %18, %20
  %34 = getelementptr inbounds i32, ptr %3, i64 7
  store i32 %33, ptr %32, align 8, !tbaa !38
  %35 = sub nsw i32 %24, %26
  store i32 %35, ptr %34, align 4, !tbaa !38
  %36 = load ptr, ptr %1, align 8, !tbaa !34
  %37 = getelementptr inbounds ptr, ptr %1, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds ptr, ptr %1, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds ptr, ptr %1, i64 3
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  br label %43

43:                                               ; preds = %2, %43
  %44 = phi i64 [ 0, %2 ], [ %66, %43 ]
  %45 = phi ptr [ %3, %2 ], [ %52, %43 ]
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  %47 = load i32, ptr %45, align 4, !tbaa !38
  %48 = getelementptr inbounds i32, ptr %45, i64 2
  %49 = load i32, ptr %46, align 4, !tbaa !38
  %50 = getelementptr inbounds i32, ptr %45, i64 3
  %51 = load i32, ptr %48, align 4, !tbaa !38
  %52 = getelementptr inbounds i32, ptr %45, i64 4
  %53 = load i32, ptr %50, align 4, !tbaa !38
  %54 = add nsw i32 %51, %47
  %55 = sub nsw i32 %47, %51
  %56 = sub nsw i32 %49, %53
  %57 = add nsw i32 %53, %49
  %58 = add nsw i32 %57, %54
  %59 = getelementptr inbounds i32, ptr %36, i64 %44
  store i32 %58, ptr %59, align 4, !tbaa !38
  %60 = add nsw i32 %56, %55
  %61 = getelementptr inbounds i32, ptr %38, i64 %44
  store i32 %60, ptr %61, align 4, !tbaa !38
  %62 = sub nsw i32 %55, %56
  %63 = getelementptr inbounds i32, ptr %40, i64 %44
  store i32 %62, ptr %63, align 4, !tbaa !38
  %64 = sub nsw i32 %54, %57
  %65 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 %64, ptr %65, align 4, !tbaa !38
  %66 = add nuw nsw i64 %44, 1
  %67 = icmp eq i64 %44, 0
  br i1 %67, label %43, label %68, !llvm.loop !51

68:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = getelementptr inbounds i32, ptr %3, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = add nsw i32 %6, %4
  %8 = sub nsw i32 %4, %6
  %9 = getelementptr inbounds ptr, ptr %0, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = getelementptr inbounds i32, ptr %10, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = add nsw i32 %14, %7
  store i32 %16, ptr %1, align 4, !tbaa !38
  %17 = add nsw i32 %15, %8
  %18 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !38
  %19 = sub nsw i32 %7, %14
  %20 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %19, ptr %20, align 4, !tbaa !38
  %21 = sub nsw i32 %8, %15
  %22 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %21, ptr %22, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ihadamard2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !38
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = add nsw i32 %5, %3
  %7 = sub nsw i32 %3, %5
  %8 = getelementptr inbounds i32, ptr %0, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = getelementptr inbounds i32, ptr %0, i64 3
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = add nsw i32 %11, %9
  %13 = sub nsw i32 %9, %11
  %14 = add nsw i32 %12, %6
  store i32 %14, ptr %1, align 4, !tbaa !38
  %15 = add nsw i32 %13, %7
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !38
  %17 = sub nsw i32 %6, %12
  %18 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %17, ptr %18, align 4, !tbaa !38
  %19 = sub nsw i32 %7, %13
  %20 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %19, ptr %20, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 7
  %9 = sext i32 %8 to i64
  br label %29

10:                                               ; preds = %29
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr ptr, ptr %12, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr ptr, ptr %12, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr ptr, ptr %12, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr ptr, ptr %12, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %12, i64 5
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %12, i64 6
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %12, i64 7
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = sext i32 %3 to i64
  br label %102

29:                                               ; preds = %4, %29
  %30 = phi i64 [ %7, %4 ], [ %100, %29 ]
  %31 = phi ptr [ %5, %4 ], [ %99, %29 ]
  %32 = getelementptr inbounds ptr, ptr %0, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds i32, ptr %33, i64 %6
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  %36 = load i32, ptr %34, align 4, !tbaa !38
  %37 = getelementptr inbounds i32, ptr %34, i64 2
  %38 = load i32, ptr %35, align 4, !tbaa !38
  %39 = getelementptr inbounds i32, ptr %34, i64 3
  %40 = load i32, ptr %37, align 4, !tbaa !38
  %41 = getelementptr inbounds i32, ptr %34, i64 4
  %42 = load i32, ptr %39, align 4, !tbaa !38
  %43 = getelementptr inbounds i32, ptr %34, i64 5
  %44 = load i32, ptr %41, align 4, !tbaa !38
  %45 = getelementptr inbounds i32, ptr %34, i64 6
  %46 = load i32, ptr %43, align 4, !tbaa !38
  %47 = getelementptr inbounds i32, ptr %34, i64 7
  %48 = load i32, ptr %45, align 4, !tbaa !38
  %49 = load i32, ptr %47, align 4, !tbaa !38
  %50 = add nsw i32 %49, %36
  %51 = add nsw i32 %48, %38
  %52 = add nsw i32 %46, %40
  %53 = add nsw i32 %44, %42
  %54 = add nsw i32 %50, %53
  %55 = add nsw i32 %51, %52
  %56 = sub nsw i32 %50, %53
  %57 = sub nsw i32 %51, %52
  %58 = sub nsw i32 %36, %49
  %59 = sub nsw i32 %38, %48
  %60 = sub nsw i32 %40, %46
  %61 = sub nsw i32 %42, %44
  %62 = ashr i32 %58, 1
  %63 = add i32 %59, %60
  %64 = add i32 %63, %58
  %65 = add i32 %64, %62
  %66 = ashr i32 %60, 1
  %67 = add i32 %60, %61
  %68 = add i32 %67, %66
  %69 = sub i32 %58, %68
  %70 = ashr i32 %59, 1
  %71 = add i32 %61, %58
  %72 = add i32 %59, %70
  %73 = sub i32 %71, %72
  %74 = sub nsw i32 %59, %60
  %75 = ashr i32 %61, 1
  %76 = add nsw i32 %75, %61
  %77 = add nsw i32 %76, %74
  %78 = add nsw i32 %54, %55
  %79 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %78, ptr %31, align 4, !tbaa !38
  %80 = ashr i32 %77, 2
  %81 = add nsw i32 %65, %80
  %82 = getelementptr inbounds i32, ptr %31, i64 2
  store i32 %81, ptr %79, align 4, !tbaa !38
  %83 = ashr i32 %57, 1
  %84 = add nsw i32 %56, %83
  %85 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %84, ptr %82, align 4, !tbaa !38
  %86 = ashr i32 %73, 2
  %87 = add nsw i32 %86, %69
  %88 = getelementptr inbounds i32, ptr %31, i64 4
  store i32 %87, ptr %85, align 4, !tbaa !38
  %89 = sub nsw i32 %54, %55
  %90 = getelementptr inbounds i32, ptr %31, i64 5
  store i32 %89, ptr %88, align 4, !tbaa !38
  %91 = ashr i32 %69, 2
  %92 = sub nsw i32 %73, %91
  %93 = getelementptr inbounds i32, ptr %31, i64 6
  store i32 %92, ptr %90, align 4, !tbaa !38
  %94 = ashr i32 %56, 1
  %95 = sub nsw i32 %94, %57
  %96 = getelementptr inbounds i32, ptr %31, i64 7
  store i32 %95, ptr %93, align 4, !tbaa !38
  %97 = ashr i32 %65, 2
  %98 = sub nsw i32 %97, %77
  %99 = getelementptr inbounds i32, ptr %31, i64 8
  store i32 %98, ptr %96, align 4, !tbaa !38
  %100 = add nsw i64 %30, 1
  %101 = icmp slt i64 %30, %9
  br i1 %101, label %29, label %10, !llvm.loop !52

102:                                              ; preds = %10, %102
  %103 = phi i64 [ 0, %10 ], [ %171, %102 ]
  %104 = getelementptr inbounds i32, ptr %5, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !38
  %106 = getelementptr inbounds i32, ptr %104, i64 8
  %107 = load i32, ptr %106, align 4, !tbaa !38
  %108 = getelementptr inbounds i32, ptr %104, i64 16
  %109 = load i32, ptr %108, align 4, !tbaa !38
  %110 = getelementptr inbounds i32, ptr %104, i64 24
  %111 = load i32, ptr %110, align 4, !tbaa !38
  %112 = getelementptr inbounds i32, ptr %104, i64 32
  %113 = load i32, ptr %112, align 4, !tbaa !38
  %114 = getelementptr inbounds i32, ptr %104, i64 40
  %115 = load i32, ptr %114, align 4, !tbaa !38
  %116 = getelementptr inbounds i32, ptr %104, i64 48
  %117 = load i32, ptr %116, align 4, !tbaa !38
  %118 = getelementptr inbounds i32, ptr %104, i64 56
  %119 = load i32, ptr %118, align 4, !tbaa !38
  %120 = add nsw i32 %119, %105
  %121 = add nsw i32 %117, %107
  %122 = add nsw i32 %115, %109
  %123 = add nsw i32 %113, %111
  %124 = add nsw i32 %120, %123
  %125 = add nsw i32 %121, %122
  %126 = sub nsw i32 %120, %123
  %127 = sub nsw i32 %121, %122
  %128 = sub nsw i32 %105, %119
  %129 = sub nsw i32 %107, %117
  %130 = sub nsw i32 %109, %115
  %131 = sub nsw i32 %111, %113
  %132 = ashr i32 %128, 1
  %133 = add i32 %129, %130
  %134 = add i32 %133, %128
  %135 = add i32 %134, %132
  %136 = ashr i32 %130, 1
  %137 = add i32 %130, %131
  %138 = add i32 %137, %136
  %139 = sub i32 %128, %138
  %140 = ashr i32 %129, 1
  %141 = add i32 %131, %128
  %142 = add i32 %129, %140
  %143 = sub i32 %141, %142
  %144 = sub nsw i32 %129, %130
  %145 = ashr i32 %131, 1
  %146 = add nsw i32 %145, %131
  %147 = add nsw i32 %146, %144
  %148 = add nsw i64 %103, %28
  %149 = add nsw i32 %124, %125
  %150 = getelementptr inbounds i32, ptr %13, i64 %148
  store i32 %149, ptr %150, align 4, !tbaa !38
  %151 = ashr i32 %147, 2
  %152 = add nsw i32 %135, %151
  %153 = getelementptr inbounds i32, ptr %15, i64 %148
  store i32 %152, ptr %153, align 4, !tbaa !38
  %154 = ashr i32 %127, 1
  %155 = add nsw i32 %126, %154
  %156 = getelementptr inbounds i32, ptr %17, i64 %148
  store i32 %155, ptr %156, align 4, !tbaa !38
  %157 = ashr i32 %143, 2
  %158 = add nsw i32 %157, %139
  %159 = getelementptr inbounds i32, ptr %19, i64 %148
  store i32 %158, ptr %159, align 4, !tbaa !38
  %160 = sub nsw i32 %124, %125
  %161 = getelementptr inbounds i32, ptr %21, i64 %148
  store i32 %160, ptr %161, align 4, !tbaa !38
  %162 = ashr i32 %139, 2
  %163 = sub nsw i32 %143, %162
  %164 = getelementptr inbounds i32, ptr %23, i64 %148
  store i32 %163, ptr %164, align 4, !tbaa !38
  %165 = ashr i32 %126, 1
  %166 = sub nsw i32 %165, %127
  %167 = getelementptr inbounds i32, ptr %25, i64 %148
  store i32 %166, ptr %167, align 4, !tbaa !38
  %168 = ashr i32 %135, 2
  %169 = sub nsw i32 %168, %147
  %170 = getelementptr inbounds i32, ptr %27, i64 %148
  store i32 %169, ptr %170, align 4, !tbaa !38
  %171 = add nuw nsw i64 %103, 1
  %172 = icmp eq i64 %171, 8
  br i1 %172, label %173, label %102, !llvm.loop !53

173:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #4
  %6 = sext i32 %3 to i64
  %7 = sext i32 %2 to i64
  %8 = add nsw i32 %2, 7
  %9 = sext i32 %8 to i64
  br label %29

10:                                               ; preds = %29
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr ptr, ptr %12, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr ptr, ptr %12, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr ptr, ptr %12, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr ptr, ptr %12, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %12, i64 5
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %12, i64 6
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %12, i64 7
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = sext i32 %3 to i64
  br label %102

29:                                               ; preds = %4, %29
  %30 = phi i64 [ %7, %4 ], [ %100, %29 ]
  %31 = phi ptr [ %5, %4 ], [ %99, %29 ]
  %32 = getelementptr inbounds ptr, ptr %0, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds i32, ptr %33, i64 %6
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  %36 = load i32, ptr %34, align 4, !tbaa !38
  %37 = getelementptr inbounds i32, ptr %34, i64 2
  %38 = load i32, ptr %35, align 4, !tbaa !38
  %39 = getelementptr inbounds i32, ptr %34, i64 3
  %40 = load i32, ptr %37, align 4, !tbaa !38
  %41 = getelementptr inbounds i32, ptr %34, i64 4
  %42 = load i32, ptr %39, align 4, !tbaa !38
  %43 = getelementptr inbounds i32, ptr %34, i64 5
  %44 = load i32, ptr %41, align 4, !tbaa !38
  %45 = getelementptr inbounds i32, ptr %34, i64 6
  %46 = load i32, ptr %43, align 4, !tbaa !38
  %47 = getelementptr inbounds i32, ptr %34, i64 7
  %48 = load i32, ptr %45, align 4, !tbaa !38
  %49 = load i32, ptr %47, align 4, !tbaa !38
  %50 = add nsw i32 %44, %36
  %51 = sub nsw i32 %36, %44
  %52 = ashr i32 %40, 1
  %53 = sub nsw i32 %48, %52
  %54 = ashr i32 %48, 1
  %55 = add nsw i32 %54, %40
  %56 = add nsw i32 %55, %50
  %57 = sub nsw i32 %51, %53
  %58 = add nsw i32 %53, %51
  %59 = sub nsw i32 %50, %55
  %60 = ashr i32 %49, 1
  %61 = add i32 %42, %49
  %62 = add i32 %61, %60
  %63 = sub i32 %46, %62
  %64 = ashr i32 %42, 1
  %65 = add i32 %42, %64
  %66 = sub i32 %38, %65
  %67 = add i32 %66, %49
  %68 = ashr i32 %46, 1
  %69 = sub i32 %46, %38
  %70 = add i32 %69, %68
  %71 = add i32 %70, %49
  %72 = ashr i32 %38, 1
  %73 = add i32 %72, %38
  %74 = add i32 %73, %42
  %75 = add i32 %74, %46
  %76 = ashr i32 %75, 2
  %77 = add nsw i32 %63, %76
  %78 = ashr i32 %71, 2
  %79 = add nsw i32 %78, %67
  %80 = ashr i32 %67, 2
  %81 = sub nsw i32 %71, %80
  %82 = ashr i32 %63, 2
  %83 = sub nsw i32 %75, %82
  %84 = add nsw i32 %83, %56
  %85 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %84, ptr %31, align 4, !tbaa !38
  %86 = sub nsw i32 %57, %81
  %87 = getelementptr inbounds i32, ptr %31, i64 2
  store i32 %86, ptr %85, align 4, !tbaa !38
  %88 = add nsw i32 %79, %58
  %89 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %88, ptr %87, align 4, !tbaa !38
  %90 = add nsw i32 %77, %59
  %91 = getelementptr inbounds i32, ptr %31, i64 4
  store i32 %90, ptr %89, align 4, !tbaa !38
  %92 = sub nsw i32 %59, %77
  %93 = getelementptr inbounds i32, ptr %31, i64 5
  store i32 %92, ptr %91, align 4, !tbaa !38
  %94 = sub nsw i32 %58, %79
  %95 = getelementptr inbounds i32, ptr %31, i64 6
  store i32 %94, ptr %93, align 4, !tbaa !38
  %96 = add nsw i32 %81, %57
  %97 = getelementptr inbounds i32, ptr %31, i64 7
  store i32 %96, ptr %95, align 4, !tbaa !38
  %98 = sub nsw i32 %56, %83
  %99 = getelementptr inbounds i32, ptr %31, i64 8
  store i32 %98, ptr %97, align 4, !tbaa !38
  %100 = add nsw i64 %30, 1
  %101 = icmp slt i64 %30, %9
  br i1 %101, label %29, label %10, !llvm.loop !54

102:                                              ; preds = %10, %102
  %103 = phi i64 [ 0, %10 ], [ %171, %102 ]
  %104 = getelementptr inbounds i32, ptr %5, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !38
  %106 = getelementptr inbounds i32, ptr %104, i64 8
  %107 = load i32, ptr %106, align 4, !tbaa !38
  %108 = getelementptr inbounds i32, ptr %104, i64 16
  %109 = load i32, ptr %108, align 4, !tbaa !38
  %110 = getelementptr inbounds i32, ptr %104, i64 24
  %111 = load i32, ptr %110, align 4, !tbaa !38
  %112 = getelementptr inbounds i32, ptr %104, i64 32
  %113 = load i32, ptr %112, align 4, !tbaa !38
  %114 = getelementptr inbounds i32, ptr %104, i64 40
  %115 = load i32, ptr %114, align 4, !tbaa !38
  %116 = getelementptr inbounds i32, ptr %104, i64 48
  %117 = load i32, ptr %116, align 4, !tbaa !38
  %118 = getelementptr inbounds i32, ptr %104, i64 56
  %119 = load i32, ptr %118, align 4, !tbaa !38
  %120 = add nsw i32 %113, %105
  %121 = sub nsw i32 %105, %113
  %122 = ashr i32 %109, 1
  %123 = sub nsw i32 %117, %122
  %124 = ashr i32 %117, 1
  %125 = add nsw i32 %124, %109
  %126 = add nsw i32 %125, %120
  %127 = sub nsw i32 %121, %123
  %128 = add nsw i32 %123, %121
  %129 = sub nsw i32 %120, %125
  %130 = ashr i32 %119, 1
  %131 = add i32 %111, %119
  %132 = add i32 %131, %130
  %133 = sub i32 %115, %132
  %134 = ashr i32 %111, 1
  %135 = add i32 %111, %134
  %136 = sub i32 %107, %135
  %137 = add i32 %136, %119
  %138 = ashr i32 %115, 1
  %139 = sub i32 %115, %107
  %140 = add i32 %139, %138
  %141 = add i32 %140, %119
  %142 = ashr i32 %107, 1
  %143 = add i32 %142, %107
  %144 = add i32 %143, %111
  %145 = add i32 %144, %115
  %146 = ashr i32 %145, 2
  %147 = add nsw i32 %133, %146
  %148 = ashr i32 %133, 2
  %149 = sub nsw i32 %145, %148
  %150 = ashr i32 %141, 2
  %151 = add nsw i32 %150, %137
  %152 = ashr i32 %137, 2
  %153 = sub nsw i32 %141, %152
  %154 = add nsw i64 %103, %28
  %155 = add nsw i32 %149, %126
  %156 = getelementptr inbounds i32, ptr %13, i64 %154
  store i32 %155, ptr %156, align 4, !tbaa !38
  %157 = sub nsw i32 %127, %153
  %158 = getelementptr inbounds i32, ptr %15, i64 %154
  store i32 %157, ptr %158, align 4, !tbaa !38
  %159 = add nsw i32 %151, %128
  %160 = getelementptr inbounds i32, ptr %17, i64 %154
  store i32 %159, ptr %160, align 4, !tbaa !38
  %161 = add nsw i32 %147, %129
  %162 = getelementptr inbounds i32, ptr %19, i64 %154
  store i32 %161, ptr %162, align 4, !tbaa !38
  %163 = sub nsw i32 %129, %147
  %164 = getelementptr inbounds i32, ptr %21, i64 %154
  store i32 %163, ptr %164, align 4, !tbaa !38
  %165 = sub nsw i32 %128, %151
  %166 = getelementptr inbounds i32, ptr %23, i64 %154
  store i32 %165, ptr %166, align 4, !tbaa !38
  %167 = add nsw i32 %153, %127
  %168 = getelementptr inbounds i32, ptr %25, i64 %154
  store i32 %167, ptr %168, align 4, !tbaa !38
  %169 = sub nsw i32 %126, %149
  %170 = getelementptr inbounds i32, ptr %27, i64 %154
  store i32 %169, ptr %170, align 4, !tbaa !38
  %171 = add nuw nsw i64 %103, 1
  %172 = icmp eq i64 %171, 8
  br i1 %172, label %173, label %102, !llvm.loop !55

173:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !41, !42}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !41, !42}
!49 = distinct !{!49, !41, !42}
!50 = distinct !{!50, !41, !42}
!51 = distinct !{!51, !41, !42}
!52 = distinct !{!52, !41, !42}
!53 = distinct !{!53, !41, !42}
!54 = distinct !{!54, !41, !42}
!55 = distinct !{!55, !41, !42}
