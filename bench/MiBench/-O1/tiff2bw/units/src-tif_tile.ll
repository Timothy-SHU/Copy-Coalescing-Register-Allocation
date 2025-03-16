; ModuleID = 'src/tif_tile.c'
source_filename = "src/tif_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Col %ld out of range, max %lu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Row %ld out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Depth %ld out of range, max %lu\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Sample %d out of range, max %u\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFComputeTile(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !15
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !16
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 0, i32 %3
  %16 = icmp eq i32 %7, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i32 [ %19, %17 ], [ %7, %5 ]
  %22 = icmp eq i32 %9, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !18
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ %9, %20 ]
  %28 = icmp eq i32 %11, -1
  %29 = select i1 %28, i32 %13, i32 %11
  %30 = icmp ne i32 %21, 0
  %31 = icmp ne i32 %27, 0
  %32 = select i1 %30, i1 %31, i1 false
  %33 = icmp ne i32 %29, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %73

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !17
  %38 = add i32 %21, -1
  %39 = add i32 %38, %37
  %40 = udiv i32 %39, %21
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !18
  %43 = add i32 %27, -1
  %44 = add i32 %43, %42
  %45 = udiv i32 %44, %27
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %47 = load i16, ptr %46, align 2, !tbaa !19
  %48 = icmp eq i16 %47, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = add i32 %13, -1
  %51 = add i32 %50, %29
  %52 = udiv i32 %51, %29
  %53 = zext i16 %4 to i32
  %54 = mul i32 %52, %53
  %55 = udiv i32 %15, %29
  %56 = udiv i32 %2, %27
  %57 = udiv i32 %1, %21
  %58 = add i32 %54, %55
  %59 = mul i32 %58, %45
  %60 = add i32 %59, %56
  %61 = mul i32 %60, %40
  %62 = add i32 %61, %57
  br label %73

63:                                               ; preds = %35
  %64 = udiv i32 %15, %29
  %65 = mul i32 %64, %45
  %66 = udiv i32 %2, %27
  %67 = udiv i32 %1, %21
  %68 = zext i16 %4 to i32
  %69 = add i32 %66, %65
  %70 = mul i32 %69, %40
  %71 = add i32 %67, %68
  %72 = add i32 %71, %70
  br label %73

73:                                               ; preds = %49, %63, %26
  %74 = phi i32 [ 1, %26 ], [ %62, %49 ], [ %72, %63 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFCheckTile(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = zext i32 %1 to i64
  %12 = zext i32 %7 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str, i64 noundef %11, i64 noundef %12) #4
  br label %41

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !20
  %19 = zext i32 %2 to i64
  %20 = zext i32 %15 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.1, i64 noundef %19, i64 noundef %20) #4
  br label %41

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !16
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = zext i32 %3 to i64
  %28 = zext i32 %23 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %26, ptr noundef nonnull @.str.2, i64 noundef %27, i64 noundef %28) #4
  br label %41

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %31 = load i16, ptr %30, align 2, !tbaa !19
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %35 = load i16, ptr %34, align 2, !tbaa !23
  %36 = icmp ugt i16 %35, %4
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = zext i16 %35 to i32
  %39 = zext i16 %4 to i32
  %40 = load ptr, ptr %0, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %40, ptr noundef nonnull @.str.3, i32 noundef %39, i32 noundef %38) #4
  br label %41

41:                                               ; preds = %29, %33, %37, %25, %17, %9
  %42 = phi i32 [ 0, %9 ], [ 0, %17 ], [ 0, %25 ], [ 0, %37 ], [ 1, %33 ], [ 1, %29 ]
  ret i32 %42
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFNumberOfTiles(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = icmp eq i32 %3, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ %3, %1 ]
  %14 = icmp eq i32 %5, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !18
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %17, %15 ], [ %5, %12 ]
  %20 = icmp eq i32 %7, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %23, %21 ], [ %7, %18 ]
  %26 = icmp eq i32 %13, 0
  %27 = icmp eq i32 %19, 0
  %28 = select i1 %26, i1 true, i1 %27
  %29 = icmp eq i32 %25, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !17
  %34 = add i32 %13, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %13
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !18
  %39 = add i32 %19, -1
  %40 = add i32 %39, %38
  %41 = udiv i32 %40, %19
  %42 = mul i32 %41, %36
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !16
  %45 = add i32 %25, -1
  %46 = add i32 %45, %44
  %47 = udiv i32 %46, %25
  %48 = mul i32 %42, %47
  br label %49

49:                                               ; preds = %24, %31
  %50 = phi i32 [ %48, %31 ], [ 0, %24 ]
  %51 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %52 = load i16, ptr %51, align 2, !tbaa !19
  %53 = icmp eq i16 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %56 = load i16, ptr %55, align 2, !tbaa !23
  %57 = zext i16 %56 to i32
  %58 = mul i32 %50, %57
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %58, %54 ], [ %50, %49 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFTileRowSize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !24
  %12 = zext i16 %11 to i32
  %13 = mul i32 %7, %12
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %15 = load i16, ptr %14, align 2, !tbaa !19
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %19 = load i16, ptr %18, align 2, !tbaa !23
  %20 = zext i16 %19 to i32
  %21 = mul nsw i32 %13, %20
  br label %22

22:                                               ; preds = %17, %9
  %23 = phi i32 [ %21, %17 ], [ %13, %9 ]
  %24 = add i32 %23, 7
  %25 = lshr i32 %24, 3
  br label %26

26:                                               ; preds = %1, %5, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFVTileSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %16 = load i16, ptr %15, align 2, !tbaa !19
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %20 = load i16, ptr %19, align 2, !tbaa !25
  %21 = icmp eq i16 %20, 6
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !26
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %29 = load i16, ptr %28, align 8, !tbaa !27
  %30 = zext i16 %29 to i32
  %31 = add i32 %8, -1
  %32 = add i32 %31, %30
  %33 = freeze i32 %32
  %34 = urem i32 %33, %30
  %35 = sub nuw i32 %33, %34
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %37 = load i16, ptr %36, align 4, !tbaa !24
  %38 = zext i16 %37 to i32
  %39 = mul nsw i32 %35, %38
  %40 = add i32 %39, 7
  %41 = lshr i32 %40, 3
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !27
  %44 = freeze i16 %43
  %45 = zext i16 %44 to i32
  %46 = mul nuw nsw i32 %45, %30
  %47 = add i32 %1, -1
  %48 = add i32 %47, %45
  %49 = urem i32 %48, %45
  %50 = sub nuw i32 %48, %49
  %51 = mul i32 %50, %41
  %52 = udiv i32 %51, %46
  %53 = shl i32 %52, 1
  %54 = add i32 %51, %53
  br label %70

55:                                               ; preds = %22, %18, %14
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %57 = load i16, ptr %56, align 4, !tbaa !24
  %58 = zext i16 %57 to i32
  %59 = mul i32 %8, %58
  br i1 %17, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %62 = load i16, ptr %61, align 2, !tbaa !23
  %63 = zext i16 %62 to i32
  %64 = mul nsw i32 %59, %63
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i32 [ %64, %60 ], [ %59, %55 ]
  %67 = add i32 %66, 7
  %68 = lshr i32 %67, 3
  %69 = mul i32 %68, %1
  br label %70

70:                                               ; preds = %65, %27
  %71 = phi i32 [ %69, %65 ], [ %54, %27 ]
  %72 = mul i32 %71, %12
  br label %73

73:                                               ; preds = %2, %6, %10, %70
  %74 = phi i32 [ %72, %70 ], [ 0, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFTileSize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %15 = load i16, ptr %14, align 2, !tbaa !19
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %19 = load i16, ptr %18, align 2, !tbaa !25
  %20 = icmp eq i16 %19, 6
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !26
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %28 = load i16, ptr %27, align 8, !tbaa !27
  %29 = zext i16 %28 to i32
  %30 = add i32 %7, -1
  %31 = add i32 %30, %29
  %32 = freeze i32 %31
  %33 = urem i32 %32, %29
  %34 = sub nuw i32 %32, %33
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !24
  %37 = zext i16 %36 to i32
  %38 = mul nsw i32 %34, %37
  %39 = add i32 %38, 7
  %40 = lshr i32 %39, 3
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !27
  %43 = freeze i16 %42
  %44 = zext i16 %43 to i32
  %45 = mul nuw nsw i32 %44, %29
  %46 = add i32 %3, -1
  %47 = add i32 %46, %44
  %48 = urem i32 %47, %44
  %49 = sub nuw i32 %47, %48
  %50 = mul i32 %49, %40
  %51 = udiv i32 %50, %45
  %52 = shl i32 %51, 1
  %53 = add i32 %50, %52
  br label %69

54:                                               ; preds = %21, %17, %13
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %56 = load i16, ptr %55, align 4, !tbaa !24
  %57 = zext i16 %56 to i32
  %58 = mul i32 %7, %57
  br i1 %16, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %61 = load i16, ptr %60, align 2, !tbaa !23
  %62 = zext i16 %61 to i32
  %63 = mul nsw i32 %58, %62
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i32 [ %63, %59 ], [ %58, %54 ]
  %66 = add i32 %65, 7
  %67 = lshr i32 %66, 3
  %68 = mul i32 %67, %3
  br label %69

69:                                               ; preds = %64, %26
  %70 = phi i32 [ %68, %64 ], [ %53, %26 ]
  %71 = mul i32 %70, %11
  br label %72

72:                                               ; preds = %1, %5, %9, %69
  %73 = phi i32 [ %71, %69 ], [ 0, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local void @TIFFDefaultTileSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 36
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  tail call void %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_TIFFDefaultTileSize(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = load i32, ptr %1, align 4, !tbaa !29
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 256, ptr %1, align 4, !tbaa !29
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i32, ptr %2, align 4, !tbaa !29
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 256, ptr %2, align 4, !tbaa !29
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, ptr %1, align 4, !tbaa !29
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = add i32 %12, 15
  %17 = and i32 %16, -16
  store i32 %17, ptr %1, align 4, !tbaa !29
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr %2, align 4, !tbaa !29
  %20 = and i32 %19, 15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = add i32 %19, 15
  %24 = and i32 %23, -16
  store i32 %24, ptr %2, align 4, !tbaa !29
  br label %25

25:                                               ; preds = %22, %18
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 36}
!6 = !{!"", !7, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52, !10, i64 54, !10, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !9, i64 68, !10, i64 72, !10, i64 74, !11, i64 80, !11, i64 88, !12, i64 96, !12, i64 100, !10, i64 104, !10, i64 106, !12, i64 108, !12, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !10, i64 148, !13, i64 152, !11, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !9, i64 240, !9, i64 244, !13, i64 248, !13, i64 256, !10, i64 264, !13, i64 272, !13, i64 280, !7, i64 288, !10, i64 292, !13, i64 296, !13, i64 304, !13, i64 312, !7, i64 320, !10, i64 344, !10, i64 346, !7, i64 348, !9, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !13, i64 384, !9, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !9, i64 428, !13, i64 432, !13, i64 440, !12, i64 448, !13, i64 456, !13, i64 464}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!6, !9, i64 40}
!15 = !{!6, !9, i64 44}
!16 = !{!6, !9, i64 32}
!17 = !{!6, !9, i64 24}
!18 = !{!6, !9, i64 28}
!19 = !{!6, !10, i64 106}
!20 = !{!21, !13, i64 0}
!21 = !{!"tiff", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !6, i64 32, !22, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !9, i64 536, !10, i64 540, !9, i64 544, !9, i64 548, !9, i64 552, !10, i64 556, !9, i64 560, !9, i64 564, !9, i64 568, !9, i64 572, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !9, i64 712, !9, i64 716, !13, i64 720, !9, i64 728, !13, i64 736, !9, i64 744, !13, i64 752, !9, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !9, i64 848, !13, i64 856, !13, i64 864, !13, i64 872}
!22 = !{!"", !10, i64 0, !10, i64 2, !9, i64 4}
!23 = !{!6, !10, i64 66}
!24 = !{!6, !10, i64 52}
!25 = !{!6, !10, i64 58}
!26 = !{!21, !9, i64 16}
!27 = !{!10, !10, i64 0}
!28 = !{!21, !13, i64 696}
!29 = !{!9, !9, i64 0}
