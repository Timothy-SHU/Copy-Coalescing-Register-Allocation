; ModuleID = 'x264_src/output/flv_bytestream.c'
source_filename = "x264_src/output/flv_bytestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.flv_buffer = type { ptr, i32, i32, ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @dbl2int(double noundef %0) local_unnamed_addr #0 {
  %2 = bitcast double %0 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_byte(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %12, %9 ], [ 16, %2 ]
  %11 = icmp ugt i32 %5, %10
  %12 = shl i32 %10, 1
  br i1 %11, label %9, label %13, !llvm.loop !42

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = zext i32 %10 to i64
  %16 = tail call ptr @realloc(ptr noundef %14, i64 noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  store ptr %16, ptr %0, align 8, !tbaa !45
  store i32 %10, ptr %6, align 4, !tbaa !41
  br label %19

19:                                               ; preds = %18, %2
  %20 = load ptr, ptr %0, align 8, !tbaa !45
  %21 = load i32, ptr %3, align 8, !tbaa !34
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  store i8 %1, ptr %23, align 1
  store i32 %5, ptr %3, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %13, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @flv_append_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 16, %3 ]
  %12 = icmp ugt i32 %6, %11
  %13 = shl i32 %11, 1
  br i1 %12, label %10, label %14, !llvm.loop !42

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = zext i32 %11 to i64
  %17 = tail call ptr @realloc(ptr noundef %15, i64 noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  store ptr %17, ptr %0, align 8, !tbaa !45
  store i32 %11, ptr %7, align 4, !tbaa !41
  br label %20

20:                                               ; preds = %19, %3
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %1, i64 %25, i1 false)
  store i32 %6, ptr %4, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %14, %20
  %27 = phi i32 [ 0, %20 ], [ -1, %14 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be32(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %14, %11 ], [ 16, %2 ]
  %13 = icmp ugt i32 %7, %12
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !42

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !45
  %17 = zext i32 %12 to i64
  %18 = tail call ptr @realloc(ptr noundef %16, i64 noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  store ptr %18, ptr %0, align 8, !tbaa !45
  store i32 %12, ptr %8, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %20, %2
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = load i32, ptr %5, align 8, !tbaa !34
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  store i8 %4, ptr %25, align 1
  store i32 %7, ptr %5, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %15, %21
  %27 = lshr i32 %1, 16
  %28 = trunc i32 %27 to i8
  %29 = load i32, ptr %5, align 8, !tbaa !34
  %30 = add i32 %29, 1
  %31 = load i32, ptr %8, align 4, !tbaa !41
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %36, %33 ], [ 16, %26 ]
  %35 = icmp ugt i32 %30, %34
  %36 = shl i32 %34, 1
  br i1 %35, label %33, label %37, !llvm.loop !42

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !45
  %39 = zext i32 %34 to i64
  %40 = tail call ptr @realloc(ptr noundef %38, i64 noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  store ptr %40, ptr %0, align 8, !tbaa !45
  store i32 %34, ptr %8, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %42, %26
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = load i32, ptr %5, align 8, !tbaa !34
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 %28, ptr %47, align 1
  store i32 %30, ptr %5, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %37, %43
  %49 = lshr i32 %1, 8
  %50 = trunc i32 %49 to i8
  %51 = load i32, ptr %5, align 8, !tbaa !34
  %52 = add i32 %51, 1
  %53 = load i32, ptr %8, align 4, !tbaa !41
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48, %55
  %56 = phi i32 [ %58, %55 ], [ 16, %48 ]
  %57 = icmp ugt i32 %52, %56
  %58 = shl i32 %56, 1
  br i1 %57, label %55, label %59, !llvm.loop !42

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 8, !tbaa !45
  %61 = zext i32 %56 to i64
  %62 = tail call ptr @realloc(ptr noundef %60, i64 noundef %61) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  store ptr %62, ptr %0, align 8, !tbaa !45
  store i32 %56, ptr %8, align 4, !tbaa !41
  br label %65

65:                                               ; preds = %64, %48
  %66 = load ptr, ptr %0, align 8, !tbaa !45
  %67 = load i32, ptr %5, align 8, !tbaa !34
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  store i8 %50, ptr %69, align 1
  store i32 %52, ptr %5, align 8, !tbaa !34
  br label %70

70:                                               ; preds = %59, %65
  %71 = trunc i32 %1 to i8
  %72 = load i32, ptr %5, align 8, !tbaa !34
  %73 = add i32 %72, 1
  %74 = load i32, ptr %8, align 4, !tbaa !41
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %76
  %77 = phi i32 [ %79, %76 ], [ 16, %70 ]
  %78 = icmp ugt i32 %73, %77
  %79 = shl i32 %77, 1
  br i1 %78, label %76, label %80, !llvm.loop !42

80:                                               ; preds = %76
  %81 = load ptr, ptr %0, align 8, !tbaa !45
  %82 = zext i32 %77 to i64
  %83 = tail call ptr @realloc(ptr noundef %81, i64 noundef %82) #11
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  store ptr %83, ptr %0, align 8, !tbaa !45
  store i32 %77, ptr %8, align 4, !tbaa !41
  br label %86

86:                                               ; preds = %85, %70
  %87 = load ptr, ptr %0, align 8, !tbaa !45
  %88 = load i32, ptr %5, align 8, !tbaa !34
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  store i8 %71, ptr %90, align 1
  store i32 %73, ptr %5, align 8, !tbaa !34
  br label %91

91:                                               ; preds = %80, %86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be64(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %4)
  %5 = trunc i64 %1 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be16(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = lshr i16 %1, 8
  %4 = trunc i16 %3 to i8
  %5 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %14, %11 ], [ 16, %2 ]
  %13 = icmp ugt i32 %7, %12
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !42

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !45
  %17 = zext i32 %12 to i64
  %18 = tail call ptr @realloc(ptr noundef %16, i64 noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  store ptr %18, ptr %0, align 8, !tbaa !45
  store i32 %12, ptr %8, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %20, %2
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = load i32, ptr %5, align 8, !tbaa !34
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  store i8 %4, ptr %25, align 1
  store i32 %7, ptr %5, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %15, %21
  %27 = trunc i16 %1 to i8
  %28 = load i32, ptr %5, align 8, !tbaa !34
  %29 = add i32 %28, 1
  %30 = load i32, ptr %8, align 4, !tbaa !41
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26, %32
  %33 = phi i32 [ %35, %32 ], [ 16, %26 ]
  %34 = icmp ugt i32 %29, %33
  %35 = shl i32 %33, 1
  br i1 %34, label %32, label %36, !llvm.loop !42

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !45
  %38 = zext i32 %33 to i64
  %39 = tail call ptr @realloc(ptr noundef %37, i64 noundef %38) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  store ptr %39, ptr %0, align 8, !tbaa !45
  store i32 %33, ptr %8, align 4, !tbaa !41
  br label %42

42:                                               ; preds = %41, %26
  %43 = load ptr, ptr %0, align 8, !tbaa !45
  %44 = load i32, ptr %5, align 8, !tbaa !34
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store i8 %27, ptr %46, align 1
  store i32 %29, ptr %5, align 8, !tbaa !34
  br label %47

47:                                               ; preds = %36, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be24(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i32 %1, 8
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ 16, %2 ]
  %14 = icmp ugt i32 %8, %13
  %15 = shl i32 %13, 1
  br i1 %14, label %12, label %16, !llvm.loop !42

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = zext i32 %13 to i64
  %19 = tail call ptr @realloc(ptr noundef %17, i64 noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  store ptr %19, ptr %0, align 8, !tbaa !45
  store i32 %13, ptr %9, align 4, !tbaa !41
  br label %22

22:                                               ; preds = %21, %2
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = load i32, ptr %6, align 8, !tbaa !34
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  store i8 %5, ptr %26, align 1
  store i32 %8, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %16, %22
  %28 = trunc i32 %3 to i8
  %29 = load i32, ptr %6, align 8, !tbaa !34
  %30 = add i32 %29, 1
  %31 = load i32, ptr %9, align 4, !tbaa !41
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27, %33
  %34 = phi i32 [ %36, %33 ], [ 16, %27 ]
  %35 = icmp ugt i32 %30, %34
  %36 = shl i32 %34, 1
  br i1 %35, label %33, label %37, !llvm.loop !42

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !45
  %39 = zext i32 %34 to i64
  %40 = tail call ptr @realloc(ptr noundef %38, i64 noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  store ptr %40, ptr %0, align 8, !tbaa !45
  store i32 %34, ptr %9, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %42, %27
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = load i32, ptr %6, align 8, !tbaa !34
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 %28, ptr %47, align 1
  store i32 %30, ptr %6, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %37, %43
  %49 = trunc i32 %1 to i8
  %50 = load i32, ptr %6, align 8, !tbaa !34
  %51 = add i32 %50, 1
  %52 = load i32, ptr %9, align 4, !tbaa !41
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48, %54
  %55 = phi i32 [ %57, %54 ], [ 16, %48 ]
  %56 = icmp ugt i32 %51, %55
  %57 = shl i32 %55, 1
  br i1 %56, label %54, label %58, !llvm.loop !42

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 8, !tbaa !45
  %60 = zext i32 %55 to i64
  %61 = tail call ptr @realloc(ptr noundef %59, i64 noundef %60) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  store ptr %61, ptr %0, align 8, !tbaa !45
  store i32 %55, ptr %9, align 4, !tbaa !41
  br label %64

64:                                               ; preds = %63, %48
  %65 = load ptr, ptr %0, align 8, !tbaa !45
  %66 = load i32, ptr %6, align 8, !tbaa !34
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %65, i64 %67
  store i8 %49, ptr %68, align 1
  store i32 %51, ptr %6, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %58, %64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_tag(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %1, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %5, %31
  %9 = phi i8 [ %3, %5 ], [ %32, %31 ]
  %10 = phi ptr [ %1, %5 ], [ %11, %31 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i32, ptr %6, align 8, !tbaa !34
  %13 = add i32 %12, 1
  %14 = load i32, ptr %7, align 4, !tbaa !41
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %8, %16
  %17 = phi i32 [ %19, %16 ], [ 16, %8 ]
  %18 = icmp ugt i32 %13, %17
  %19 = shl i32 %17, 1
  br i1 %18, label %16, label %20, !llvm.loop !42

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = zext i32 %17 to i64
  %23 = tail call ptr @realloc(ptr noundef %21, i64 noundef %22) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  store ptr %23, ptr %0, align 8, !tbaa !45
  store i32 %17, ptr %7, align 4, !tbaa !41
  br label %26

26:                                               ; preds = %25, %8
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = load i32, ptr %6, align 8, !tbaa !34
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  store i8 %9, ptr %30, align 1
  store i32 %13, ptr %6, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %20, %26
  %32 = load i8, ptr %11, align 1, !tbaa !46
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %8, !llvm.loop !47

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = lshr i64 %3, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ 16, %2 ]
  %14 = icmp ugt i32 %8, %13
  %15 = shl i32 %13, 1
  br i1 %14, label %12, label %16, !llvm.loop !42

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = zext i32 %13 to i64
  %19 = tail call ptr @realloc(ptr noundef %17, i64 noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  store ptr %19, ptr %0, align 8, !tbaa !45
  store i32 %13, ptr %9, align 4, !tbaa !41
  br label %22

22:                                               ; preds = %21, %2
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = load i32, ptr %6, align 8, !tbaa !34
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  store i8 %5, ptr %26, align 1
  store i32 %8, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %16, %22
  %28 = trunc i64 %3 to i8
  %29 = load i32, ptr %6, align 8, !tbaa !34
  %30 = add i32 %29, 1
  %31 = load i32, ptr %9, align 4, !tbaa !41
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27, %33
  %34 = phi i32 [ %36, %33 ], [ 16, %27 ]
  %35 = icmp ugt i32 %30, %34
  %36 = shl i32 %34, 1
  br i1 %35, label %33, label %37, !llvm.loop !42

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !45
  %39 = zext i32 %34 to i64
  %40 = tail call ptr @realloc(ptr noundef %38, i64 noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  store ptr %40, ptr %0, align 8, !tbaa !45
  store i32 %34, ptr %9, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %42, %27
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = load i32, ptr %6, align 8, !tbaa !34
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 %28, ptr %47, align 1
  store i32 %30, ptr %6, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %37, %43
  %49 = trunc i64 %3 to i32
  %50 = and i32 %49, 65535
  %51 = load i32, ptr %6, align 8, !tbaa !34
  %52 = add i32 %51, %50
  %53 = load i32, ptr %9, align 4, !tbaa !41
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48, %55
  %56 = phi i32 [ %58, %55 ], [ 16, %48 ]
  %57 = icmp ugt i32 %52, %56
  %58 = shl i32 %56, 1
  br i1 %57, label %55, label %59, !llvm.loop !42

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 8, !tbaa !45
  %61 = zext i32 %56 to i64
  %62 = tail call ptr @realloc(ptr noundef %60, i64 noundef %61) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  store ptr %62, ptr %0, align 8, !tbaa !45
  store i32 %56, ptr %9, align 4, !tbaa !41
  br label %65

65:                                               ; preds = %64, %48
  %66 = load ptr, ptr %0, align 8, !tbaa !45
  %67 = load i32, ptr %6, align 8, !tbaa !34
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  %70 = and i64 %3, 65535
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %1, i64 %70, i1 false)
  store i32 %52, ptr %6, align 8, !tbaa !34
  br label %71

71:                                               ; preds = %59, %65
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_double(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %12, %9 ], [ 16, %2 ]
  %11 = icmp ugt i32 %5, %10
  %12 = shl i32 %10, 1
  br i1 %11, label %9, label %13, !llvm.loop !42

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = zext i32 %10 to i64
  %16 = tail call ptr @realloc(ptr noundef %14, i64 noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  store ptr %16, ptr %0, align 8, !tbaa !45
  store i32 %10, ptr %6, align 4, !tbaa !41
  br label %19

19:                                               ; preds = %18, %2
  %20 = load ptr, ptr %0, align 8, !tbaa !45
  %21 = load i32, ptr %3, align 8, !tbaa !34
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  store i8 0, ptr %23, align 1
  store i32 %5, ptr %3, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %13, %19
  %25 = bitcast double %1 to i64
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %27)
  %28 = trunc i64 %25 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %28)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @flv_create_writer(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #12
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.flv_buffer, ptr %2, i64 0, i32 3
  br i1 %6, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !48
  br label %12

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  store ptr %13, ptr %7, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @free(ptr noundef %2) #14
  br label %16

16:                                               ; preds = %12, %1, %15
  %17 = phi ptr [ null, %15 ], [ null, %1 ], [ %2, %12 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rewrite_amf_be24(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i8
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store i8 %5, ptr %8, align 1, !tbaa !46
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = getelementptr inbounds i8, ptr %11, i64 %7
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %10, ptr %13, align 1, !tbaa !46
  %14 = trunc i32 %1 to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = getelementptr inbounds i8, ptr %15, i64 %7
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %14, ptr %17, align 1, !tbaa !46
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @flv_flush_data(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i64 @fwrite(ptr noundef %6, i64 noundef %7, i64 noundef 1, ptr noundef %9)
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i32, ptr %2, align 8, !tbaa !34
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = add i64 %16, %14
  store i64 %17, ptr %15, align 8, !tbaa !50
  store i32 0, ptr %2, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %5, %1, %12
  %19 = phi i32 [ 0, %12 ], [ 0, %1 ], [ -1, %5 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

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
!34 = !{!35, !39, i64 8}
!35 = !{!"flv_buffer", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !40, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!35, !39, i64 12}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!35, !36, i64 0}
!46 = !{!37, !37, i64 0}
!47 = distinct !{!47, !43, !44}
!48 = !{!36, !36, i64 0}
!49 = !{!35, !36, i64 16}
!50 = !{!35, !40, i64 24}
