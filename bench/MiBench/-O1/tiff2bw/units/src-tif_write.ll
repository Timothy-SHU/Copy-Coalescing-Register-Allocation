; ModuleID = 'src/tif_write.c'
source_filename = "src/tif_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@TIFFWriteScanline.module = internal constant [18 x i8] c"TIFFWriteScanline\00", align 16
@.str = private unnamed_addr constant [56 x i8] c"Can not change \22ImageLength\22 when using separate planes\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%d: Sample out of range, max %d\00", align 1
@TIFFWriteEncodedStrip.module = internal constant [22 x i8] c"TIFFWriteEncodedStrip\00", align 16
@.str.2 = private unnamed_addr constant [56 x i8] c"Can not grow image by strips when using separate planes\00", align 1
@TIFFWriteRawStrip.module = internal constant [18 x i8] c"TIFFWriteRawStrip\00", align 16
@TIFFWriteEncodedTile.module = internal constant [21 x i8] c"TIFFWriteEncodedTile\00", align 16
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: Tile %lu out of range, max %lu\00", align 1
@TIFFWriteRawTile.module = internal constant [17 x i8] c"TIFFWriteRawTile\00", align 16
@TIFFWriteBufferSetup.module = internal constant [21 x i8] c"TIFFWriteBufferSetup\00", align 16
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: No space for output buffer\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: File not open for writing\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Can not write tiles to a stripped image\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Can not write scanlines to a tiled image\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"%s: Must set \22ImageWidth\22 before writing data\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"%s: Must set \22PlanarConfiguration\22 before writing data\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: No space for %s arrays\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"td->td_planarconfig == PLANARCONFIG_CONTIG\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"src/tif_write.c\00", align 1
@__PRETTY_FUNCTION__.TIFFGrowStrips = private unnamed_addr constant [46 x i8] c"int TIFFGrowStrips(TIFF *, int, const char *)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: No space to expand strip arrays\00", align 1
@TIFFAppendToStrip.module = internal constant [18 x i8] c"TIFFAppendToStrip\00", align 16
@.str.16 = private unnamed_addr constant [31 x i8] c"%s: Seek error at scanline %lu\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: Write error at scanline %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFWriteScanline(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @TIFFWriteScanline.module), !range !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %169, label %12

12:                                               ; preds = %9, %4
  %13 = load i32, ptr %5, align 8, !tbaa !5
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = and i32 %13, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @_TIFFfree(ptr noundef nonnull %18) #5
  %24 = load i32, ptr %5, align 8, !tbaa !5
  %25 = and i32 %24, -513
  store i32 %25, ptr %5, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %20
  store ptr null, ptr %17, align 8, !tbaa !17
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, ptr %5, align 8, !tbaa !5
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %33 = select i1 %30, ptr %32, ptr %31
  %34 = load i32, ptr %33, align 4, !tbaa !18
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 8192)
  %36 = tail call ptr @_TIFFmalloc(i32 noundef %35) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteBufferSetup.module, ptr noundef nonnull @.str.4, ptr noundef %39) #5
  br label %47

40:                                               ; preds = %27
  %41 = load i32, ptr %5, align 8, !tbaa !5
  %42 = or i32 %41, 512
  store i32 %42, ptr %5, align 8, !tbaa !5
  store ptr %36, ptr %17, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %35, ptr %43, align 8, !tbaa !20
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 0, ptr %44, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %36, ptr %45, align 8, !tbaa !22
  %46 = or i32 %41, 528
  store i32 %46, ptr %5, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %38, %40
  br i1 %37, label %169, label %48

48:                                               ; preds = %47, %12
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = icmp ule i32 %50, %2
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %54 = load i16, ptr %53, align 2, !tbaa !24
  %55 = icmp eq i16 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %57, ptr noundef nonnull @.str) #5
  br label %169

58:                                               ; preds = %52
  %59 = add i32 %2, 1
  store i32 %59, ptr %49, align 4, !tbaa !23
  br label %60

60:                                               ; preds = %58, %48
  %61 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %62 = load i16, ptr %61, align 2, !tbaa !24
  %63 = icmp eq i16 %62, 2
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = zext i16 %3 to i32
  %66 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %67 = load i16, ptr %66, align 2, !tbaa !25
  %68 = icmp ugt i16 %67, %3
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = zext i16 %67 to i32
  %71 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %71, ptr noundef nonnull @.str.1, i32 noundef %65, i32 noundef %70) #5
  br label %169

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %74 = load i32, ptr %73, align 8, !tbaa !26
  %75 = mul i32 %74, %65
  %76 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %77 = load i32, ptr %76, align 4, !tbaa !27
  %78 = udiv i32 %2, %77
  %79 = add i32 %78, %75
  br label %84

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %82 = load i32, ptr %81, align 4, !tbaa !27
  %83 = udiv i32 %2, %82
  br label %84

84:                                               ; preds = %80, %72
  %85 = phi i32 [ %79, %72 ], [ %83, %80 ]
  %86 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %87 = load i32, ptr %86, align 8, !tbaa !28
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %130, label %89

89:                                               ; preds = %84
  %90 = tail call i32 @TIFFFlushData(ptr noundef %0) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %169, label %92

92:                                               ; preds = %89
  store i32 %85, ptr %86, align 8, !tbaa !28
  %93 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %94 = load i32, ptr %93, align 8, !tbaa !26
  %95 = icmp uge i32 %85, %94
  %96 = and i1 %51, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, ptr %49, align 4, !tbaa !23
  %99 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %100 = load i32, ptr %99, align 4, !tbaa !27
  %101 = add i32 %98, -1
  %102 = add i32 %101, %100
  %103 = udiv i32 %102, %100
  store i32 %103, ptr %93, align 8, !tbaa !26
  br label %104

104:                                              ; preds = %97, %92
  %105 = load i32, ptr %93, align 8, !tbaa !26
  %106 = urem i32 %85, %105
  %107 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %108 = load i32, ptr %107, align 4, !tbaa !27
  %109 = mul i32 %108, %106
  %110 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %109, ptr %110, align 8, !tbaa !29
  %111 = load i32, ptr %5, align 8, !tbaa !5
  %112 = and i32 %111, 32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  %116 = load ptr, ptr %115, align 8, !tbaa !30
  %117 = tail call i32 %116(ptr noundef %0) #5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %169, label %119

119:                                              ; preds = %114
  %120 = load i32, ptr %5, align 8, !tbaa !5
  %121 = or i32 %120, 32
  store i32 %121, ptr %5, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %119, %104
  %123 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !31
  %125 = tail call i32 %124(ptr noundef %0, i16 noundef zeroext %3) #5
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %169, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %5, align 8, !tbaa !5
  %129 = or i32 %128, 4096
  store i32 %129, ptr %5, align 8, !tbaa !5
  br label %130

130:                                              ; preds = %127, %84
  %131 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %132 = load i32, ptr %131, align 4, !tbaa !32
  %133 = icmp ult i32 %85, %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @TIFFGrowStrips(ptr noundef %0, ptr noundef nonnull @TIFFWriteScanline.module)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %169, label %137

137:                                              ; preds = %134, %130
  %138 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %139 = load i32, ptr %138, align 8, !tbaa !29
  %140 = icmp eq i32 %139, %2
  br i1 %140, label %161, label %141

141:                                              ; preds = %137
  %142 = icmp ugt i32 %139, %2
  br i1 %142, label %143, label %153

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %145 = load i32, ptr %144, align 8, !tbaa !26
  %146 = urem i32 %85, %145
  %147 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %148 = load i32, ptr %147, align 4, !tbaa !27
  %149 = mul i32 %148, %146
  store i32 %149, ptr %138, align 8, !tbaa !29
  %150 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %151 = load ptr, ptr %150, align 8, !tbaa !17
  %152 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %151, ptr %152, align 8, !tbaa !22
  br label %153

153:                                              ; preds = %143, %141
  %154 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 33
  %155 = load ptr, ptr %154, align 8, !tbaa !33
  %156 = load i32, ptr %138, align 8, !tbaa !29
  %157 = sub i32 %2, %156
  %158 = tail call i32 %155(ptr noundef %0, i32 noundef %157) #5
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %153
  store i32 %2, ptr %138, align 8, !tbaa !29
  br label %161

161:                                              ; preds = %160, %137
  %162 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %165 = load i32, ptr %164, align 8, !tbaa !35
  %166 = tail call i32 %163(ptr noundef %0, ptr noundef %1, i32 noundef %165, i16 noundef zeroext %3) #5
  %167 = load i32, ptr %138, align 8, !tbaa !29
  %168 = add i32 %167, 1
  store i32 %168, ptr %138, align 8, !tbaa !29
  br label %169

169:                                              ; preds = %153, %134, %122, %114, %89, %47, %9, %161, %69, %56
  %170 = phi i32 [ -1, %56 ], [ -1, %69 ], [ %166, %161 ], [ -1, %9 ], [ -1, %47 ], [ -1, %89 ], [ -1, %114 ], [ -1, %122 ], [ -1, %134 ], [ -1, %153 ]
  ret i32 %170
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %8) #5
  br label %109

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = lshr i32 %11, 10
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull %18) #5
  br label %109

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %21 = load i64, ptr %20, align 8, !tbaa !37
  %22 = and i64 %21, 2
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %25) #5
  br label %109

26:                                               ; preds = %19
  %27 = and i64 %21, 1048576
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef %30) #5
  br label %109

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = and i32 %11, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = and i64 %21, 4
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %47 = load i16, ptr %46, align 2, !tbaa !25
  %48 = zext i16 %47 to i32
  br label %64

49:                                               ; preds = %41, %38
  %50 = tail call i32 @TIFFNumberOfTiles(ptr noundef %0) #5
  br label %64

51:                                               ; preds = %35
  %52 = and i64 %21, 131072
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !40
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %60 = load i16, ptr %59, align 2, !tbaa !25
  %61 = zext i16 %60 to i32
  br label %64

62:                                               ; preds = %54, %51
  %63 = tail call i32 @TIFFNumberOfStrips(ptr noundef %0) #5
  br label %64

64:                                               ; preds = %58, %62, %45, %49
  %65 = phi i32 [ %48, %45 ], [ %50, %49 ], [ %61, %58 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  store i32 %65, ptr %66, align 8, !tbaa !26
  %67 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  store i32 %65, ptr %67, align 4, !tbaa !32
  %68 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %69 = load i16, ptr %68, align 2, !tbaa !24
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %73 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %74 = load i16, ptr %73, align 2, !tbaa !25
  %75 = zext i16 %74 to i32
  %76 = udiv i32 %65, %75
  store i32 %76, ptr %72, align 8, !tbaa !26
  br label %77

77:                                               ; preds = %71, %64
  %78 = shl i32 %65, 2
  %79 = tail call ptr @_TIFFmalloc(i32 noundef %78) #5
  store ptr %79, ptr %32, align 8, !tbaa !41
  %80 = load i32, ptr %67, align 4, !tbaa !32
  %81 = shl i32 %80, 2
  %82 = tail call ptr @_TIFFmalloc(i32 noundef %81) #5
  %83 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  store ptr %82, ptr %83, align 8, !tbaa !42
  %84 = load ptr, ptr %32, align 8, !tbaa !41
  %85 = icmp eq ptr %84, null
  %86 = icmp eq ptr %82, null
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %77
  %89 = load i32, ptr %67, align 4, !tbaa !32
  %90 = shl i32 %89, 2
  tail call void @_TIFFmemset(ptr noundef nonnull %84, i32 noundef 0, i32 noundef %90) #5
  %91 = load ptr, ptr %83, align 8, !tbaa !42
  %92 = load i32, ptr %67, align 4, !tbaa !32
  %93 = shl i32 %92, 2
  tail call void @_TIFFmemset(ptr noundef %91, i32 noundef 0, i32 noundef %93) #5
  %94 = load i64, ptr %20, align 8, !tbaa !37
  %95 = or i64 %94, 50331648
  store i64 %95, ptr %20, align 8, !tbaa !37
  br label %102

96:                                               ; preds = %77
  store i32 0, ptr %67, align 4, !tbaa !43
  %97 = load ptr, ptr %0, align 8, !tbaa !19
  %98 = load i32, ptr %10, align 8, !tbaa !5
  %99 = and i32 %98, 1024
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %97, ptr noundef nonnull %101) #5
  br label %109

102:                                              ; preds = %88, %31
  %103 = tail call i32 @TIFFTileSize(ptr noundef %0) #5
  %104 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  store i32 %103, ptr %104, align 4, !tbaa !44
  %105 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #5
  %106 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  store i32 %105, ptr %106, align 8, !tbaa !35
  %107 = load i32, ptr %10, align 8, !tbaa !5
  %108 = or i32 %107, 64
  store i32 %108, ptr %10, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %102, %96, %29, %24, %15, %7
  %110 = phi i32 [ 0, %7 ], [ 0, %15 ], [ 1, %102 ], [ 0, %96 ], [ 0, %29 ], [ 0, %24 ]
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteBufferSetup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  tail call void @_TIFFfree(ptr noundef nonnull %5) #5
  %13 = load i32, ptr %8, align 8, !tbaa !5
  %14 = and i32 %13, -513
  store i32 %14, ptr %8, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %7
  store ptr null, ptr %4, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %15, %3
  %17 = icmp eq i32 %2, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !5
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load i32, ptr %25, align 4, !tbaa !18
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 8192)
  br label %28

28:                                               ; preds = %18, %16
  %29 = phi ptr [ null, %18 ], [ %1, %16 ]
  %30 = phi i32 [ %27, %18 ], [ %2, %16 ]
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = tail call ptr @_TIFFmalloc(i32 noundef %30) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteBufferSetup.module, ptr noundef nonnull @.str.4, ptr noundef %36) #5
  br label %53

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !5
  %40 = or i32 %39, 512
  store i32 %40, ptr %38, align 8, !tbaa !5
  br label %45

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !5
  %44 = and i32 %43, -513
  store i32 %44, ptr %42, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %33, %37 ], [ %29, %41 ]
  store ptr %46, ptr %4, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %30, ptr %47, align 8, !tbaa !20
  %48 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 0, ptr %48, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %46, ptr %49, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !5
  %52 = or i32 %51, 16
  store i32 %52, ptr %50, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %45, %35
  %54 = phi i32 [ 0, %35 ], [ 1, %45 ]
  ret i32 %54
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @TIFFFlushData(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFGrowStrips(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %4 = load i16, ptr %3, align 2, !tbaa !24
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 570, ptr noundef nonnull @__PRETTY_FUNCTION__.TIFFGrowStrips) #6
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %11 = load i32, ptr %10, align 4, !tbaa !32
  %12 = shl i32 %11, 2
  %13 = add i32 %12, 4
  %14 = tail call ptr @_TIFFrealloc(ptr noundef %9, i32 noundef %13) #5
  store ptr %14, ptr %8, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = load i32, ptr %10, align 4, !tbaa !32
  %18 = shl i32 %17, 2
  %19 = add i32 %18, 4
  %20 = tail call ptr @_TIFFrealloc(ptr noundef %16, i32 noundef %19) #5
  store ptr %20, ptr %15, align 8, !tbaa !42
  %21 = load ptr, ptr %8, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %20, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  store i32 0, ptr %10, align 4, !tbaa !32
  %26 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %26) #5
  br label %37

27:                                               ; preds = %7
  %28 = load i32, ptr %10, align 4, !tbaa !32
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %21, i64 %29
  tail call void @_TIFFmemset(ptr noundef nonnull %30, i32 noundef 0, i32 noundef 4) #5
  %31 = load ptr, ptr %15, align 8, !tbaa !42
  %32 = load i32, ptr %10, align 4, !tbaa !32
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  tail call void @_TIFFmemset(ptr noundef %34, i32 noundef 0, i32 noundef 4) #5
  %35 = load i32, ptr %10, align 4, !tbaa !32
  %36 = add i32 %35, 1
  store i32 %36, ptr %10, align 4, !tbaa !32
  br label %37

37:                                               ; preds = %27, %25
  %38 = phi i32 [ 0, %25 ], [ 1, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteEncodedStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @TIFFWriteEncodedStrip.module), !range !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %137, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %14 = load i32, ptr %13, align 4, !tbaa !32
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %18 = load i16, ptr %17, align 2, !tbaa !24
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef nonnull @.str.2) #5
  br label %137

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @TIFFGrowStrips(ptr noundef %0, ptr noundef nonnull @TIFFWriteEncodedStrip.module)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %137, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !23
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %29 = load i32, ptr %28, align 4, !tbaa !27
  %30 = add i32 %27, -1
  %31 = add i32 %30, %29
  %32 = udiv i32 %31, %29
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  store i32 %32, ptr %33, align 8, !tbaa !26
  br label %34

34:                                               ; preds = %25, %12
  %35 = load i32, ptr %5, align 8, !tbaa !5
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %40 = load ptr, ptr %39, align 8, !tbaa !17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = and i32 %35, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  tail call void @_TIFFfree(ptr noundef nonnull %40) #5
  %46 = load i32, ptr %5, align 8, !tbaa !5
  %47 = and i32 %46, -513
  store i32 %47, ptr %5, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %45, %42
  store ptr null, ptr %39, align 8, !tbaa !17
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, ptr %5, align 8, !tbaa !5
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %54 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %55 = select i1 %52, ptr %54, ptr %53
  %56 = load i32, ptr %55, align 4, !tbaa !18
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 8192)
  %58 = tail call ptr @_TIFFmalloc(i32 noundef %57) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteBufferSetup.module, ptr noundef nonnull @.str.4, ptr noundef %61) #5
  br label %69

62:                                               ; preds = %49
  %63 = load i32, ptr %5, align 8, !tbaa !5
  %64 = or i32 %63, 512
  store i32 %64, ptr %5, align 8, !tbaa !5
  store ptr %58, ptr %39, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %57, ptr %65, align 8, !tbaa !20
  %66 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 0, ptr %66, align 8, !tbaa !21
  %67 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %58, ptr %67, align 8, !tbaa !22
  %68 = or i32 %63, 528
  store i32 %68, ptr %5, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %60, %62
  br i1 %59, label %137, label %70

70:                                               ; preds = %69, %34
  %71 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 %1, ptr %71, align 8, !tbaa !28
  %72 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %73 = load i32, ptr %72, align 8, !tbaa !26
  %74 = urem i32 %1, %73
  %75 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %76 = load i32, ptr %75, align 4, !tbaa !27
  %77 = mul i32 %76, %74
  %78 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %77, ptr %78, align 8, !tbaa !29
  %79 = load i32, ptr %5, align 8, !tbaa !5
  %80 = and i32 %79, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  %84 = load ptr, ptr %83, align 8, !tbaa !30
  %85 = tail call i32 %84(ptr noundef %0) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %137, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %5, align 8, !tbaa !5
  %89 = or i32 %88, 32
  store i32 %89, ptr %5, align 8, !tbaa !5
  br label %90

90:                                               ; preds = %87, %70
  %91 = load i32, ptr %5, align 8, !tbaa !5
  %92 = and i32 %91, -4097
  store i32 %92, ptr %5, align 8, !tbaa !5
  %93 = load i32, ptr %72, align 8, !tbaa !26
  %94 = udiv i32 %1, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  %97 = load ptr, ptr %96, align 8, !tbaa !31
  %98 = tail call i32 %97(ptr noundef %0, i16 noundef zeroext %95) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = tail call i32 %102(ptr noundef %0, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %95) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %137, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = tail call i32 %107(ptr noundef %0) #5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %5, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %113 = load i16, ptr %112, align 2, !tbaa !47
  %114 = or i16 %113, 256
  %115 = zext i16 %114 to i32
  %116 = and i32 %111, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %120 = load ptr, ptr %119, align 8, !tbaa !17
  %121 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %122 = load i32, ptr %121, align 8, !tbaa !21
  %123 = sext i32 %122 to i64
  tail call void @TIFFReverseBits(ptr noundef %120, i64 noundef %123) #5
  br label %124

124:                                              ; preds = %118, %110
  %125 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %126 = load i32, ptr %125, align 8, !tbaa !21
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %130 = load ptr, ptr %129, align 8, !tbaa !17
  %131 = tail call fastcc i32 @TIFFAppendToStrip(ptr noundef %0, i32 noundef %1, ptr noundef %130, i32 noundef %126), !range !16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128, %124
  store i32 0, ptr %125, align 8, !tbaa !21
  %134 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %135 = load ptr, ptr %134, align 8, !tbaa !17
  %136 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %135, ptr %136, align 8, !tbaa !22
  br label %137

137:                                              ; preds = %128, %105, %100, %90, %82, %69, %22, %9, %133, %20
  %138 = phi i32 [ -1, %20 ], [ %3, %133 ], [ -1, %9 ], [ -1, %22 ], [ -1, %69 ], [ -1, %82 ], [ -1, %90 ], [ 0, %100 ], [ -1, %105 ], [ -1, %128 ]
  ret i32 %138
}

declare void @TIFFReverseBits(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFAppendToStrip(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  br i1 %10, label %31, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call i32 %18(ptr noundef %20, i32 noundef %9, i32 noundef 0) #5
  %22 = load ptr, ptr %5, align 8, !tbaa !41
  %23 = getelementptr inbounds i32, ptr %22, i64 %7
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr %0, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !29
  %30 = zext i32 %29 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.16, ptr noundef %27, i64 noundef %30) #5
  br label %65

31:                                               ; preds = %4, %15
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = tail call i32 %33(ptr noundef %35, i32 noundef 0, i32 noundef 2) #5
  %37 = load ptr, ptr %5, align 8, !tbaa !41
  %38 = getelementptr inbounds i32, ptr %37, i64 %7
  store i32 %36, ptr %38, align 4, !tbaa !18
  br label %39

39:                                               ; preds = %16, %31
  %40 = load ptr, ptr %5, align 8, !tbaa !41
  %41 = getelementptr inbounds i32, ptr %40, i64 %7
  %42 = load i32, ptr %41, align 4, !tbaa !18
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  store i32 %42, ptr %43, align 4, !tbaa !48
  br label %44

44:                                               ; preds = %39, %11
  %45 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = tail call i32 %46(ptr noundef %48, ptr noundef %2, i32 noundef %3) #5
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %0, align 8, !tbaa !19
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 8, !tbaa !29
  %55 = zext i32 %54 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.17, ptr noundef %52, i64 noundef %55) #5
  br label %65

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  %58 = load i32, ptr %57, align 4, !tbaa !48
  %59 = add nsw i32 %58, %3
  store i32 %59, ptr %57, align 4, !tbaa !48
  %60 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = getelementptr inbounds i32, ptr %61, i64 %7
  %63 = load i32, ptr %62, align 4, !tbaa !18
  %64 = add i32 %63, %3
  store i32 %64, ptr %62, align 4, !tbaa !18
  br label %65

65:                                               ; preds = %56, %51, %26
  %66 = phi i32 [ 1, %56 ], [ 0, %51 ], [ 0, %26 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteRawStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @TIFFWriteRawStrip.module), !range !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %14 = load i32, ptr %13, align 4, !tbaa !32
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %18 = load i16, ptr %17, align 2, !tbaa !24
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef nonnull @.str.2) #5
  br label %49

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %24 = load i32, ptr %23, align 8, !tbaa !26
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !23
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %30 = load i32, ptr %29, align 4, !tbaa !27
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = udiv i32 %32, %30
  store i32 %33, ptr %23, align 8, !tbaa !26
  br label %34

34:                                               ; preds = %26, %22
  %35 = tail call fastcc i32 @TIFFGrowStrips(ptr noundef %0, ptr noundef nonnull @TIFFWriteRawStrip.module)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34, %12
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 %1, ptr %38, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %40 = load i32, ptr %39, align 8, !tbaa !26
  %41 = urem i32 %1, %40
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %43 = load i32, ptr %42, align 4, !tbaa !27
  %44 = mul i32 %43, %41
  %45 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %44, ptr %45, align 8, !tbaa !29
  %46 = tail call fastcc i32 @TIFFAppendToStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !16
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 -1, i32 %3
  br label %49

49:                                               ; preds = %34, %9, %37, %20
  %50 = phi i32 [ -1, %20 ], [ %48, %37 ], [ -1, %9 ], [ -1, %34 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call i32 @TIFFCheckTile(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @TIFFComputeTile(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #5
  %11 = tail call i32 @TIFFWriteEncodedTile(ptr noundef %0, i32 noundef %10, ptr noundef %1, i32 noundef -1)
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi i32 [ %11, %9 ], [ -1, %6 ]
  ret i32 %13
}

declare i32 @TIFFCheckTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteEncodedTile(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @TIFFWriteEncodedTile.module), !range !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %140, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %14 = load i32, ptr %13, align 4, !tbaa !32
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !19
  %18 = zext i32 %1 to i64
  %19 = zext i32 %14 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteEncodedTile.module, ptr noundef nonnull @.str.3, ptr noundef %17, i64 noundef %18, i64 noundef %19) #5
  br label %140

20:                                               ; preds = %12
  %21 = load i32, ptr %5, align 8, !tbaa !5
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = and i32 %21, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  tail call void @_TIFFfree(ptr noundef nonnull %26) #5
  %32 = load i32, ptr %5, align 8, !tbaa !5
  %33 = and i32 %32, -513
  store i32 %33, ptr %5, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %31, %28
  store ptr null, ptr %25, align 8, !tbaa !17
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, ptr %5, align 8, !tbaa !5
  %37 = and i32 %36, 1024
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %41 = select i1 %38, ptr %40, ptr %39
  %42 = load i32, ptr %41, align 4, !tbaa !18
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 8192)
  %44 = tail call ptr @_TIFFmalloc(i32 noundef %43) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteBufferSetup.module, ptr noundef nonnull @.str.4, ptr noundef %47) #5
  br label %55

48:                                               ; preds = %35
  %49 = load i32, ptr %5, align 8, !tbaa !5
  %50 = or i32 %49, 512
  store i32 %50, ptr %5, align 8, !tbaa !5
  store ptr %44, ptr %25, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  store i32 %43, ptr %51, align 8, !tbaa !20
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 0, ptr %52, align 8, !tbaa !21
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %44, ptr %53, align 8, !tbaa !22
  %54 = or i32 %49, 528
  store i32 %54, ptr %5, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %46, %48
  br i1 %45, label %140, label %56

56:                                               ; preds = %55, %20
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  store i32 %1, ptr %57, align 8, !tbaa !52
  %58 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !23
  %60 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !53
  %62 = add i32 %59, -1
  %63 = add i32 %62, %61
  %64 = udiv i32 %63, %61
  %65 = urem i32 %1, %64
  %66 = mul i32 %65, %61
  %67 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 %66, ptr %67, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !55
  %72 = add i32 %69, -1
  %73 = add i32 %72, %71
  %74 = udiv i32 %73, %71
  %75 = urem i32 %1, %74
  %76 = mul i32 %75, %71
  %77 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  store i32 %76, ptr %77, align 4, !tbaa !56
  %78 = load i32, ptr %5, align 8, !tbaa !5
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %56
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !30
  %84 = tail call i32 %83(ptr noundef %0) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %140, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %5, align 8, !tbaa !5
  %88 = or i32 %87, 32
  store i32 %88, ptr %5, align 8, !tbaa !5
  br label %89

89:                                               ; preds = %86, %56
  %90 = load i32, ptr %5, align 8, !tbaa !5
  %91 = and i32 %90, -4097
  store i32 %91, ptr %5, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %93 = load i32, ptr %92, align 8, !tbaa !26
  %94 = udiv i32 %1, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  %97 = load ptr, ptr %96, align 8, !tbaa !31
  %98 = tail call i32 %97(ptr noundef %0, i16 noundef zeroext %95) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %140, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  %102 = load i32, ptr %101, align 4, !tbaa !44
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 %3)
  %104 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  %105 = load ptr, ptr %104, align 8, !tbaa !57
  %106 = tail call i32 %105(ptr noundef %0, ptr noundef %2, i32 noundef %103, i16 noundef zeroext %95) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = tail call i32 %110(ptr noundef %0) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %140, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %5, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %116 = load i16, ptr %115, align 2, !tbaa !47
  %117 = or i16 %116, 256
  %118 = zext i16 %117 to i32
  %119 = and i32 %114, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %123 = load ptr, ptr %122, align 8, !tbaa !17
  %124 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %125 = load i32, ptr %124, align 8, !tbaa !21
  %126 = sext i32 %125 to i64
  tail call void @TIFFReverseBits(ptr noundef %123, i64 noundef %126) #5
  br label %127

127:                                              ; preds = %121, %113
  %128 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %129 = load i32, ptr %128, align 8, !tbaa !21
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %133 = load ptr, ptr %132, align 8, !tbaa !17
  %134 = tail call fastcc i32 @TIFFAppendToStrip(ptr noundef %0, i32 noundef %1, ptr noundef %133, i32 noundef %129), !range !16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131, %127
  store i32 0, ptr %128, align 8, !tbaa !21
  %137 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %138 = load ptr, ptr %137, align 8, !tbaa !17
  %139 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %138, ptr %139, align 8, !tbaa !22
  br label %140

140:                                              ; preds = %131, %108, %100, %89, %81, %55, %9, %136, %16
  %141 = phi i32 [ -1, %16 ], [ %103, %136 ], [ -1, %9 ], [ -1, %55 ], [ -1, %81 ], [ -1, %89 ], [ 0, %100 ], [ -1, %108 ], [ -1, %131 ]
  ret i32 %141
}

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFWriteRawTile(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @TIFFWriteCheck(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @TIFFWriteRawTile.module), !range !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !19
  %18 = zext i32 %1 to i64
  %19 = zext i32 %14 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteRawTile.module, ptr noundef nonnull @.str.3, ptr noundef %17, i64 noundef %18, i64 noundef %19) #5
  br label %24

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @TIFFAppendToStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3), !range !16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 -1, i32 %3
  br label %24

24:                                               ; preds = %9, %20, %16
  %25 = phi i32 [ -1, %16 ], [ %23, %20 ], [ -1, %9 ]
  ret i32 %25
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFFlushData1(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %9 = load i16, ptr %8, align 2, !tbaa !58
  %10 = or i16 %9, 256
  %11 = zext i16 %10 to i32
  %12 = and i32 %7, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = zext nneg i32 %3 to i64
  tail call void @TIFFReverseBits(ptr noundef %16, i64 noundef %17) #5
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i32, ptr %6, align 8, !tbaa !5
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = load i32, ptr %2, align 8, !tbaa !21
  %29 = tail call fastcc i32 @TIFFAppendToStrip(ptr noundef %0, i32 noundef %25, ptr noundef %27, i32 noundef %28), !range !16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  store i32 0, ptr %2, align 8, !tbaa !21
  %32 = load ptr, ptr %26, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  store ptr %32, ptr %33, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %1, %31, %18
  %35 = phi i32 [ 0, %18 ], [ 1, %31 ], [ 1, %1 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TIFFSetWriteOffset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  store i32 %1, ptr %3, align 4, !tbaa !48
  ret void
}

declare i32 @TIFFTileSize(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFNumberOfTiles(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFNumberOfStrips(ptr noundef) local_unnamed_addr #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_TIFFrealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !10, i64 16}
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
!16 = !{i32 0, i32 2}
!17 = !{!6, !7, i64 720}
!18 = !{!10, !10, i64 0}
!19 = !{!6, !7, i64 0}
!20 = !{!6, !10, i64 728}
!21 = !{!6, !10, i64 744}
!22 = !{!6, !7, i64 736}
!23 = !{!11, !10, i64 28}
!24 = !{!11, !12, i64 106}
!25 = !{!11, !12, i64 66}
!26 = !{!11, !10, i64 240}
!27 = !{!11, !10, i64 68}
!28 = !{!6, !10, i64 544}
!29 = !{!6, !10, i64 536}
!30 = !{!6, !7, i64 592}
!31 = !{!6, !7, i64 600}
!32 = !{!11, !10, i64 244}
!33 = !{!6, !7, i64 672}
!34 = !{!6, !7, i64 624}
!35 = !{!6, !10, i64 712}
!36 = !{!6, !10, i64 12}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !8, i64 0}
!39 = !{!6, !7, i64 280}
!40 = !{!6, !10, i64 60}
!41 = !{!11, !7, i64 248}
!42 = !{!11, !7, i64 256}
!43 = !{!6, !10, i64 276}
!44 = !{!6, !10, i64 572}
!45 = !{!6, !7, i64 640}
!46 = !{!6, !7, i64 608}
!47 = !{!11, !12, i64 62}
!48 = !{!6, !10, i64 548}
!49 = !{!6, !7, i64 808}
!50 = !{!6, !7, i64 784}
!51 = !{!6, !7, i64 800}
!52 = !{!6, !10, i64 568}
!53 = !{!11, !10, i64 40}
!54 = !{!11, !10, i64 24}
!55 = !{!11, !10, i64 36}
!56 = !{!6, !10, i64 564}
!57 = !{!6, !7, i64 656}
!58 = !{!6, !12, i64 94}
