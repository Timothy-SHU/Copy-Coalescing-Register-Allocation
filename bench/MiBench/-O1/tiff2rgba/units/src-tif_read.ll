; ModuleID = 'src/tif_read.c'
source_filename = "src/tif_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%ld: Strip out of range, max %ld\00", align 1
@TIFFReadRawStrip.module = internal constant [17 x i8] c"TIFFReadRawStrip\00", align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"%lu: Strip out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%lu: Invalid strip byte count, strip %lu\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%ld: Tile out of range, max %ld\00", align 1
@TIFFReadRawTile.module = internal constant [16 x i8] c"TIFFReadRawTile\00", align 16
@.str.4 = private unnamed_addr constant [32 x i8] c"%lu: Tile out of range, max %lu\00", align 1
@TIFFReadBufferSetup.module = internal constant [20 x i8] c"TIFFReadBufferSetup\00", align 16
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: No space for data buffer at scanline %ld\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"(cc & 1) == 0\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"src/tif_read.c\00", align 1
@__PRETTY_FUNCTION__._TIFFSwab16BitData = private unnamed_addr constant [51 x i8] c"void _TIFFSwab16BitData(TIFF *, tidata_t, tsize_t)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(cc & 3) == 0\00", align 1
@__PRETTY_FUNCTION__._TIFFSwab32BitData = private unnamed_addr constant [51 x i8] c"void _TIFFSwab32BitData(TIFF *, tidata_t, tsize_t)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(cc & 7) == 0\00", align 1
@__PRETTY_FUNCTION__._TIFFSwab64BitData = private unnamed_addr constant [51 x i8] c"void _TIFFSwab64BitData(TIFF *, tidata_t, tsize_t)\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%lu: Row out of range, max %lu\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%lu: Sample out of range, max %lu\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s: Seek error at scanline %lu, strip %lu\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"%s: Read error at scanline %lu; got %lu bytes, expected %lu\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"%s: Read error at scanline %lu, strip %lu; got %lu bytes, expected %lu\00", align 1
@TIFFFillStrip.module = internal constant [14 x i8] c"TIFFFillStrip\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"%s: Read error on strip %lu; got %lu bytes, expected %lu\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"%s: Data buffer too small to hold strip %lu\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"%s: Seek error at row %ld, col %ld, tile %ld\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"%s: Read error at row %ld, col %ld; got %lu bytes, expected %lu\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"%s: Read error at row %ld, col %ld, tile %ld; got %lu bytes, expected %lu\00", align 1
@TIFFFillTile.module = internal constant [13 x i8] c"TIFFFillTile\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%lu: Invalid tile byte count, tile %lu\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"%s: Data buffer too small to hold tile %ld\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"File not open for reading\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Can not read tiles from a stripped image\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Can not read scanlines from a tiled image\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadScanline(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef nonnull @.str.22) #5
  br label %124

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.24) #5
  br label %124

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = icmp ugt i32 %19, %2
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !16
  %23 = zext i32 %2 to i64
  %24 = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef nonnull @.str.10, i64 noundef %23, i64 noundef %24) #5
  br label %124

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %27 = load i16, ptr %26, align 2, !tbaa !19
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %31 = load i16, ptr %30, align 2, !tbaa !20
  %32 = icmp ugt i16 %31, %3
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !16
  %35 = zext i16 %3 to i64
  %36 = zext i16 %31 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %34, ptr noundef nonnull @.str.11, i64 noundef %35, i64 noundef %36) #5
  br label %124

37:                                               ; preds = %29
  %38 = zext i16 %3 to i32
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %40 = load i32, ptr %39, align 8, !tbaa !21
  %41 = mul i32 %40, %38
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %43 = load i32, ptr %42, align 4, !tbaa !22
  %44 = udiv i32 %2, %43
  %45 = add i32 %44, %41
  br label %50

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %48 = load i32, ptr %47, align 4, !tbaa !22
  %49 = udiv i32 %2, %48
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i32 [ %45, %37 ], [ %49, %46 ]
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !23
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @TIFFFillStrip(ptr noundef %0, i32 noundef %51)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %124, label %97

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = icmp ugt i32 %60, %2
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !17
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  %69 = load ptr, ptr %68, align 8, !tbaa !25
  %70 = tail call i32 %69(ptr noundef %0) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %124, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %63, align 8, !tbaa !17
  %74 = or i32 %73, 32
  store i32 %74, ptr %63, align 8, !tbaa !17
  br label %75

75:                                               ; preds = %72, %62
  store i32 %51, ptr %52, align 8, !tbaa !23
  %76 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %77 = load i32, ptr %76, align 8, !tbaa !21
  %78 = urem i32 %51, %77
  %79 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %80 = load i32, ptr %79, align 4, !tbaa !22
  %81 = mul i32 %80, %78
  store i32 %81, ptr %59, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %83 = load ptr, ptr %82, align 8, !tbaa !26
  %84 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %83, ptr %84, align 8, !tbaa !27
  %85 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %86 = load ptr, ptr %85, align 8, !tbaa !28
  %87 = zext i32 %51 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !29
  %90 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 %89, ptr %90, align 8, !tbaa !30
  %91 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  %93 = udiv i32 %51, %77
  %94 = trunc i32 %93 to i16
  %95 = tail call i32 %92(ptr noundef %0, i16 noundef zeroext %94) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %75, %58, %55
  %98 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %99 = load i32, ptr %98, align 8, !tbaa !24
  %100 = icmp eq i32 %99, %2
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 33
  %103 = load ptr, ptr %102, align 8, !tbaa !32
  %104 = sub i32 %2, %99
  %105 = tail call i32 %103(ptr noundef %0, i32 noundef %104) #5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %101
  store i32 %2, ptr %98, align 8, !tbaa !24
  br label %108

108:                                              ; preds = %107, %97
  %109 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  %110 = load ptr, ptr %109, align 8, !tbaa !33
  %111 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %112 = load i32, ptr %111, align 8, !tbaa !34
  %113 = tail call i32 %110(ptr noundef %0, ptr noundef %1, i32 noundef %112, i16 noundef zeroext %3) #5
  %114 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %115 = load i32, ptr %114, align 8, !tbaa !24
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !24
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = load i32, ptr %111, align 8, !tbaa !34
  tail call void %120(ptr noundef %0, ptr noundef %1, i32 noundef %121) #5
  %122 = icmp slt i32 %113, 1
  %123 = select i1 %122, i32 -1, i32 1
  br label %124

124:                                              ; preds = %21, %33, %55, %75, %101, %67, %8, %15, %118, %108
  %125 = phi i32 [ %123, %118 ], [ -1, %108 ], [ -1, %15 ], [ -1, %8 ], [ -1, %67 ], [ -1, %101 ], [ -1, %75 ], [ -1, %55 ], [ -1, %33 ], [ -1, %21 ]
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadEncodedStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef nonnull @.str.22) #5
  br label %58

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.24) #5
  br label %58

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !16
  %23 = zext i32 %1 to i64
  %24 = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef nonnull @.str, i64 noundef %23, i64 noundef %24) #5
  br label %58

25:                                               ; preds = %17
  %26 = add i32 %19, -1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !18
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %32 = load i32, ptr %31, align 4, !tbaa !22
  %33 = urem i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %25
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %37 = load i32, ptr %36, align 4, !tbaa !22
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i32 [ %37, %35 ], [ %33, %28 ]
  %40 = tail call i32 @TIFFVStripSize(ptr noundef %0, i32 noundef %39) #5
  %41 = icmp eq i32 %3, -1
  %42 = tail call i32 @llvm.smin.i32(i32 %40, i32 %3)
  %43 = select i1 %41, i32 %40, i32 %42
  %44 = tail call fastcc i32 @TIFFFillStrip(ptr noundef %0, i32 noundef %1)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  %48 = load ptr, ptr %47, align 8, !tbaa !37
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %50 = load i32, ptr %49, align 8, !tbaa !21
  %51 = udiv i32 %1, %50
  %52 = trunc i32 %51 to i16
  %53 = tail call i32 %48(ptr noundef %0, ptr noundef %2, i32 noundef %43, i16 noundef zeroext %52) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  tail call void %57(ptr noundef %0, ptr noundef %2, i32 noundef %43) #5
  br label %58

58:                                               ; preds = %8, %15, %38, %46, %55, %21
  %59 = phi i32 [ -1, %21 ], [ %43, %55 ], [ -1, %46 ], [ -1, %38 ], [ -1, %15 ], [ -1, %8 ]
  ret i32 %59
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @TIFFVStripSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFFillStrip(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !29
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !16
  %11 = sext i32 %7 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str.2, i64 noundef %11, i64 noundef %5) #5
  br label %134

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %19 = load i16, ptr %18, align 2, !tbaa !38
  %20 = or i16 %19, 256
  %21 = zext i16 %20 to i32
  %22 = and i32 %14, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %17
  %25 = and i32 %14, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @_TIFFfree(ptr noundef nonnull %29) #5
  br label %32

32:                                               ; preds = %31, %27, %24
  %33 = load i32, ptr %13, align 8, !tbaa !17
  %34 = and i32 %33, -513
  store i32 %34, ptr %13, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds i32, ptr %36, i64 %5
  %38 = load i32, ptr %37, align 4, !tbaa !29
  %39 = add nsw i32 %38, %7
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %41 = load i32, ptr %40, align 8, !tbaa !40
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load ptr, ptr %0, align 8, !tbaa !16
  %45 = sext i32 %41 to i64
  %46 = zext i32 %38 to i64
  %47 = sub nsw i64 %45, %46
  %48 = zext nneg i32 %7 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillStrip.module, ptr noundef nonnull @.str.15, ptr noundef %44, i64 noundef %5, i64 noundef %47, i64 noundef %48) #5
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 -1, ptr %49, align 8, !tbaa !23
  br label %134

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %7, ptr %51, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = load i32, ptr %37, align 4, !tbaa !29
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  store ptr %56, ptr %57, align 8, !tbaa !26
  br label %101

58:                                               ; preds = %17, %12
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %60 = load i32, ptr %59, align 8, !tbaa !41
  %61 = icmp sgt i32 %7, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 -1, ptr %63, align 8, !tbaa !23
  %64 = and i32 %14, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillStrip.module, ptr noundef nonnull @.str.16, ptr noundef %67, i64 noundef %5) #5
  br label %134

68:                                               ; preds = %62
  %69 = add nuw i32 %7, 1023
  %70 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %71 = load ptr, ptr %70, align 8, !tbaa !26
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @_TIFFfree(ptr noundef nonnull %71) #5
  store ptr null, ptr %70, align 8, !tbaa !26
  br label %74

74:                                               ; preds = %73, %68
  %75 = and i32 %69, -1024
  store i32 %75, ptr %59, align 8, !tbaa !41
  %76 = tail call ptr @_TIFFmalloc(i32 noundef %75) #5
  store ptr %76, ptr %70, align 8, !tbaa !26
  %77 = load i32, ptr %13, align 8, !tbaa !17
  %78 = or i32 %77, 512
  store i32 %78, ptr %13, align 8, !tbaa !17
  %79 = icmp eq ptr %76, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load ptr, ptr %0, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !24
  %84 = zext i32 %83 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFReadBufferSetup.module, ptr noundef nonnull @.str.5, ptr noundef %81, i64 noundef %84) #5
  store i32 0, ptr %59, align 8, !tbaa !41
  br label %134

85:                                               ; preds = %74, %58
  %86 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %87 = load ptr, ptr %86, align 8, !tbaa !26
  %88 = tail call fastcc i32 @TIFFReadRawStrip1(ptr noundef %0, i32 noundef %1, ptr noundef %87, i32 noundef %7, ptr noundef nonnull @TIFFFillStrip.module)
  %89 = icmp eq i32 %88, %7
  br i1 %89, label %90, label %134

90:                                               ; preds = %85
  %91 = load i32, ptr %13, align 8, !tbaa !17
  %92 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %93 = load i16, ptr %92, align 2, !tbaa !38
  %94 = or i16 %93, 256
  %95 = zext i16 %94 to i32
  %96 = and i32 %91, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load ptr, ptr %86, align 8, !tbaa !26
  %100 = zext nneg i32 %7 to i64
  tail call void @TIFFReverseBits(ptr noundef %99, i64 noundef %100) #5
  br label %101

101:                                              ; preds = %90, %98, %50
  %102 = load i32, ptr %13, align 8, !tbaa !17
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  %108 = tail call i32 %107(ptr noundef %0) #5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %13, align 8, !tbaa !17
  %112 = or i32 %111, 32
  store i32 %112, ptr %13, align 8, !tbaa !17
  br label %113

113:                                              ; preds = %110, %101
  %114 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 %1, ptr %114, align 8, !tbaa !23
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %116 = load i32, ptr %115, align 8, !tbaa !21
  %117 = urem i32 %1, %116
  %118 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %119 = load i32, ptr %118, align 4, !tbaa !22
  %120 = mul i32 %119, %117
  %121 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %120, ptr %121, align 8, !tbaa !24
  %122 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %123 = load ptr, ptr %122, align 8, !tbaa !26
  %124 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %123, ptr %124, align 8, !tbaa !27
  %125 = load ptr, ptr %3, align 8, !tbaa !28
  %126 = getelementptr inbounds i32, ptr %125, i64 %5
  %127 = load i32, ptr %126, align 4, !tbaa !29
  %128 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 %127, ptr %128, align 8, !tbaa !30
  %129 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  %130 = load ptr, ptr %129, align 8, !tbaa !31
  %131 = udiv i32 %1, %116
  %132 = trunc i32 %131 to i16
  %133 = tail call i32 %130(ptr noundef %0, i16 noundef zeroext %132) #5
  br label %134

134:                                              ; preds = %80, %113, %105, %85, %66, %43, %9
  %135 = phi i32 [ 0, %9 ], [ 0, %43 ], [ 0, %66 ], [ 0, %80 ], [ 0, %85 ], [ %133, %113 ], [ 0, %105 ]
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFReadRawStrip(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef nonnull @.str.22) #5
  br label %40

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.24) #5
  br label %40

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !16
  %23 = zext i32 %1 to i64
  %24 = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef nonnull @.str.1, i64 noundef %23, i64 noundef %24) #5
  br label %40

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !29
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr %0, align 8, !tbaa !16
  %34 = sext i32 %30 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %33, ptr noundef nonnull @.str.2, i64 noundef %34, i64 noundef %28) #5
  br label %40

35:                                               ; preds = %25
  %36 = icmp eq i32 %3, -1
  %37 = tail call i32 @llvm.smin.i32(i32 %30, i32 %3)
  %38 = select i1 %36, i32 %30, i32 %37
  %39 = tail call fastcc i32 @TIFFReadRawStrip1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %38, ptr noundef nonnull @TIFFReadRawStrip.module)
  br label %40

40:                                               ; preds = %8, %15, %35, %32, %21
  %41 = phi i32 [ -1, %21 ], [ -1, %32 ], [ %39, %35 ], [ -1, %15 ], [ -1, %8 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFReadRawStrip1(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !29
  %20 = tail call i32 %12(ptr noundef %14, i32 noundef %19, i32 noundef 0) #5
  %21 = load ptr, ptr %15, align 8, !tbaa !39
  %22 = getelementptr inbounds i32, ptr %21, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !29
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %0, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !24
  %29 = zext i32 %28 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %26, i64 noundef %29, i64 noundef %17) #5
  br label %67

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = load ptr, ptr %13, align 8, !tbaa !44
  %34 = tail call i32 %32(ptr noundef %33, ptr noundef %2, i32 noundef %3) #5
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %67, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %0, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !24
  %40 = zext i32 %39 to i64
  %41 = sext i32 %34 to i64
  %42 = sext i32 %3 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef %37, i64 noundef %40, i64 noundef %41, i64 noundef %42) #5
  br label %67

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = zext i32 %1 to i64
  %47 = getelementptr inbounds i32, ptr %45, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !29
  %49 = add i32 %48, %3
  %50 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !40
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load ptr, ptr %0, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %56 = load i32, ptr %55, align 8, !tbaa !24
  %57 = zext i32 %56 to i64
  %58 = sext i32 %51 to i64
  %59 = zext i32 %48 to i64
  %60 = sub nsw i64 %58, %59
  %61 = sext i32 %3 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef %54, i64 noundef %57, i64 noundef %46, i64 noundef %60, i64 noundef %61) #5
  br label %67

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = zext i32 %48 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  tail call void @_TIFFmemcpy(ptr noundef %2, ptr noundef %66, i32 noundef %3) #5
  br label %67

67:                                               ; preds = %36, %25, %62, %30, %53
  %68 = phi i32 [ -1, %53 ], [ %3, %30 ], [ %3, %62 ], [ -1, %25 ], [ -1, %36 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %11, ptr noundef nonnull @.str.22) #5
  br label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.23) #5
  br label %25

19:                                               ; preds = %12
  %20 = tail call i32 @TIFFCheckTile(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @TIFFComputeTile(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #5
  %24 = tail call i32 @TIFFReadEncodedTile(ptr noundef %0, i32 noundef %23, ptr noundef %1, i32 noundef -1)
  br label %25

25:                                               ; preds = %10, %17, %19, %22
  %26 = phi i32 [ %24, %22 ], [ -1, %19 ], [ -1, %17 ], [ -1, %10 ]
  ret i32 %26
}

declare i32 @TIFFCheckTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadEncodedTile(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %11, ptr noundef nonnull @.str.22) #5
  br label %185

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.23) #5
  br label %185

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %21 = load i32, ptr %20, align 4, !tbaa !36
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 8, !tbaa !16
  %25 = zext i32 %1 to i64
  %26 = zext i32 %21 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %24, ptr noundef nonnull @.str.3, i64 noundef %25, i64 noundef %26) #5
  br label %185

27:                                               ; preds = %19
  %28 = icmp eq i32 %3, -1
  %29 = tail call i32 @llvm.smin.i32(i32 %6, i32 %3)
  %30 = select i1 %28, i32 %6, i32 %29
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = zext i32 %1 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !29
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load ptr, ptr %0, align 8, !tbaa !16
  %39 = sext i32 %35 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.20, i64 noundef %39, i64 noundef %33) #5
  br label %185

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !17
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %81, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %47 = load i16, ptr %46, align 2, !tbaa !38
  %48 = or i16 %47, 256
  %49 = zext i16 %48 to i32
  %50 = and i32 %42, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %45
  %53 = and i32 %42, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @_TIFFfree(ptr noundef nonnull %57) #5
  br label %60

60:                                               ; preds = %59, %55, %52
  %61 = load i32, ptr %41, align 8, !tbaa !17
  %62 = and i32 %61, -513
  store i32 %62, ptr %41, align 8, !tbaa !17
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  %65 = getelementptr inbounds i32, ptr %64, i64 %33
  %66 = load i32, ptr %65, align 4, !tbaa !29
  %67 = add i32 %66, %35
  %68 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %69 = load i32, ptr %68, align 8, !tbaa !40
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  store i32 -1, ptr %72, align 8, !tbaa !47
  br label %185

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %35, ptr %74, align 8, !tbaa !41
  %75 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %76 = load ptr, ptr %75, align 8, !tbaa !42
  %77 = load i32, ptr %65, align 4, !tbaa !29
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %76, i64 %78
  %80 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  store ptr %79, ptr %80, align 8, !tbaa !26
  br label %124

81:                                               ; preds = %45, %40
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %83 = load i32, ptr %82, align 8, !tbaa !41
  %84 = icmp sgt i32 %35, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  store i32 -1, ptr %86, align 8, !tbaa !47
  %87 = and i32 %42, 512
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillTile.module, ptr noundef nonnull @.str.21, ptr noundef %90, i64 noundef %33) #5
  br label %185

91:                                               ; preds = %85
  %92 = add nuw i32 %35, 1023
  %93 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %94 = load ptr, ptr %93, align 8, !tbaa !26
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @_TIFFfree(ptr noundef nonnull %94) #5
  store ptr null, ptr %93, align 8, !tbaa !26
  br label %97

97:                                               ; preds = %96, %91
  %98 = and i32 %92, -1024
  store i32 %98, ptr %82, align 8, !tbaa !41
  %99 = tail call ptr @_TIFFmalloc(i32 noundef %98) #5
  store ptr %99, ptr %93, align 8, !tbaa !26
  %100 = load i32, ptr %41, align 8, !tbaa !17
  %101 = or i32 %100, 512
  store i32 %101, ptr %41, align 8, !tbaa !17
  %102 = icmp eq ptr %99, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load ptr, ptr %0, align 8, !tbaa !16
  %105 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %106 = load i32, ptr %105, align 8, !tbaa !24
  %107 = zext i32 %106 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFReadBufferSetup.module, ptr noundef nonnull @.str.5, ptr noundef %104, i64 noundef %107) #5
  store i32 0, ptr %82, align 8, !tbaa !41
  br label %185

108:                                              ; preds = %97, %81
  %109 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %110 = load ptr, ptr %109, align 8, !tbaa !26
  %111 = tail call fastcc i32 @TIFFReadRawTile1(ptr noundef %0, i32 noundef %1, ptr noundef %110, i32 noundef %35, ptr noundef nonnull @TIFFFillTile.module)
  %112 = icmp eq i32 %111, %35
  br i1 %112, label %113, label %185

113:                                              ; preds = %108
  %114 = load i32, ptr %41, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %116 = load i16, ptr %115, align 2, !tbaa !38
  %117 = or i16 %116, 256
  %118 = zext i16 %117 to i32
  %119 = and i32 %114, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load ptr, ptr %109, align 8, !tbaa !26
  %123 = zext nneg i32 %35 to i64
  tail call void @TIFFReverseBits(ptr noundef %122, i64 noundef %123) #5
  br label %124

124:                                              ; preds = %121, %113, %73
  %125 = load i32, ptr %41, align 8, !tbaa !17
  %126 = and i32 %125, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  %130 = load ptr, ptr %129, align 8, !tbaa !25
  %131 = tail call i32 %130(ptr noundef %0) #5
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %185, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %41, align 8, !tbaa !17
  %135 = or i32 %134, 32
  store i32 %135, ptr %41, align 8, !tbaa !17
  br label %136

136:                                              ; preds = %133, %124
  %137 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  store i32 %1, ptr %137, align 8, !tbaa !47
  %138 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !48
  %140 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %141 = load i32, ptr %140, align 4, !tbaa !49
  %142 = add i32 %139, -1
  %143 = add i32 %142, %141
  %144 = udiv i32 %143, %141
  %145 = urem i32 %1, %144
  %146 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %147 = load i32, ptr %146, align 8, !tbaa !50
  %148 = mul i32 %147, %145
  %149 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %148, ptr %149, align 8, !tbaa !24
  %150 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !18
  %152 = add i32 %147, -1
  %153 = add i32 %152, %151
  %154 = udiv i32 %153, %147
  %155 = urem i32 %1, %154
  %156 = mul i32 %155, %141
  %157 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  store i32 %156, ptr %157, align 4, !tbaa !51
  %158 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %159 = load ptr, ptr %158, align 8, !tbaa !26
  %160 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %159, ptr %160, align 8, !tbaa !27
  %161 = load ptr, ptr %31, align 8, !tbaa !28
  %162 = getelementptr inbounds i32, ptr %161, i64 %33
  %163 = load i32, ptr %162, align 4, !tbaa !29
  %164 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 %163, ptr %164, align 8, !tbaa !30
  %165 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  %166 = load ptr, ptr %165, align 8, !tbaa !31
  %167 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %168 = load i32, ptr %167, align 8, !tbaa !21
  %169 = udiv i32 %1, %168
  %170 = trunc i32 %169 to i16
  %171 = tail call i32 %166(ptr noundef %0, i16 noundef zeroext %170) #5
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %136
  %174 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  %175 = load ptr, ptr %174, align 8, !tbaa !52
  %176 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %177 = load i32, ptr %176, align 8, !tbaa !21
  %178 = udiv i32 %1, %177
  %179 = trunc i32 %178 to i16
  %180 = tail call i32 %175(ptr noundef %0, ptr noundef %2, i32 noundef %30, i16 noundef zeroext %179) #5
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  %184 = load ptr, ptr %183, align 8, !tbaa !35
  tail call void %184(ptr noundef %0, ptr noundef %2, i32 noundef %30) #5
  br label %185

185:                                              ; preds = %37, %71, %89, %103, %108, %128, %10, %17, %136, %173, %182, %23
  %186 = phi i32 [ -1, %23 ], [ %30, %182 ], [ -1, %173 ], [ -1, %136 ], [ -1, %17 ], [ -1, %10 ], [ -1, %128 ], [ -1, %108 ], [ -1, %103 ], [ -1, %89 ], [ -1, %71 ], [ -1, %37 ]
  ret i32 %186
}

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFReadRawTile(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef nonnull @.str.22) #5
  br label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.23) #5
  br label %35

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !16
  %23 = zext i32 %1 to i64
  %24 = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef nonnull @.str.4, i64 noundef %23, i64 noundef %24) #5
  br label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !29
  %31 = icmp eq i32 %3, -1
  %32 = tail call i32 @llvm.smin.i32(i32 %30, i32 %3)
  %33 = select i1 %31, i32 %30, i32 %32
  %34 = tail call fastcc i32 @TIFFReadRawTile1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %33, ptr noundef nonnull @TIFFReadRawTile.module)
  br label %35

35:                                               ; preds = %8, %15, %25, %21
  %36 = phi i32 [ -1, %21 ], [ %34, %25 ], [ -1, %15 ], [ -1, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFReadRawTile1(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !29
  %20 = tail call i32 %12(ptr noundef %14, i32 noundef %19, i32 noundef 0) #5
  %21 = load ptr, ptr %15, align 8, !tbaa !39
  %22 = getelementptr inbounds i32, ptr %21, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !29
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %0, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !24
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = zext i32 %31 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef %26, i64 noundef %29, i64 noundef %32, i64 noundef %17) #5
  br label %76

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = load ptr, ptr %13, align 8, !tbaa !44
  %37 = tail call i32 %35(ptr noundef %36, ptr noundef %2, i32 noundef %3) #5
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %76, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !24
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  %45 = load i32, ptr %44, align 4, !tbaa !51
  %46 = zext i32 %45 to i64
  %47 = sext i32 %37 to i64
  %48 = sext i32 %3 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %40, i64 noundef %43, i64 noundef %46, i64 noundef %47, i64 noundef %48) #5
  br label %76

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = zext i32 %1 to i64
  %53 = getelementptr inbounds i32, ptr %51, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !29
  %55 = add i32 %54, %3
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %57 = load i32, ptr %56, align 8, !tbaa !40
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load ptr, ptr %0, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  %65 = load i32, ptr %64, align 4, !tbaa !51
  %66 = zext i32 %65 to i64
  %67 = sext i32 %57 to i64
  %68 = zext i32 %54 to i64
  %69 = sub nsw i64 %67, %68
  %70 = sext i32 %3 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef %60, i64 noundef %63, i64 noundef %66, i64 noundef %52, i64 noundef %69, i64 noundef %70) #5
  br label %76

71:                                               ; preds = %49
  %72 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = zext i32 %54 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  tail call void @_TIFFmemcpy(ptr noundef %2, ptr noundef %75, i32 noundef %3) #5
  br label %76

76:                                               ; preds = %39, %25, %71, %33, %59
  %77 = phi i32 [ -1, %59 ], [ %3, %33 ], [ %3, %71 ], [ -1, %25 ], [ -1, %39 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFReadBufferSetup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @_TIFFfree(ptr noundef nonnull %5) #5
  br label %13

13:                                               ; preds = %12, %7
  store ptr null, ptr %4, align 8, !tbaa !26
  br label %14

14:                                               ; preds = %13, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %2, ptr %17, align 8, !tbaa !41
  store ptr %1, ptr %4, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !17
  %20 = and i32 %19, -513
  store i32 %20, ptr %18, align 8, !tbaa !17
  br label %29

21:                                               ; preds = %14
  %22 = add i32 %2, 1023
  %23 = and i32 %22, -1024
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %23, ptr %24, align 8, !tbaa !41
  %25 = tail call ptr @_TIFFmalloc(i32 noundef %23) #5
  store ptr %25, ptr %4, align 8, !tbaa !26
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = or i32 %27, 512
  store i32 %28, ptr %26, align 8, !tbaa !17
  br label %29

29:                                               ; preds = %21, %16
  %30 = load ptr, ptr %4, align 8, !tbaa !26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !24
  %36 = zext i32 %35 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFReadBufferSetup.module, ptr noundef nonnull @.str.5, ptr noundef %33, i64 noundef %36) #5
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 0, ptr %37, align 8, !tbaa !41
  br label %38

38:                                               ; preds = %29, %32
  %39 = phi i32 [ 0, %32 ], [ 1, %29 ]
  ret i32 %39
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_TIFFNoPostDecode(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFSwab16BitData(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 608, ptr noundef nonnull @__PRETTY_FUNCTION__._TIFFSwab16BitData) #6
  unreachable

7:                                                ; preds = %3
  %8 = ashr exact i32 %2, 1
  %9 = sext i32 %8 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %9) #5
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFSwab32BitData(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._TIFFSwab32BitData) #6
  unreachable

7:                                                ; preds = %3
  %8 = ashr exact i32 %2, 2
  %9 = sext i32 %8 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef %1, i64 noundef %9) #5
  ret void
}

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFSwab64BitData(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 624, ptr noundef nonnull @__PRETTY_FUNCTION__._TIFFSwab64BitData) #6
  unreachable

7:                                                ; preds = %3
  %8 = ashr exact i32 %2, 3
  %9 = sext i32 %8 to i64
  tail call void @TIFFSwabArrayOfDouble(ptr noundef %1, i64 noundef %9) #5
  ret void
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @TIFFReverseBits(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !7, i64 0}
!17 = !{!6, !10, i64 16}
!18 = !{!11, !10, i64 28}
!19 = !{!11, !12, i64 106}
!20 = !{!11, !12, i64 66}
!21 = !{!11, !10, i64 240}
!22 = !{!11, !10, i64 68}
!23 = !{!6, !10, i64 544}
!24 = !{!6, !10, i64 536}
!25 = !{!6, !7, i64 576}
!26 = !{!6, !7, i64 720}
!27 = !{!6, !7, i64 736}
!28 = !{!11, !7, i64 256}
!29 = !{!10, !10, i64 0}
!30 = !{!6, !10, i64 744}
!31 = !{!6, !7, i64 584}
!32 = !{!6, !7, i64 672}
!33 = !{!6, !7, i64 616}
!34 = !{!6, !10, i64 712}
!35 = !{!6, !7, i64 832}
!36 = !{!11, !10, i64 244}
!37 = !{!6, !7, i64 632}
!38 = !{!11, !12, i64 62}
!39 = !{!11, !7, i64 248}
!40 = !{!6, !10, i64 760}
!41 = !{!6, !10, i64 728}
!42 = !{!6, !7, i64 752}
!43 = !{!6, !7, i64 808}
!44 = !{!6, !7, i64 784}
!45 = !{!6, !7, i64 792}
!46 = !{!6, !10, i64 572}
!47 = !{!6, !10, i64 568}
!48 = !{!11, !10, i64 24}
!49 = !{!11, !10, i64 36}
!50 = !{!11, !10, i64 40}
!51 = !{!6, !10, i64 564}
!52 = !{!6, !7, i64 648}
