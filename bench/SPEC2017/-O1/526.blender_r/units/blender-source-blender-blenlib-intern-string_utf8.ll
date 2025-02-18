; ModuleID = 'blender/source/blender/blenlib/intern/string_utf8.c'
source_filename = "blender/source/blender/blenlib/intern/string_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@trailingBytesForUTF8 = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@utf8_skip_data = internal unnamed_addr constant [256 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 5, i64 5, i64 5, i64 5, i64 6, i64 6, i64 1, i64 1], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  br i1 %69, label %6, label %77, !llvm.loop !40

70:                                               ; preds = %49, %42, %37, %32, %47, %29, %21, %15, %12, %59
  %71 = phi ptr [ %56, %59 ], [ %8, %12 ], [ %8, %15 ], [ %23, %21 ], [ %23, %47 ], [ %23, %29 ], [ %23, %32 ], [ %23, %37 ], [ %23, %42 ], [ %23, %49 ]
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_utf8_invalid_strip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef %0, i32 noundef %1)
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
  %20 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef %11, i32 noundef %12)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %5, !llvm.loop !41

22:                                               ; preds = %16, %2, %14
  %23 = phi i32 [ %15, %14 ], [ 0, %2 ], [ %19, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncpy_utf8(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %3, %50
  %7 = phi i8 [ %53, %50 ], [ %4, %3 ]
  %8 = phi ptr [ %52, %50 ], [ %0, %3 ]
  %9 = phi ptr [ %51, %50 ], [ %1, %3 ]
  %10 = phi i64 [ %16, %50 ], [ %2, %3 ]
  %11 = zext i8 %7 to i64
  %12 = getelementptr inbounds [256 x i64], ptr @utf8_skip_data, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = icmp ult i64 %13, %10
  br i1 %14, label %15, label %55

15:                                               ; preds = %6
  %16 = sub i64 %10, %13
  switch i64 %13, label %50 [
    i64 6, label %17
    i64 5, label %20
    i64 4, label %26
    i64 3, label %32
    i64 2, label %38
    i64 1, label %44
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !34
  br label %20

20:                                               ; preds = %15, %17
  %21 = phi ptr [ %9, %15 ], [ %18, %17 ]
  %22 = phi ptr [ %8, %15 ], [ %19, %17 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %21, align 1, !tbaa !34
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %24, ptr %22, align 1, !tbaa !34
  br label %26

26:                                               ; preds = %15, %20
  %27 = phi ptr [ %9, %15 ], [ %23, %20 ]
  %28 = phi ptr [ %8, %15 ], [ %25, %20 ]
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = load i8, ptr %27, align 1, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %30, ptr %28, align 1, !tbaa !34
  br label %32

32:                                               ; preds = %15, %26
  %33 = phi ptr [ %9, %15 ], [ %29, %26 ]
  %34 = phi ptr [ %8, %15 ], [ %31, %26 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %33, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %36, ptr %34, align 1, !tbaa !34
  br label %38

38:                                               ; preds = %15, %32
  %39 = phi ptr [ %9, %15 ], [ %35, %32 ]
  %40 = phi ptr [ %8, %15 ], [ %37, %32 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = load i8, ptr %39, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %42, ptr %40, align 1, !tbaa !34
  br label %44

44:                                               ; preds = %15, %38
  %45 = phi ptr [ %9, %15 ], [ %41, %38 ]
  %46 = phi ptr [ %8, %15 ], [ %43, %38 ]
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  %48 = load i8, ptr %45, align 1, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %48, ptr %46, align 1, !tbaa !34
  br label %50

50:                                               ; preds = %44, %15
  %51 = phi ptr [ %9, %15 ], [ %47, %44 ]
  %52 = phi ptr [ %8, %15 ], [ %49, %44 ]
  %53 = load i8, ptr %51, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %6, !llvm.loop !44

55:                                               ; preds = %6, %50, %3
  %56 = phi ptr [ %0, %3 ], [ %8, %6 ], [ %52, %50 ]
  store i8 0, ptr %56, align 1, !tbaa !34
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncat_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
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
  br i1 %12, label %71, label %22

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %15 = phi i64 [ %17, %13 ], [ %2, %3 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  %17 = add i64 %15, -1
  %18 = load i8, ptr %16, align 1, !tbaa !34
  %19 = icmp ne i8 %18, 0
  %20 = icmp ne i64 %17, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %13, label %8, !llvm.loop !45

22:                                               ; preds = %8, %66
  %23 = phi i8 [ %69, %66 ], [ %11, %8 ]
  %24 = phi ptr [ %68, %66 ], [ %10, %8 ]
  %25 = phi i64 [ %32, %66 ], [ %9, %8 ]
  %26 = phi ptr [ %67, %66 ], [ %1, %8 ]
  %27 = zext i8 %23 to i64
  %28 = getelementptr inbounds [256 x i64], ptr @utf8_skip_data, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !42
  %30 = icmp ult i64 %29, %25
  br i1 %30, label %31, label %71

31:                                               ; preds = %22
  %32 = sub i64 %25, %29
  switch i64 %29, label %66 [
    i64 6, label %33
    i64 5, label %36
    i64 4, label %42
    i64 3, label %48
    i64 2, label %54
    i64 1, label %60
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !34
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %26, %31 ], [ %34, %33 ]
  %38 = phi ptr [ %24, %31 ], [ %35, %33 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 1
  %40 = load i8, ptr %37, align 1, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %40, ptr %38, align 1, !tbaa !34
  br label %42

42:                                               ; preds = %31, %36
  %43 = phi ptr [ %26, %31 ], [ %39, %36 ]
  %44 = phi ptr [ %24, %31 ], [ %41, %36 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 1
  %46 = load i8, ptr %43, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %46, ptr %44, align 1, !tbaa !34
  br label %48

48:                                               ; preds = %31, %42
  %49 = phi ptr [ %26, %31 ], [ %45, %42 ]
  %50 = phi ptr [ %24, %31 ], [ %47, %42 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  %52 = load i8, ptr %49, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %52, ptr %50, align 1, !tbaa !34
  br label %54

54:                                               ; preds = %31, %48
  %55 = phi ptr [ %26, %31 ], [ %51, %48 ]
  %56 = phi ptr [ %24, %31 ], [ %53, %48 ]
  %57 = getelementptr inbounds i8, ptr %55, i64 1
  %58 = load i8, ptr %55, align 1, !tbaa !34
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %58, ptr %56, align 1, !tbaa !34
  br label %60

60:                                               ; preds = %31, %54
  %61 = phi ptr [ %26, %31 ], [ %57, %54 ]
  %62 = phi ptr [ %24, %31 ], [ %59, %54 ]
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  %64 = load i8, ptr %61, align 1, !tbaa !34
  %65 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %64, ptr %62, align 1, !tbaa !34
  br label %66

66:                                               ; preds = %60, %31
  %67 = phi ptr [ %26, %31 ], [ %63, %60 ]
  %68 = phi ptr [ %24, %31 ], [ %65, %60 ]
  %69 = load i8, ptr %67, align 1, !tbaa !34
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %22, !llvm.loop !46

71:                                               ; preds = %22, %66, %8
  %72 = phi ptr [ %10, %8 ], [ %24, %22 ], [ %68, %66 ]
  store i8 0, ptr %72, align 1, !tbaa !34
  ret ptr %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_wchar_as_utf8(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = add i64 %2, -1
  %5 = load i32, ptr %1, align 4, !tbaa !47
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne i64 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, null
  br label %11

11:                                               ; preds = %9, %51
  %12 = phi i32 [ %5, %9 ], [ %54, %51 ]
  %13 = phi i64 [ 0, %9 ], [ %53, %51 ]
  %14 = phi ptr [ %1, %9 ], [ %15, %51 ]
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = getelementptr inbounds i8, ptr %0, i64 %13
  %17 = icmp ult i32 %12, 128
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = icmp ult i32 %12, 2048
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %12, 65536
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %12, 2097152
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %12, 67108864
  %26 = select i1 %25, i32 5, i32 6
  %27 = select i1 %25, i32 248, i32 252
  br label %28

28:                                               ; preds = %24, %22, %20, %18, %11
  %29 = phi i32 [ 1, %11 ], [ 2, %18 ], [ 3, %20 ], [ 4, %22 ], [ %26, %24 ]
  %30 = phi i32 [ 0, %11 ], [ 192, %18 ], [ 224, %20 ], [ 240, %22 ], [ %27, %24 ]
  br i1 %10, label %51, label %31

31:                                               ; preds = %28
  %32 = add nsw i32 %29, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = zext nneg i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %44, %36 ]
  %38 = phi i32 [ %12, %34 ], [ %43, %36 ]
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 63
  %41 = or disjoint i8 %40, -128
  %42 = getelementptr inbounds i8, ptr %16, i64 %37
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = lshr i32 %38, 6
  %44 = add nsw i64 %37, -1
  %45 = and i64 %44, 4294967295
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %36, !llvm.loop !49

47:                                               ; preds = %36, %31
  %48 = phi i32 [ %12, %31 ], [ %43, %36 ]
  %49 = or i32 %48, %30
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %16, align 1, !tbaa !34
  br label %51

51:                                               ; preds = %28, %47
  %52 = zext nneg i32 %29 to i64
  %53 = add i64 %13, %52
  %54 = load i32, ptr %15, align 4, !tbaa !47
  %55 = icmp ne i32 %54, 0
  %56 = icmp ult i64 %53, %4
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %11, label %58, !llvm.loop !50

58:                                               ; preds = %51, %3
  %59 = phi i64 [ 0, %3 ], [ %53, %51 ]
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  store i8 0, ptr %60, align 1, !tbaa !34
  ret i64 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local i64 @BLI_str_utf8_from_unicode(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
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
  br i1 %33, label %34, label %23, !llvm.loop !49

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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_wstrlen_utf8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !47
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1, %19
  %5 = phi i32 [ %22, %19 ], [ %2, %1 ]
  %6 = phi i64 [ %21, %19 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %19 ], [ %0, %1 ]
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp ult i32 %5, 128
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = icmp ult i32 %5, 2048
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %5, 65536
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %5, 2097152
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp ult i32 %5, 67108864
  %18 = select i1 %17, i64 5, i64 6
  br label %19

19:                                               ; preds = %4, %10, %12, %14, %16
  %20 = phi i64 [ 1, %4 ], [ 2, %10 ], [ 3, %12 ], [ 4, %14 ], [ %18, %16 ]
  %21 = add i64 %20, %6
  %22 = load i32, ptr %8, align 4, !tbaa !47
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %4, !llvm.loop !51

24:                                               ; preds = %19, %1
  %25 = phi i64 [ 0, %1 ], [ %21, %19 ]
  ret i64 %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strlen_utf8_ex(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2, %27
  %6 = phi i8 [ %31, %27 ], [ %3, %2 ]
  %7 = phi ptr [ %29, %27 ], [ %0, %2 ]
  %8 = phi i64 [ %30, %27 ], [ 0, %2 ]
  %9 = zext i8 %6 to i32
  %10 = icmp sgt i8 %6, -1
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = and i32 %9, 224
  %13 = icmp eq i32 %12, 192
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = and i32 %9, 240
  %16 = icmp eq i32 %15, 224
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = and i32 %9, 248
  %19 = icmp eq i32 %18, 240
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = and i32 %9, 252
  %22 = icmp eq i32 %21, 248
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = and i32 %9, 254
  %25 = icmp eq i32 %24, 252
  %26 = select i1 %25, i64 6, i64 1
  br label %27

27:                                               ; preds = %5, %11, %14, %17, %20, %23
  %28 = phi i64 [ 1, %5 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ], [ 5, %20 ], [ %26, %23 ]
  %29 = getelementptr inbounds i8, ptr %7, i64 %28
  %30 = add i64 %8, 1
  %31 = load i8, ptr %29, align 1, !tbaa !34
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %5, !llvm.loop !52

33:                                               ; preds = %27, %2
  %34 = phi i64 [ 0, %2 ], [ %30, %27 ]
  %35 = phi ptr [ %0, %2 ], [ %29, %27 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  store i64 %38, ptr %1, align 8, !tbaa !42
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_size_safe(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strlen_utf8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1, %26
  %5 = phi i8 [ %30, %26 ], [ %2, %1 ]
  %6 = phi i64 [ %29, %26 ], [ 0, %1 ]
  %7 = phi ptr [ %28, %26 ], [ %0, %1 ]
  %8 = zext i8 %5 to i32
  %9 = icmp sgt i8 %5, -1
  br i1 %9, label %26, label %10

10:                                               ; preds = %4
  %11 = and i32 %8, 224
  %12 = icmp eq i32 %11, 192
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = and i32 %8, 240
  %15 = icmp eq i32 %14, 224
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = and i32 %8, 248
  %18 = icmp eq i32 %17, 240
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = and i32 %8, 252
  %21 = icmp eq i32 %20, 248
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i32 %8, 254
  %24 = icmp eq i32 %23, 252
  %25 = select i1 %24, i64 6, i64 1
  br label %26

26:                                               ; preds = %4, %10, %13, %16, %19, %22
  %27 = phi i64 [ 1, %4 ], [ 2, %10 ], [ 3, %13 ], [ 4, %16 ], [ 5, %19 ], [ %25, %22 ]
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = add i64 %6, 1
  %30 = load i8, ptr %28, align 1, !tbaa !34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %4, !llvm.loop !53

32:                                               ; preds = %26, %1
  %33 = phi i64 [ 0, %1 ], [ %29, %26 ]
  ret i64 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strnlen_utf8_ex(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds i8, ptr %0, i64 %1
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = icmp ne i8 %5, 0
  %7 = icmp sgt i64 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %3, %31
  %10 = phi i8 [ %35, %31 ], [ %5, %3 ]
  %11 = phi ptr [ %33, %31 ], [ %0, %3 ]
  %12 = phi i64 [ %34, %31 ], [ 0, %3 ]
  %13 = zext i8 %10 to i32
  %14 = icmp sgt i8 %10, -1
  br i1 %14, label %31, label %15

15:                                               ; preds = %9
  %16 = and i32 %13, 224
  %17 = icmp eq i32 %16, 192
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = and i32 %13, 240
  %20 = icmp eq i32 %19, 224
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = and i32 %13, 248
  %23 = icmp eq i32 %22, 240
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = and i32 %13, 252
  %26 = icmp eq i32 %25, 248
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = and i32 %13, 254
  %29 = icmp eq i32 %28, 252
  %30 = select i1 %29, i64 6, i64 1
  br label %31

31:                                               ; preds = %9, %15, %18, %21, %24, %27
  %32 = phi i64 [ 1, %9 ], [ 2, %15 ], [ 3, %18 ], [ 4, %21 ], [ 5, %24 ], [ %30, %27 ]
  %33 = getelementptr inbounds i8, ptr %11, i64 %32
  %34 = add i64 %12, 1
  %35 = load i8, ptr %33, align 1, !tbaa !34
  %36 = icmp ne i8 %35, 0
  %37 = icmp ult ptr %33, %4
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %9, label %39, !llvm.loop !54

39:                                               ; preds = %31, %3
  %40 = phi i64 [ 0, %3 ], [ %34, %31 ]
  %41 = phi ptr [ %0, %3 ], [ %33, %31 ]
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %0 to i64
  %44 = sub i64 %42, %43
  store i64 %44, ptr %2, align 8, !tbaa !42
  ret i64 %40
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strnlen_utf8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp ne i8 %4, 0
  %6 = icmp sgt i64 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %2, %30
  %9 = phi i8 [ %34, %30 ], [ %4, %2 ]
  %10 = phi ptr [ %32, %30 ], [ %0, %2 ]
  %11 = phi i64 [ %33, %30 ], [ 0, %2 ]
  %12 = zext i8 %9 to i32
  %13 = icmp sgt i8 %9, -1
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = and i32 %12, 224
  %16 = icmp eq i32 %15, 192
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = and i32 %12, 240
  %19 = icmp eq i32 %18, 224
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = and i32 %12, 248
  %22 = icmp eq i32 %21, 240
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = and i32 %12, 252
  %25 = icmp eq i32 %24, 248
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = and i32 %12, 254
  %28 = icmp eq i32 %27, 252
  %29 = select i1 %28, i64 6, i64 1
  br label %30

30:                                               ; preds = %8, %14, %17, %20, %23, %26
  %31 = phi i64 [ 1, %8 ], [ 2, %14 ], [ 3, %17 ], [ 4, %20 ], [ 5, %23 ], [ %29, %26 ]
  %32 = getelementptr inbounds i8, ptr %10, i64 %31
  %33 = add i64 %11, 1
  %34 = load i8, ptr %32, align 1, !tbaa !34
  %35 = icmp ne i8 %34, 0
  %36 = icmp ult ptr %32, %3
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %8, label %38, !llvm.loop !55

38:                                               ; preds = %30, %2
  %39 = phi i64 [ 0, %2 ], [ %33, %30 ]
  ret i64 %39
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_wchar_from_utf8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = add i64 %2, -1
  %5 = load i8, ptr %1, align 1, !tbaa !34
  %6 = icmp ne i8 %5, 0
  %7 = icmp ne i64 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %83

9:                                                ; preds = %3, %75
  %10 = phi i8 [ %79, %75 ], [ %5, %3 ]
  %11 = phi ptr [ %77, %75 ], [ %0, %3 ]
  %12 = phi i64 [ %78, %75 ], [ 0, %3 ]
  %13 = phi ptr [ %76, %75 ], [ %1, %3 ]
  %14 = zext i8 %10 to i32
  %15 = icmp sgt i8 %10, -1
  br i1 %15, label %34, label %16

16:                                               ; preds = %9
  %17 = and i32 %14, 224
  %18 = icmp eq i32 %17, 192
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = and i32 %14, 240
  %21 = icmp eq i32 %20, 224
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = and i32 %14, 248
  %24 = icmp eq i32 %23, 240
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = and i32 %14, 252
  %27 = icmp eq i32 %26, 248
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = and i32 %14, 254
  %30 = icmp ne i32 %29, 252
  %31 = select i1 %30, i32 -1, i32 6
  %32 = xor i1 %30, true
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %28, %25, %22, %19, %16, %9
  %35 = phi i1 [ false, %9 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ %30, %28 ]
  %36 = phi i32 [ 1, %9 ], [ 2, %16 ], [ 3, %19 ], [ 4, %22 ], [ 5, %25 ], [ %31, %28 ]
  %37 = phi i32 [ 127, %9 ], [ 31, %16 ], [ 15, %19 ], [ 7, %22 ], [ 3, %25 ], [ %33, %28 ]
  br i1 %35, label %60, label %38

38:                                               ; preds = %34
  %39 = and i32 %37, %14
  %40 = icmp sgt i32 %36, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %51, %41
  %44 = phi i64 [ 1, %41 ], [ %55, %51 ]
  %45 = phi i32 [ %39, %41 ], [ %54, %51 ]
  %46 = getelementptr inbounds i8, ptr %13, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 192
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = shl i32 %45, 6
  %53 = and i32 %48, 63
  %54 = or disjoint i32 %53, %52
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, %42
  br i1 %56, label %57, label %43, !llvm.loop !56

57:                                               ; preds = %51, %43, %38
  %58 = phi i32 [ %39, %38 ], [ %54, %51 ], [ -1, %43 ]
  %59 = zext nneg i32 %36 to i64
  br label %60

60:                                               ; preds = %34, %57
  %61 = phi i64 [ 0, %34 ], [ %59, %57 ]
  %62 = phi i32 [ -1, %34 ], [ %58, %57 ]
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  store i32 %62, ptr %11, align 4, !tbaa !47
  %65 = getelementptr inbounds i8, ptr %13, i64 %61
  br label %75

66:                                               ; preds = %60
  store i32 63, ptr %11, align 4, !tbaa !47
  %67 = load i8, ptr %13, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66, %69
  %70 = phi ptr [ %71, %69 ], [ %13, %66 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !34
  %73 = and i8 %72, -64
  %74 = icmp eq i8 %73, -128
  br i1 %74, label %69, label %75, !llvm.loop !57

75:                                               ; preds = %69, %66, %64
  %76 = phi ptr [ %65, %64 ], [ %13, %66 ], [ %71, %69 ]
  %77 = getelementptr inbounds i32, ptr %11, i64 1
  %78 = add nuw i64 %12, 1
  %79 = load i8, ptr %76, align 1, !tbaa !34
  %80 = icmp ne i8 %79, 0
  %81 = icmp ne i64 %78, %4
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %9, label %83, !llvm.loop !58

83:                                               ; preds = %75, %3
  %84 = phi i64 [ 0, %3 ], [ %78, %75 ]
  %85 = phi ptr [ %0, %3 ], [ %77, %75 ]
  store i32 0, ptr %85, align 4, !tbaa !47
  ret i64 %84
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_and_size(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 224
  %8 = icmp eq i32 %7, 192
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 240
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = and i32 %4, 248
  %14 = icmp eq i32 %13, 240
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i32 %4, 252
  %17 = icmp eq i32 %16, 248
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = and i32 %4, 254
  %20 = icmp ne i32 %19, 252
  %21 = select i1 %20, i32 -1, i32 6
  %22 = xor i1 %20, true
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %18, %15, %12, %9, %6, %2
  %25 = phi i1 [ false, %2 ], [ false, %6 ], [ false, %9 ], [ false, %12 ], [ false, %15 ], [ %20, %18 ]
  %26 = phi i32 [ 1, %2 ], [ 2, %6 ], [ 3, %9 ], [ 4, %12 ], [ 5, %15 ], [ %21, %18 ]
  %27 = phi i32 [ 127, %2 ], [ 31, %6 ], [ 15, %9 ], [ 7, %12 ], [ 3, %15 ], [ %23, %18 ]
  br i1 %25, label %52, label %28

28:                                               ; preds = %24
  %29 = and i32 %27, %4
  %30 = icmp sgt i32 %26, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = zext nneg i32 %26 to i64
  br label %33

33:                                               ; preds = %31, %41
  %34 = phi i64 [ 1, %31 ], [ %45, %41 ]
  %35 = phi i32 [ %29, %31 ], [ %44, %41 ]
  %36 = getelementptr inbounds i8, ptr %0, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = shl i32 %35, 6
  %43 = and i32 %38, 63
  %44 = or disjoint i32 %43, %42
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %47, label %33, !llvm.loop !56

47:                                               ; preds = %41, %33, %28
  %48 = phi i32 [ %29, %28 ], [ %44, %41 ], [ -1, %33 ]
  %49 = zext nneg i32 %26 to i64
  %50 = load i64, ptr %1, align 8, !tbaa !42
  %51 = add i64 %50, %49
  store i64 %51, ptr %1, align 8, !tbaa !42
  br label %52

52:                                               ; preds = %24, %47
  %53 = phi i32 [ %48, %47 ], [ -1, %24 ]
  ret i32 %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  br i1 %20, label %15, label %21, !llvm.loop !57

21:                                               ; preds = %7, %11, %15, %2
  %22 = phi ptr [ %0, %2 ], [ %17, %15 ], [ %9, %11 ], [ %9, %7 ]
  %23 = icmp eq ptr %22, %1
  %24 = select i1 %23, ptr null, ptr %22
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_wcwidth(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call i32 @mk_wcwidth(i32 noundef %0) #12
  ret i32 %2
}

declare i32 @mk_wcwidth(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_wcswidth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 @mk_wcswidth(ptr noundef %0, i64 noundef %1) #12
  ret i32 %3
}

declare i32 @mk_wcswidth(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_str_utf8_char_width(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp ne i32 %18, 252
  %20 = select i1 %19, i32 -1, i32 6
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %14, %11, %8, %5, %1
  %24 = phi i1 [ false, %1 ], [ false, %5 ], [ false, %8 ], [ false, %11 ], [ false, %14 ], [ %19, %17 ]
  %25 = phi i32 [ 1, %1 ], [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ %20, %17 ]
  %26 = phi i32 [ 127, %1 ], [ 31, %5 ], [ 15, %8 ], [ 7, %11 ], [ 3, %14 ], [ %22, %17 ]
  br i1 %24, label %46, label %27

27:                                               ; preds = %23
  %28 = and i32 %26, %3
  %29 = icmp sgt i32 %25, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = zext nneg i32 %25 to i64
  br label %32

32:                                               ; preds = %40, %30
  %33 = phi i64 [ 1, %30 ], [ %44, %40 ]
  %34 = phi i32 [ %28, %30 ], [ %43, %40 ]
  %35 = getelementptr inbounds i8, ptr %0, i64 %33
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = shl i32 %34, 6
  %42 = and i32 %37, 63
  %43 = or disjoint i32 %42, %41
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %44, %31
  br i1 %45, label %46, label %32, !llvm.loop !60

46:                                               ; preds = %32, %40, %23, %27
  %47 = phi i32 [ -1, %23 ], [ %28, %27 ], [ %43, %40 ], [ -1, %32 ]
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @mk_wcwidth(i32 noundef %47) #12
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi i32 [ %50, %49 ], [ -1, %46 ]
  ret i32 %52
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp ne i32 %18, 252
  %20 = select i1 %19, i32 -1, i32 6
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %14, %11, %8, %5, %1
  %24 = phi i1 [ false, %1 ], [ false, %5 ], [ false, %8 ], [ false, %11 ], [ false, %14 ], [ %19, %17 ]
  %25 = phi i32 [ 1, %1 ], [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ %20, %17 ]
  %26 = phi i32 [ 127, %1 ], [ 31, %5 ], [ 15, %8 ], [ 7, %11 ], [ 3, %14 ], [ %22, %17 ]
  br i1 %24, label %46, label %27

27:                                               ; preds = %23
  %28 = and i32 %26, %3
  %29 = icmp sgt i32 %25, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = zext nneg i32 %25 to i64
  br label %32

32:                                               ; preds = %30, %40
  %33 = phi i64 [ 1, %30 ], [ %44, %40 ]
  %34 = phi i32 [ %28, %30 ], [ %43, %40 ]
  %35 = getelementptr inbounds i8, ptr %0, i64 %33
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = shl i32 %34, 6
  %42 = and i32 %37, 63
  %43 = or disjoint i32 %42, %41
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %44, %31
  br i1 %45, label %46, label %32, !llvm.loop !60

46:                                               ; preds = %32, %40, %27, %23
  %47 = phi i32 [ -1, %23 ], [ %28, %27 ], [ %43, %40 ], [ -1, %32 ]
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_str_utf8_char_width_safe(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 224
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, 240
  %10 = icmp eq i32 %9, 224
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 248
  %13 = icmp eq i32 %12, 240
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 252
  %16 = icmp eq i32 %15, 248
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 254
  %19 = icmp ne i32 %18, 252
  %20 = select i1 %19, i32 -1, i32 6
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %14, %11, %8, %5, %1
  %24 = phi i1 [ false, %1 ], [ false, %5 ], [ false, %8 ], [ false, %11 ], [ false, %14 ], [ %19, %17 ]
  %25 = phi i32 [ 1, %1 ], [ 2, %5 ], [ 3, %8 ], [ 4, %11 ], [ 5, %14 ], [ %20, %17 ]
  %26 = phi i32 [ 127, %1 ], [ 31, %5 ], [ 15, %8 ], [ 7, %11 ], [ 3, %14 ], [ %22, %17 ]
  br i1 %24, label %46, label %27

27:                                               ; preds = %23
  %28 = and i32 %26, %3
  %29 = icmp sgt i32 %25, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = zext nneg i32 %25 to i64
  br label %32

32:                                               ; preds = %40, %30
  %33 = phi i64 [ 1, %30 ], [ %44, %40 ]
  %34 = phi i32 [ %28, %30 ], [ %43, %40 ]
  %35 = getelementptr inbounds i8, ptr %0, i64 %33
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = shl i32 %34, 6
  %42 = and i32 %37, 63
  %43 = or disjoint i32 %42, %41
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %44, %31
  br i1 %45, label %46, label %32, !llvm.loop !60

46:                                               ; preds = %32, %40, %23, %27
  %47 = phi i32 [ -1, %23 ], [ %28, %27 ], [ %43, %40 ], [ -1, %32 ]
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @mk_wcwidth(i32 noundef %47) #12
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 1, i32 %50
  br label %53

53:                                               ; preds = %46, %49
  %54 = phi i32 [ %52, %49 ], [ 1, %46 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_str_utf8_size(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 224
  %8 = icmp eq i32 %7, 192
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 240
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = and i32 %4, 248
  %14 = icmp eq i32 %13, 240
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i32 %4, 252
  %17 = icmp eq i32 %16, 248
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = and i32 %4, 254
  %20 = icmp ne i32 %19, 252
  %21 = select i1 %20, i32 -1, i32 6
  %22 = xor i1 %20, true
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %18, %15, %12, %9, %6, %2
  %25 = phi i1 [ false, %2 ], [ false, %6 ], [ false, %9 ], [ false, %12 ], [ false, %15 ], [ %20, %18 ]
  %26 = phi i32 [ 1, %2 ], [ 2, %6 ], [ 3, %9 ], [ 4, %12 ], [ 5, %15 ], [ %21, %18 ]
  %27 = phi i32 [ 127, %2 ], [ 31, %6 ], [ 15, %9 ], [ 7, %12 ], [ 3, %15 ], [ %23, %18 ]
  br i1 %25, label %50, label %28

28:                                               ; preds = %24
  %29 = and i32 %27, %4
  %30 = icmp sgt i32 %26, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = zext nneg i32 %26 to i64
  br label %33

33:                                               ; preds = %31, %41
  %34 = phi i64 [ 1, %31 ], [ %45, %41 ]
  %35 = phi i32 [ %29, %31 ], [ %44, %41 ]
  %36 = getelementptr inbounds i8, ptr %0, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = shl i32 %35, 6
  %43 = and i32 %38, 63
  %44 = or disjoint i32 %43, %42
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %47, label %33, !llvm.loop !61

47:                                               ; preds = %41, %33, %28
  %48 = phi i32 [ %29, %28 ], [ %44, %41 ], [ -1, %33 ]
  %49 = zext nneg i32 %26 to i64
  br label %50

50:                                               ; preds = %24, %47
  %51 = phi i64 [ %49, %47 ], [ 1, %24 ]
  %52 = phi i32 [ %48, %47 ], [ %4, %24 ]
  %53 = load i64, ptr %1, align 8, !tbaa !42
  %54 = add i64 %53, %51
  store i64 %54, ptr %1, align 8, !tbaa !42
  ret i32 %52
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_str_utf8_as_unicode_step(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %1, align 8, !tbaa !42
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp sgt i8 %5, -1
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 224
  %10 = icmp eq i32 %9, 192
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = and i32 %6, 240
  %13 = icmp eq i32 %12, 224
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = and i32 %6, 248
  %16 = icmp eq i32 %15, 240
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = and i32 %6, 252
  %19 = icmp eq i32 %18, 248
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = and i32 %6, 254
  %22 = icmp ne i32 %21, 252
  %23 = select i1 %22, i32 -1, i32 6
  %24 = xor i1 %22, true
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %20, %17, %14, %11, %8, %2
  %27 = phi i1 [ false, %2 ], [ false, %8 ], [ false, %11 ], [ false, %14 ], [ false, %17 ], [ %22, %20 ]
  %28 = phi i32 [ 1, %2 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ %23, %20 ]
  %29 = phi i32 [ 127, %2 ], [ 31, %8 ], [ 15, %11 ], [ 7, %14 ], [ 3, %17 ], [ %25, %20 ]
  br i1 %27, label %30, label %43

30:                                               ; preds = %26
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %34, %32 ], [ %4, %30 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = and i8 %35, -64
  %37 = icmp eq i8 %36, -128
  br i1 %37, label %32, label %38, !llvm.loop !57

38:                                               ; preds = %32, %30
  %39 = phi ptr [ %4, %30 ], [ %34, %32 ]
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %4 to i64
  %42 = sub i64 %40, %41
  br label %68

43:                                               ; preds = %26
  %44 = and i32 %29, %6
  %45 = icmp sgt i32 %28, 1
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = zext nneg i32 %28 to i64
  br label %48

48:                                               ; preds = %46, %56
  %49 = phi i64 [ 1, %46 ], [ %60, %56 ]
  %50 = phi i32 [ %44, %46 ], [ %59, %56 ]
  %51 = getelementptr inbounds i8, ptr %4, i64 %49
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = shl i32 %50, 6
  %58 = and i32 %53, 63
  %59 = or disjoint i32 %58, %57
  %60 = add nuw nsw i64 %49, 1
  %61 = icmp eq i64 %60, %47
  br i1 %61, label %62, label %48, !llvm.loop !62

62:                                               ; preds = %56, %48, %43
  %63 = phi i32 [ %44, %43 ], [ %59, %56 ], [ -1, %48 ]
  %64 = icmp eq i32 %63, -1
  %65 = select i1 %64, i32 1, i32 %28
  %66 = select i1 %64, i32 %6, i32 %63
  %67 = zext nneg i32 %65 to i64
  br label %68

68:                                               ; preds = %62, %38
  %69 = phi i64 [ %67, %62 ], [ %42, %38 ]
  %70 = phi i32 [ %66, %62 ], [ -1, %38 ]
  %71 = add i64 %69, %3
  store i64 %71, ptr %1, align 8, !tbaa !42
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  br i1 %10, label %3, label %11, !llvm.loop !63

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @BLI_str_prev_char_utf8(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %4 = getelementptr inbounds i8, ptr %3, i64 -1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = and i8 %5, -64
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %2, label %8, !llvm.loop !64

8:                                                ; preds = %2
  ret ptr %4
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_partition_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = tail call i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0)
  ret i64 %5
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #10 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  store ptr %7, ptr %3, align 8, !tbaa !65
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %13
  %10 = phi ptr [ %11, %13 ], [ %7, %5 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = icmp ult ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %11, align 1, !tbaa !34
  %15 = and i8 %14, -64
  %16 = icmp eq i8 %15, -128
  br i1 %16, label %9, label %17, !llvm.loop !63

17:                                               ; preds = %13, %9, %5
  %18 = phi ptr [ %0, %5 ], [ %11, %13 ], [ null, %9 ]
  store ptr %18, ptr %2, align 8, !tbaa !65
  %19 = icmp eq ptr %18, null
  br i1 %19, label %119, label %20

20:                                               ; preds = %17
  %21 = ptrtoint ptr %0 to i64
  br label %22

22:                                               ; preds = %20, %116
  %23 = phi i64 [ undef, %20 ], [ %101, %116 ]
  %24 = phi i64 [ 0, %20 ], [ %77, %116 ]
  %25 = phi ptr [ %18, %20 ], [ %117, %116 ]
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %119, label %28

28:                                               ; preds = %22
  %29 = zext i8 %26 to i32
  %30 = icmp sgt i8 %26, -1
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = and i32 %29, 224
  %33 = icmp eq i32 %32, 192
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = and i32 %29, 240
  %36 = icmp eq i32 %35, 224
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = and i32 %29, 248
  %39 = icmp eq i32 %38, 240
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = and i32 %29, 252
  %42 = icmp eq i32 %41, 248
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = and i32 %29, 254
  %45 = icmp ne i32 %44, 252
  %46 = select i1 %45, i32 -1, i32 6
  %47 = xor i1 %45, true
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %43, %40, %37, %34, %31, %28
  %50 = phi i1 [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ %45, %43 ]
  %51 = phi i32 [ 1, %28 ], [ 2, %31 ], [ 3, %34 ], [ 4, %37 ], [ 5, %40 ], [ %46, %43 ]
  %52 = phi i32 [ 127, %28 ], [ 31, %31 ], [ 15, %34 ], [ 7, %37 ], [ 3, %40 ], [ %48, %43 ]
  br i1 %50, label %76, label %53

53:                                               ; preds = %49
  %54 = and i32 %52, %29
  %55 = icmp sgt i32 %51, 1
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %66, %56
  %59 = phi i64 [ 1, %56 ], [ %70, %66 ]
  %60 = phi i32 [ %54, %56 ], [ %69, %66 ]
  %61 = getelementptr inbounds i8, ptr %25, i64 %59
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 192
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = shl i32 %60, 6
  %68 = and i32 %63, 63
  %69 = or disjoint i32 %68, %67
  %70 = add nuw nsw i64 %59, 1
  %71 = icmp eq i64 %70, %57
  br i1 %71, label %72, label %58, !llvm.loop !56

72:                                               ; preds = %66, %58, %53
  %73 = phi i32 [ %54, %53 ], [ %69, %66 ], [ -1, %58 ]
  %74 = zext nneg i32 %51 to i64
  %75 = add i64 %24, %74
  br label %76

76:                                               ; preds = %49, %72
  %77 = phi i64 [ %24, %49 ], [ %75, %72 ]
  %78 = phi i32 [ -1, %49 ], [ %73, %72 ]
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %1, align 4, !tbaa !47
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %88

83:                                               ; preds = %76
  store ptr null, ptr %2, align 8, !tbaa !65
  store ptr null, ptr %3, align 8, !tbaa !65
  br label %100

84:                                               ; preds = %88
  %85 = getelementptr inbounds i32, ptr %90, i64 1
  %86 = load i32, ptr %85, align 4, !tbaa !47
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %88, !llvm.loop !67

88:                                               ; preds = %80, %84
  %89 = phi i32 [ %86, %84 ], [ %81, %80 ]
  %90 = phi ptr [ %85, %84 ], [ %1, %80 ]
  %91 = icmp eq i32 %89, %78
  br i1 %91, label %92, label %84

92:                                               ; preds = %88
  br i1 %8, label %93, label %95

93:                                               ; preds = %92
  %94 = getelementptr inbounds i8, ptr %0, i64 %77
  store ptr %94, ptr %3, align 8, !tbaa !65
  br label %95

95:                                               ; preds = %93, %92
  %96 = load ptr, ptr %2, align 8, !tbaa !65
  %97 = ptrtoint ptr %96 to i64
  %98 = sub i64 %97, %21
  br label %100

99:                                               ; preds = %84, %80
  store ptr %25, ptr %3, align 8, !tbaa !65
  br label %100

100:                                              ; preds = %99, %95, %83
  %101 = phi i64 [ %23, %83 ], [ %98, %95 ], [ %23, %99 ]
  %102 = phi i32 [ 2, %83 ], [ 1, %95 ], [ 0, %99 ]
  switch i32 %102, label %120 [
    i32 0, label %103
    i32 2, label %119
  ]

103:                                              ; preds = %100
  br i1 %8, label %114, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr %2, align 8, !tbaa !65
  br label %106

106:                                              ; preds = %110, %104
  %107 = phi ptr [ %105, %104 ], [ %108, %110 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -1
  %109 = icmp ult ptr %108, %0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i8, ptr %108, align 1, !tbaa !34
  %112 = and i8 %111, -64
  %113 = icmp eq i8 %112, -128
  br i1 %113, label %106, label %116, !llvm.loop !63

114:                                              ; preds = %103
  %115 = getelementptr inbounds i8, ptr %0, i64 %77
  br label %116

116:                                              ; preds = %110, %106, %114
  %117 = phi ptr [ %115, %114 ], [ %108, %110 ], [ null, %106 ]
  store ptr %117, ptr %2, align 8, !tbaa !65
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %22, !llvm.loop !68

119:                                              ; preds = %22, %100, %116, %17
  store ptr null, ptr %2, align 8, !tbaa !65
  store ptr null, ptr %3, align 8, !tbaa !65
  br label %120

120:                                              ; preds = %100, %119
  %121 = phi i64 [ %6, %119 ], [ %101, %100 ]
  ret i64 %121
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_rpartition_utf8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = tail call i64 @BLI_str_partition_ex_utf8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1)
  ret i64 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
!41 = distinct !{!41, !38, !39}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !35, i64 0}
!44 = distinct !{!44, !38, !39}
!45 = distinct !{!45, !38, !39}
!46 = distinct !{!46, !38, !39}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !35, i64 0}
!49 = distinct !{!49, !38, !39}
!50 = distinct !{!50, !38, !39}
!51 = distinct !{!51, !38, !39}
!52 = distinct !{!52, !38, !39}
!53 = distinct !{!53, !38, !39}
!54 = distinct !{!54, !38, !39}
!55 = distinct !{!55, !38, !39}
!56 = distinct !{!56, !38, !39}
!57 = distinct !{!57, !38, !39}
!58 = distinct !{!58, !38, !39}
!59 = distinct !{!59, !38, !39}
!60 = distinct !{!60, !38, !39}
!61 = distinct !{!61, !38, !39}
!62 = distinct !{!62, !38, !39}
!63 = distinct !{!63, !38, !39}
!64 = distinct !{!64, !39}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !35, i64 0}
!67 = distinct !{!67, !38, !39}
!68 = distinct !{!68, !38, !39}
