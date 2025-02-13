; ModuleID = 'blender/source/blender/blenlib/intern/string_utf8.c'
source_filename = "blender/source/blender/blenlib/intern/string_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@trailingBytesForUTF8 = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@utf8_skip_data = internal unnamed_addr constant [256 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 5, i64 5, i64 5, i64 5, i64 6, i64 6, i64 1, i64 1], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_utf8_invalid_byte(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %2, %65
  %7 = phi i32 [ %67, %65 ], [ %1, %2 ]
  %8 = phi ptr [ %68, %65 ], [ %0, %2 ]
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i8 %9, -1
  br i1 %11, label %65, label %12

12:                                               ; preds = %6
  %13 = and i32 %10, 192
  %14 = icmp eq i32 %13, 192
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = zext i8 %9 to i64
  %17 = getelementptr inbounds [256 x i8], ptr @trailingBytesForUTF8, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %7, %19
  br i1 %20, label %70, label %21

21:                                               ; preds = %15
  %22 = sub nsw i32 %7, %19
  %23 = getelementptr inbounds i8, ptr %8, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 192
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %70

28:                                               ; preds = %21
  switch i8 %18, label %54 [
    i8 1, label %29
    i8 2, label %32
    i8 3, label %37
    i8 4, label %42
    i8 5, label %47
  ]

29:                                               ; preds = %28
  %30 = and i32 %10, 62
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %70, label %65

32:                                               ; preds = %28
  %33 = icmp eq i8 %9, -32
  %34 = and i32 %25, 32
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %33, %35
  br i1 %36, label %70, label %54

37:                                               ; preds = %28
  %38 = icmp eq i8 %9, -16
  %39 = and i32 %25, 48
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %38, %40
  br i1 %41, label %70, label %54

42:                                               ; preds = %28
  %43 = icmp eq i8 %9, -8
  %44 = and i32 %25, 56
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %43, %45
  br i1 %46, label %70, label %54

47:                                               ; preds = %28
  %48 = icmp ugt i8 %9, -3
  br i1 %48, label %70, label %49

49:                                               ; preds = %47
  %50 = icmp eq i8 %9, -4
  %51 = and i32 %25, 60
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %50, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %49, %42, %37, %32, %28
  br label %55

55:                                               ; preds = %54, %59
  %56 = phi ptr [ %61, %59 ], [ %23, %54 ]
  %57 = phi i32 [ %60, %59 ], [ %19, %54 ]
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = add nsw i32 %57, -1
  %61 = getelementptr inbounds i8, ptr %56, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = and i8 %62, -64
  %64 = icmp eq i8 %63, -128
  br i1 %64, label %55, label %70, !llvm.loop !37

65:                                               ; preds = %55, %29, %6
  %66 = phi ptr [ %8, %6 ], [ %23, %29 ], [ %56, %55 ]
  %67 = phi i32 [ %7, %6 ], [ %22, %29 ], [ %22, %55 ]
  %68 = getelementptr inbounds i8, ptr %66, i64 1
  %69 = icmp ult ptr %68, %4
  br i1 %69, label %6, label %77, !llvm.loop !39

70:                                               ; preds = %49, %42, %37, %32, %47, %29, %21, %15, %12, %59
  %71 = phi ptr [ %56, %59 ], [ %23, %49 ], [ %23, %42 ], [ %23, %37 ], [ %23, %32 ], [ %23, %29 ], [ %23, %47 ], [ %23, %21 ], [ %8, %15 ], [ %8, %12 ]
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %0 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = add nsw i32 %75, -1
  br label %77

77:                                               ; preds = %65, %2, %70
  %78 = phi i32 [ %76, %70 ], [ -1, %2 ], [ -1, %65 ]
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_utf8_invalid_strip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef %0, i32 noundef %1) #13
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %22, label %5

5:                                                ; preds = %2, %16
  %6 = phi i32 [ %20, %16 ], [ %3, %2 ]
  %7 = phi i32 [ %19, %16 ], [ 0, %2 ]
  %8 = phi ptr [ %11, %16 ], [ %0, %2 ]
  %9 = phi i32 [ %12, %16 ], [ %1, %2 ]
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = sub nsw i32 %9, %6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  store i8 0, ptr %11, align 1, !tbaa !34
  %15 = add nuw nsw i32 %7, 1
  br label %22

16:                                               ; preds = %5
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = sext i32 %12 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %17, i64 %18, i1 false)
  %19 = add nuw nsw i32 %7, 1
  %20 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef %11, i32 noundef %12) #13
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %5, !llvm.loop !40

22:                                               ; preds = %16, %2, %14
  %23 = phi i32 [ %15, %14 ], [ 0, %2 ], [ %19, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncpy_utf8(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %3, %56
  %7 = phi i8 [ %57, %56 ], [ %4, %3 ]
  %8 = phi ptr [ %59, %56 ], [ %0, %3 ]
  %9 = phi ptr [ %58, %56 ], [ %1, %3 ]
  %10 = phi i64 [ %16, %56 ], [ %2, %3 ]
  %11 = zext i8 %7 to i64
  %12 = getelementptr inbounds [256 x i64], ptr @utf8_skip_data, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !41
  %14 = icmp ult i64 %13, %10
  br i1 %14, label %15, label %61

15:                                               ; preds = %6
  %16 = sub i64 %10, %13
  switch i64 %13, label %56 [
    i64 6, label %17
    i64 5, label %21
    i64 4, label %28
    i64 3, label %35
    i64 2, label %42
    i64 1, label %49
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !34
  %20 = load i8, ptr %18, align 1, !tbaa !34
  br label %21

21:                                               ; preds = %15, %17
  %22 = phi i8 [ %7, %15 ], [ %20, %17 ]
  %23 = phi ptr [ %9, %15 ], [ %18, %17 ]
  %24 = phi ptr [ %8, %15 ], [ %19, %17 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %22, ptr %24, align 1, !tbaa !34
  %27 = load i8, ptr %25, align 1, !tbaa !34
  br label %28

28:                                               ; preds = %15, %21
  %29 = phi i8 [ %7, %15 ], [ %27, %21 ]
  %30 = phi ptr [ %9, %15 ], [ %25, %21 ]
  %31 = phi ptr [ %8, %15 ], [ %26, %21 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %29, ptr %31, align 1, !tbaa !34
  %34 = load i8, ptr %32, align 1, !tbaa !34
  br label %35

35:                                               ; preds = %15, %28
  %36 = phi i8 [ %7, %15 ], [ %34, %28 ]
  %37 = phi ptr [ %9, %15 ], [ %32, %28 ]
  %38 = phi ptr [ %8, %15 ], [ %33, %28 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 1
  %40 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %36, ptr %38, align 1, !tbaa !34
  %41 = load i8, ptr %39, align 1, !tbaa !34
  br label %42

42:                                               ; preds = %15, %35
  %43 = phi i8 [ %7, %15 ], [ %41, %35 ]
  %44 = phi ptr [ %9, %15 ], [ %39, %35 ]
  %45 = phi ptr [ %8, %15 ], [ %40, %35 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 1
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %43, ptr %45, align 1, !tbaa !34
  %48 = load i8, ptr %46, align 1, !tbaa !34
  br label %49

49:                                               ; preds = %15, %42
  %50 = phi i8 [ %7, %15 ], [ %48, %42 ]
  %51 = phi ptr [ %9, %15 ], [ %46, %42 ]
  %52 = phi ptr [ %8, %15 ], [ %47, %42 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %50, ptr %52, align 1, !tbaa !34
  %55 = load i8, ptr %53, align 1, !tbaa !34
  br label %56

56:                                               ; preds = %49, %15
  %57 = phi i8 [ %7, %15 ], [ %55, %49 ]
  %58 = phi ptr [ %9, %15 ], [ %53, %49 ]
  %59 = phi ptr [ %8, %15 ], [ %54, %49 ]
  %60 = icmp eq i8 %57, 0
  br i1 %60, label %61, label %6, !llvm.loop !43

61:                                               ; preds = %6, %56, %3
  %62 = phi ptr [ %0, %3 ], [ %59, %56 ], [ %8, %6 ]
  store i8 0, ptr %62, align 1, !tbaa !34
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncat_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp ne i8 %4, 0
  %6 = icmp ne i64 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %13, %3
  %9 = phi i64 [ %2, %3 ], [ %17, %13 ]
  %10 = phi ptr [ %0, %3 ], [ %16, %13 ]
  %11 = load i8, ptr %1, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %77, label %22

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %15 = phi i64 [ %17, %13 ], [ %2, %3 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  %17 = add i64 %15, -1
  %18 = load i8, ptr %16, align 1, !tbaa !34
  %19 = icmp ne i8 %18, 0
  %20 = icmp ne i64 %17, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %13, label %8, !llvm.loop !44

22:                                               ; preds = %8, %72
  %23 = phi i8 [ %73, %72 ], [ %11, %8 ]
  %24 = phi ptr [ %75, %72 ], [ %10, %8 ]
  %25 = phi i64 [ %32, %72 ], [ %9, %8 ]
  %26 = phi ptr [ %74, %72 ], [ %1, %8 ]
  %27 = zext i8 %23 to i64
  %28 = getelementptr inbounds [256 x i64], ptr @utf8_skip_data, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !41
  %30 = icmp ult i64 %29, %25
  br i1 %30, label %31, label %77

31:                                               ; preds = %22
  %32 = sub i64 %25, %29
  switch i64 %29, label %72 [
    i64 6, label %33
    i64 5, label %37
    i64 4, label %44
    i64 3, label %51
    i64 2, label %58
    i64 1, label %65
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !34
  %36 = load i8, ptr %34, align 1, !tbaa !34
  br label %37

37:                                               ; preds = %31, %33
  %38 = phi i8 [ %23, %31 ], [ %36, %33 ]
  %39 = phi ptr [ %26, %31 ], [ %34, %33 ]
  %40 = phi ptr [ %24, %31 ], [ %35, %33 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %38, ptr %40, align 1, !tbaa !34
  %43 = load i8, ptr %41, align 1, !tbaa !34
  br label %44

44:                                               ; preds = %31, %37
  %45 = phi i8 [ %23, %31 ], [ %43, %37 ]
  %46 = phi ptr [ %26, %31 ], [ %41, %37 ]
  %47 = phi ptr [ %24, %31 ], [ %42, %37 ]
  %48 = getelementptr inbounds i8, ptr %46, i64 1
  %49 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %45, ptr %47, align 1, !tbaa !34
  %50 = load i8, ptr %48, align 1, !tbaa !34
  br label %51

51:                                               ; preds = %31, %44
  %52 = phi i8 [ %23, %31 ], [ %50, %44 ]
  %53 = phi ptr [ %26, %31 ], [ %48, %44 ]
  %54 = phi ptr [ %24, %31 ], [ %49, %44 ]
  %55 = getelementptr inbounds i8, ptr %53, i64 1
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %52, ptr %54, align 1, !tbaa !34
  %57 = load i8, ptr %55, align 1, !tbaa !34
  br label %58

58:                                               ; preds = %31, %51
  %59 = phi i8 [ %23, %31 ], [ %57, %51 ]
  %60 = phi ptr [ %26, %31 ], [ %55, %51 ]
  %61 = phi ptr [ %24, %31 ], [ %56, %51 ]
  %62 = getelementptr inbounds i8, ptr %60, i64 1
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %59, ptr %61, align 1, !tbaa !34
  %64 = load i8, ptr %62, align 1, !tbaa !34
  br label %65

65:                                               ; preds = %31, %58
  %66 = phi i8 [ %23, %31 ], [ %64, %58 ]
  %67 = phi ptr [ %26, %31 ], [ %62, %58 ]
  %68 = phi ptr [ %24, %31 ], [ %63, %58 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 1
  %70 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 %66, ptr %68, align 1, !tbaa !34
  %71 = load i8, ptr %69, align 1, !tbaa !34
  br label %72

72:                                               ; preds = %65, %31
  %73 = phi i8 [ %23, %31 ], [ %71, %65 ]
  %74 = phi ptr [ %26, %31 ], [ %69, %65 ]
  %75 = phi ptr [ %24, %31 ], [ %70, %65 ]
  %76 = icmp eq i8 %73, 0
  br i1 %76, label %77, label %22, !llvm.loop !45

77:                                               ; preds = %22, %72, %8
  %78 = phi ptr [ %10, %8 ], [ %75, %72 ], [ %24, %22 ]
  store i8 0, ptr %78, align 1, !tbaa !34
  ret ptr %78
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_wchar_as_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add i64 %2, -1
  %5 = load i32, ptr %1, align 4, !tbaa !46
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne i64 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %17, %9 ], [ %5, %3 ]
  %11 = phi i64 [ %16, %9 ], [ 0, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  %14 = getelementptr inbounds i8, ptr %0, i64 %11
  %15 = tail call i64 @BLI_str_utf8_from_unicode(i32 noundef %10, ptr noundef %14) #13, !range !48
  %16 = add i64 %15, %11
  %17 = load i32, ptr %13, align 4, !tbaa !46
  %18 = icmp ne i32 %17, 0
  %19 = icmp ult i64 %16, %4
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %9, label %21, !llvm.loop !49

21:                                               ; preds = %9, %3
  %22 = phi i64 [ 0, %3 ], [ %16, %9 ]
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  store i8 0, ptr %23, align 1, !tbaa !34
  ret i64 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local i64 @BLI_str_utf8_from_unicode(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = icmp ult i32 %0, 128
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %0, 2048
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %0, 65536
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %0, 2097152
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %0, 67108864
  %12 = select i1 %11, i32 5, i32 6
  %13 = select i1 %11, i32 248, i32 252
  br label %14

14:                                               ; preds = %10, %8, %6, %4, %2
  %15 = phi i32 [ 1, %2 ], [ 2, %4 ], [ 3, %6 ], [ 4, %8 ], [ %12, %10 ]
  %16 = phi i32 [ 0, %2 ], [ 192, %4 ], [ 224, %6 ], [ 240, %8 ], [ %13, %10 ]
  %17 = icmp eq ptr %1, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %15, -1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %22, %21 ], [ %31, %23 ]
  %25 = phi i32 [ %0, %21 ], [ %30, %23 ]
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 63
  %28 = or disjoint i8 %27, -128
  %29 = getelementptr inbounds i8, ptr %1, i64 %24
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = lshr i32 %25, 6
  %31 = add nsw i64 %24, -1
  %32 = and i64 %31, 4294967295
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %23, !llvm.loop !50

34:                                               ; preds = %23, %18
  %35 = phi i32 [ %0, %18 ], [ %30, %23 ]
  %36 = or i32 %35, %16
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %1, align 1, !tbaa !34
  br label %38

38:                                               ; preds = %34, %14
  %39 = zext nneg i32 %15 to i64
  ret i64 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_wstrlen_utf8(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4, !tbaa !46
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %11, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %10, %4 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = tail call i64 @BLI_str_utf8_from_unicode(i32 noundef %5, ptr noundef null) #13, !range !48
  %10 = add i64 %9, %6
  %11 = load i32, ptr %8, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !51

13:                                               ; preds = %4, %1
  %14 = phi i64 [ 0, %1 ], [ %10, %4 ]
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strlen_utf8_ex(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %10, %5 ], [ %0, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %6) #13, !range !52
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = add i64 %7, 1
  %12 = load i8, ptr %10, align 1, !tbaa !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !53

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = phi ptr [ %0, %2 ], [ %10, %5 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  store i64 %19, ptr %1, align 8, !tbaa !41
  ret i64 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_size_safe(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp eq i32 %18, 252
  %20 = select i1 %19, i32 6, i32 1
  br label %21

21:                                               ; preds = %17, %14, %11, %8, %5, %1
  %22 = phi i32 [ 1, %1 ], [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strlen_utf8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %10, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %9, %4 ], [ %0, %1 ]
  %7 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %6) #13, !range !52
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = add i64 %5, 1
  %11 = load i8, ptr %9, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !54

13:                                               ; preds = %4, %1
  %14 = phi i64 [ 0, %1 ], [ %10, %4 ]
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strnlen_utf8_ex(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds i8, ptr %0, i64 %1
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = icmp ne i8 %5, 0
  %7 = icmp sgt i64 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %0, %3 ]
  %11 = phi i64 [ %15, %9 ], [ 0, %3 ]
  %12 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %10) #13, !range !52
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = add i64 %11, 1
  %16 = load i8, ptr %14, align 1, !tbaa !34
  %17 = icmp ne i8 %16, 0
  %18 = icmp ult ptr %14, %4
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %9, label %20, !llvm.loop !55

20:                                               ; preds = %9, %3
  %21 = phi i64 [ 0, %3 ], [ %15, %9 ]
  %22 = phi ptr [ %0, %3 ], [ %14, %9 ]
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %0 to i64
  %25 = sub i64 %23, %24
  store i64 %25, ptr %2, align 8, !tbaa !41
  ret i64 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strnlen_utf8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp ne i8 %4, 0
  %6 = icmp sgt i64 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %0, %2 ]
  %10 = phi i64 [ %14, %8 ], [ 0, %2 ]
  %11 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %9) #13, !range !52
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = add i64 %10, 1
  %15 = load i8, ptr %13, align 1, !tbaa !34
  %16 = icmp ne i8 %15, 0
  %17 = icmp ult ptr %13, %3
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %8, label %19, !llvm.loop !56

19:                                               ; preds = %8, %2
  %20 = phi i64 [ 0, %2 ], [ %14, %8 ]
  ret i64 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_wchar_from_utf8(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = add i64 %2, -1
  %6 = load i8, ptr %1, align 1, !tbaa !34
  %7 = icmp ne i8 %6, 0
  %8 = icmp ne i64 %5, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %3, %21
  %11 = phi ptr [ %23, %21 ], [ %0, %3 ]
  %12 = phi i64 [ %24, %21 ], [ 0, %3 ]
  %13 = phi ptr [ %22, %21 ], [ %1, %3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !tbaa !41
  %14 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef nonnull %13, ptr noundef nonnull %4) #13
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  store i32 %14, ptr %11, align 4, !tbaa !46
  %17 = load i64, ptr %4, align 8, !tbaa !41
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  br label %21

19:                                               ; preds = %10
  store i32 63, ptr %11, align 4, !tbaa !46
  %20 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef nonnull %13, ptr noundef null) #13
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %18, %16 ], [ %20, %19 ]
  %23 = getelementptr inbounds i32, ptr %11, i64 1
  %24 = add nuw i64 %12, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %25 = load i8, ptr %22, align 1, !tbaa !34
  %26 = icmp ne i8 %25, 0
  %27 = icmp ne i64 %24, %5
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %10, label %29, !llvm.loop !57

29:                                               ; preds = %21, %3
  %30 = phi i64 [ 0, %3 ], [ %24, %21 ]
  %31 = phi ptr [ %0, %3 ], [ %23, %21 ]
  store i32 0, ptr %31, align 4, !tbaa !46
  ret i64 %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_and_size(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 224
  %8 = icmp eq i32 %7, 192
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 240
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %4, 248
  %14 = icmp eq i32 %13, 240
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = and i32 %4, 252
  %17 = icmp eq i32 %16, 248
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %4, 254
  %20 = icmp eq i32 %19, 252
  br i1 %20, label %21, label %44

21:                                               ; preds = %18, %6, %9, %12, %15
  %22 = phi i32 [ 31, %6 ], [ 15, %9 ], [ 7, %12 ], [ 3, %15 ], [ 1, %18 ]
  %23 = phi i64 [ 2, %6 ], [ 3, %9 ], [ 4, %12 ], [ 5, %15 ], [ 6, %18 ]
  %24 = and i32 %22, %4
  br label %25

25:                                               ; preds = %21, %33
  %26 = phi i64 [ 1, %21 ], [ %37, %33 ]
  %27 = phi i32 [ %24, %21 ], [ %36, %33 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 %26
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 192
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = shl i32 %27, 6
  %35 = and i32 %30, 63
  %36 = or disjoint i32 %35, %34
  %37 = add nuw nsw i64 %26, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %39, label %25, !llvm.loop !58

39:                                               ; preds = %33, %25, %2
  %40 = phi i64 [ 1, %2 ], [ %23, %25 ], [ %23, %33 ]
  %41 = phi i32 [ %4, %2 ], [ %36, %33 ], [ -1, %25 ]
  %42 = load i64, ptr %1, align 8, !tbaa !41
  %43 = add i64 %42, %40
  store i64 %43, ptr %1, align 8, !tbaa !41
  br label %44

44:                                               ; preds = %18, %39
  %45 = phi i32 [ %41, %39 ], [ -1, %18 ]
  ret i32 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_str_find_next_char_utf8(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5, %11
  %8 = phi ptr [ %9, %11 ], [ %0, %5 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = icmp ult ptr %9, %1
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i8, ptr %9, align 1, !tbaa !34
  %13 = and i8 %12, -64
  %14 = icmp eq i8 %13, -128
  br i1 %14, label %7, label %21, !llvm.loop !59

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %17, %15 ], [ %0, %5 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = and i8 %18, -64
  %20 = icmp eq i8 %19, -128
  br i1 %20, label %15, label %21, !llvm.loop !60

21:                                               ; preds = %7, %11, %15, %2
  %22 = phi ptr [ %0, %2 ], [ %17, %15 ], [ %9, %11 ], [ %9, %7 ]
  %23 = icmp eq ptr %22, %1
  %24 = select i1 %23, ptr null, ptr %22
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_wcwidth(i32 noundef %0) local_unnamed_addr #8 {
  %2 = tail call i32 @mk_wcwidth(i32 noundef %0) #15
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @mk_wcwidth(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_wcswidth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = tail call i32 @mk_wcswidth(ptr noundef %0, i64 noundef %1) #15
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @mk_wcswidth(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_str_utf8_char_width(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %0) #13
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @BLI_wcwidth(i32 noundef %2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp eq i32 %18, 252
  br i1 %19, label %20, label %38

20:                                               ; preds = %17, %5, %8, %11, %14
  %21 = phi i32 [ 31, %5 ], [ 15, %8 ], [ 7, %11 ], [ 3, %14 ], [ 1, %17 ]
  %22 = phi i64 [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ 6, %17 ]
  %23 = and i32 %21, %3
  br label %24

24:                                               ; preds = %20, %32
  %25 = phi i64 [ 1, %20 ], [ %36, %32 ]
  %26 = phi i32 [ %23, %20 ], [ %35, %32 ]
  %27 = getelementptr inbounds i8, ptr %0, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 192
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = shl i32 %26, 6
  %34 = and i32 %29, 63
  %35 = or disjoint i32 %34, %33
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %22
  br i1 %37, label %38, label %24, !llvm.loop !61

38:                                               ; preds = %24, %32, %1, %17
  %39 = phi i32 [ -1, %17 ], [ %3, %1 ], [ -1, %24 ], [ %35, %32 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_str_utf8_char_width_safe(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %0) #13
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @BLI_wcwidth(i32 noundef %2) #13
  %6 = icmp slt i32 %5, 0
  %7 = select i1 %6, i32 1, i32 %5
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 1, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp eq i32 %18, 252
  %20 = select i1 %19, i32 6, i32 -1
  br label %21

21:                                               ; preds = %17, %14, %11, %8, %5, %1
  %22 = phi i32 [ 1, %1 ], [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 224
  %8 = icmp eq i32 %7, 192
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 240
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %4, 248
  %14 = icmp eq i32 %13, 240
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = and i32 %4, 252
  %17 = icmp eq i32 %16, 248
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %4, 254
  %20 = icmp eq i32 %19, 252
  br i1 %20, label %21, label %39

21:                                               ; preds = %18, %6, %9, %12, %15
  %22 = phi i32 [ 31, %6 ], [ 15, %9 ], [ 7, %12 ], [ 3, %15 ], [ 1, %18 ]
  %23 = phi i64 [ 2, %6 ], [ 3, %9 ], [ 4, %12 ], [ 5, %15 ], [ 6, %18 ]
  %24 = and i32 %22, %4
  br label %25

25:                                               ; preds = %21, %33
  %26 = phi i64 [ 1, %21 ], [ %37, %33 ]
  %27 = phi i32 [ %24, %21 ], [ %36, %33 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 %26
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 192
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = shl i32 %27, 6
  %35 = and i32 %30, 63
  %36 = or disjoint i32 %35, %34
  %37 = add nuw nsw i64 %26, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %39, label %25, !llvm.loop !62

39:                                               ; preds = %25, %33, %2, %18
  %40 = phi i64 [ 1, %18 ], [ 1, %2 ], [ %23, %33 ], [ %23, %25 ]
  %41 = phi i32 [ %4, %18 ], [ %4, %2 ], [ -1, %25 ], [ %36, %33 ]
  %42 = load i64, ptr %1, align 8, !tbaa !41
  %43 = add i64 %42, %40
  store i64 %43, ptr %1, align 8, !tbaa !41
  ret i32 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_step(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %1, align 8, !tbaa !41
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp sgt i8 %5, -1
  br i1 %7, label %50, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 224
  %10 = icmp eq i32 %9, 192
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = and i32 %6, 240
  %13 = icmp eq i32 %12, 224
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = and i32 %6, 248
  %16 = icmp eq i32 %15, 240
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = and i32 %6, 252
  %19 = icmp eq i32 %18, 248
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = and i32 %6, 254
  %22 = icmp eq i32 %21, 252
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef nonnull %4, ptr noundef null) #13
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %4 to i64
  %27 = sub i64 %25, %26
  br label %54

28:                                               ; preds = %20, %8, %11, %14, %17
  %29 = phi i32 [ 31, %8 ], [ 15, %11 ], [ 7, %14 ], [ 3, %17 ], [ 1, %20 ]
  %30 = phi i32 [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ]
  %31 = and i32 %29, %6
  %32 = zext nneg i32 %30 to i64
  br label %33

33:                                               ; preds = %28, %41
  %34 = phi i64 [ 1, %28 ], [ %45, %41 ]
  %35 = phi i32 [ %31, %28 ], [ %44, %41 ]
  %36 = getelementptr inbounds i8, ptr %4, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = shl i32 %35, 6
  %43 = and i32 %38, 63
  %44 = or disjoint i32 %43, %42
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %47, label %33, !llvm.loop !63

47:                                               ; preds = %41
  %48 = icmp eq i32 %44, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %33, %47
  br label %50

50:                                               ; preds = %2, %49, %47
  %51 = phi i32 [ 1, %49 ], [ %30, %47 ], [ 1, %2 ]
  %52 = phi i32 [ %6, %49 ], [ %44, %47 ], [ %6, %2 ]
  %53 = zext nneg i32 %51 to i64
  br label %54

54:                                               ; preds = %50, %23
  %55 = phi i64 [ %53, %50 ], [ %27, %23 ]
  %56 = phi i32 [ %52, %50 ], [ -1, %23 ]
  %57 = add i64 %55, %3
  store i64 %57, ptr %1, align 8, !tbaa !41
  ret i32 %56
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_str_find_prev_char_utf8(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %5, %7 ]
  %5 = getelementptr inbounds i8, ptr %4, i64 -1
  %6 = icmp ult ptr %5, %0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %5, align 1, !tbaa !34
  %9 = and i8 %8, -64
  %10 = icmp eq i8 %9, -128
  br i1 %10, label %3, label %11, !llvm.loop !64

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @BLI_str_prev_char_utf8(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %4 = getelementptr inbounds i8, ptr %3, i64 -1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = and i8 %5, -64
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %2, label %8

8:                                                ; preds = %2
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_partition_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #11 {
  %5 = tail call i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #13
  ret i64 %5
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #11 {
  %6 = alloca i64, align 8
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  store ptr %8, ptr %3, align 8, !tbaa !65
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef %8) #13
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ %0, %5 ]
  store ptr %13, ptr %2, align 8, !tbaa !65
  store i64 0, ptr %6, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %12, %50
  %16 = phi ptr [ %51, %50 ], [ %13, %12 ]
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef nonnull %16, ptr noundef nonnull %6) #13
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 4, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %29

25:                                               ; preds = %29
  %26 = getelementptr inbounds i32, ptr %31, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29, !llvm.loop !67

29:                                               ; preds = %22, %25
  %30 = phi i32 [ %27, %25 ], [ %23, %22 ]
  %31 = phi ptr [ %26, %25 ], [ %1, %22 ]
  %32 = icmp eq i32 %30, %20
  br i1 %32, label %33, label %25

33:                                               ; preds = %29
  br i1 %9, label %34, label %38

34:                                               ; preds = %33
  %35 = load i64, ptr %6, align 8, !tbaa !41
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  store ptr %36, ptr %3, align 8, !tbaa !65
  %37 = load ptr, ptr %2, align 8, !tbaa !65
  br label %38

38:                                               ; preds = %33, %34
  %39 = phi ptr [ %16, %33 ], [ %37, %34 ]
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %0 to i64
  %42 = sub i64 %40, %41
  br label %54

43:                                               ; preds = %25, %22
  store ptr %16, ptr %3, align 8, !tbaa !65
  br i1 %9, label %47, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %2, align 8, !tbaa !65
  %46 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef %45) #13
  br label %50

47:                                               ; preds = %43
  %48 = load i64, ptr %6, align 8, !tbaa !41
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %46, %44 ], [ %49, %47 ]
  store ptr %51, ptr %2, align 8, !tbaa !65
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !llvm.loop !68

53:                                               ; preds = %15, %50, %19, %12
  store ptr null, ptr %2, align 8, !tbaa !65
  store ptr null, ptr %3, align 8, !tbaa !65
  br label %54

54:                                               ; preds = %38, %53
  %55 = phi i64 [ %7, %53 ], [ %42, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i64 %55
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_rpartition_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #11 {
  %5 = tail call i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #13
  ret i64 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !35, i64 0}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !35, i64 0}
!48 = !{i64 1, i64 7}
!49 = distinct !{!49, !38}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = !{i32 1, i32 7}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = distinct !{!61, !38}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !35, i64 0}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
