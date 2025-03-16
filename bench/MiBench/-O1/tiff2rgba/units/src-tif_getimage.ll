; ModuleID = 'src/tif_getimage.c'
source_filename = "src/tif_getimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct._TIFFRGBAImage = type { ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { ptr }
%struct.TIFFYCbCrToRGB = type { ptr, ptr, ptr, ptr, ptr, [3 x float] }

@.str = private unnamed_addr constant [49 x i8] c"Sorry, can not handle images with %d-bit samples\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing needed %s tag\00", align 1
@photoTag = internal constant [26 x i8] c"PhotometricInterpretation\00", align 16
@.str.2 = private unnamed_addr constant [60 x i8] c"Sorry, can not handle contiguous data with %s=%d, and %s=%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Samples/pixel\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Sorry, can not handle YCbCr images with %s=%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Planarconfiguration\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Sorry, can not handle RGB image with %s=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color channels\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Sorry, LogL data must have %s=%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Sorry, LogLuv data must have %s=%d or %d\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Sorry, can not handle LogLuv images with %s=%d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Sorry, can not handle image with %s=%d\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Sorry, can not image with %d-bit samples\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Missing required \22Colormap\22 tag\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Out of memory for colormap copy\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"No \22get\22 routine setup\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"No \22put\22 routine setupl; probably can not handle image format\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Can't use TIFFReadRGBAStrip() with tiled file.\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Row passed to TIFFReadRGBAStrip() must be first in a strip.\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Can't use TIFFReadRGBATile() with stripped file.\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Row/col passed to TIFFReadRGBATile() must be topleft corner of a tile.\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"No space for tile buffer\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"using bottom-left orientation\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"using top-left orientation\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"No space for strip buffer\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Assuming 8-bit colormap\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"No space for photometric conversion table\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"No space for B&W mapping table\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"No space for Palette mapping table\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"No space for YCbCr->RGB conversion state\00", align 1
@switch.table.TIFFRGBAImageBegin = private unnamed_addr constant [8 x ptr] [ptr @put1bitcmaptile, ptr @put2bitcmaptile, ptr null, ptr @put4bitcmaptile, ptr null, ptr null, ptr null, ptr @put8bitcmaptile], align 8
@switch.table.TIFFRGBAImageBegin.33 = private unnamed_addr constant [8 x ptr] [ptr @put1bitbwtile, ptr @put2bitbwtile, ptr null, ptr @put4bitbwtile, ptr null, ptr null, ptr null, ptr @putgreytile], align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFRGBAImageOK(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !5
  switch i16 %5, label %6 [
    i16 1, label %9
    i16 2, label %9
    i16 4, label %9
    i16 8, label %9
    i16 16, label %9
  ]

6:                                                ; preds = %2
  %7 = zext i16 %5 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #9
  br label %84

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %11 = load i16, ptr %10, align 2, !tbaa !14
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %14 = load i16, ptr %13, align 4, !tbaa !15
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %12, %15
  %17 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 262, ptr noundef nonnull %3) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  switch i32 %16, label %22 [
    i32 1, label %20
    i32 3, label %21
  ]

20:                                               ; preds = %19
  store i16 1, ptr %3, align 2, !tbaa !16
  br label %24

21:                                               ; preds = %19
  store i16 2, ptr %3, align 2, !tbaa !16
  br label %24

22:                                               ; preds = %19
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @photoTag) #9
  br label %84

24:                                               ; preds = %20, %21, %9
  %25 = load i16, ptr %3, align 2, !tbaa !16
  switch i16 %25, label %81 [
    i16 0, label %26
    i16 1, label %26
    i16 3, label %26
    i16 6, label %37
    i16 2, label %44
    i16 5, label %48
    i16 -32692, label %61
    i16 -32691, label %67
  ]

26:                                               ; preds = %24, %24, %24
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %28 = load i16, ptr %27, align 2, !tbaa !17
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load i16, ptr %10, align 2, !tbaa !14
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %84, label %33

33:                                               ; preds = %30
  %34 = zext i16 %31 to i32
  %35 = zext i16 %25 to i32
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @photoTag, i32 noundef %35, ptr noundef nonnull @.str.3, i32 noundef %34) #9
  br label %84

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %39 = load i16, ptr %38, align 2, !tbaa !17
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %84, label %41

41:                                               ; preds = %37
  %42 = zext i16 %39 to i32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef %42) #9
  br label %84

44:                                               ; preds = %24
  %45 = icmp slt i32 %16, 3
  br i1 %45, label %46, label %84

46:                                               ; preds = %44
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.7, i32 noundef %16) #9
  br label %84

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  %50 = load i16, ptr %49, align 8, !tbaa !18
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = zext i16 %50 to i32
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.9, i32 noundef %53) #9
  br label %84

55:                                               ; preds = %48
  %56 = load i16, ptr %10, align 2, !tbaa !14
  %57 = icmp eq i16 %56, 4
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = zext i16 %56 to i32
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.3, i32 noundef %59) #9
  br label %84

61:                                               ; preds = %24
  %62 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %63 = load i16, ptr %62, align 8, !tbaa !19
  %64 = icmp eq i16 %63, -30860
  br i1 %64, label %84, label %65

65:                                               ; preds = %61
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11, i32 noundef 34676) #9
  br label %84

67:                                               ; preds = %24
  %68 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %69 = load i16, ptr %68, align 8, !tbaa !19
  %70 = and i16 %69, -2
  %71 = icmp eq i16 %70, -30860
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @.str.11, i32 noundef 34676, i32 noundef 34677) #9
  br label %84

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %76 = load i16, ptr %75, align 2, !tbaa !17
  %77 = icmp eq i16 %76, 1
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = zext i16 %76 to i32
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.5, i32 noundef %79) #9
  br label %84

81:                                               ; preds = %24
  %82 = zext i16 %25 to i32
  %83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @photoTag, i32 noundef %82) #9
  br label %84

84:                                               ; preds = %30, %26, %37, %44, %55, %61, %74, %81, %78, %72, %65, %58, %52, %46, %41, %33, %22, %6
  %85 = phi i32 [ 0, %6 ], [ 0, %81 ], [ 0, %72 ], [ 0, %78 ], [ 0, %65 ], [ 0, %52 ], [ 0, %58 ], [ 0, %46 ], [ 0, %41 ], [ 0, %33 ], [ 0, %22 ], [ 1, %74 ], [ 1, %61 ], [ 1, %55 ], [ 1, %44 ], [ 1, %37 ], [ 1, %26 ], [ 1, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %85
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @TIFFRGBAImageEnd(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_TIFFfree(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 8, !tbaa !20
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_TIFFfree(ptr noundef nonnull %8) #9
  store ptr null, ptr %7, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_TIFFfree(ptr noundef nonnull %13) #9
  store ptr null, ptr %12, align 8, !tbaa !23
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_TIFFfree(ptr noundef nonnull %18) #9
  store ptr null, ptr %17, align 8, !tbaa !24
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  tail call void @_TIFFfree(ptr noundef nonnull %23) #9
  %26 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !26
  tail call void @_TIFFfree(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  tail call void @_TIFFfree(ptr noundef %29) #9
  br label %30

30:                                               ; preds = %25, %21
  ret void
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFRGBAImageBegin(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  %17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 19
  store i32 0, ptr %17, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 20
  store i32 0, ptr %18, align 4, !tbaa !29
  %19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 10
  %20 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  store i32 %2, ptr %22, align 8, !tbaa !31
  %23 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 6
  %24 = tail call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 258, ptr noundef nonnull %23) #9
  %25 = load i16, ptr %23, align 4, !tbaa !32
  switch i16 %25, label %26 [
    i16 1, label %29
    i16 2, label %29
    i16 4, label %29
    i16 8, label %29
    i16 16, label %29
  ]

26:                                               ; preds = %4
  %27 = zext i16 %25 to i32
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %27) #9
  br label %301

29:                                               ; preds = %4, %4, %4, %4, %4
  %30 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 3
  store i32 0, ptr %30, align 8, !tbaa !33
  %31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %32 = tail call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 277, ptr noundef nonnull %31) #9
  %33 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 338, ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  %34 = load i16, ptr %10, align 2, !tbaa !16
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 8, !tbaa !34
  %38 = load i16, ptr %37, align 2, !tbaa !16
  %39 = add i16 %38, -1
  %40 = icmp ult i16 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = zext nneg i16 %38 to i32
  store i32 %42, ptr %30, align 8, !tbaa !33
  br label %43

43:                                               ; preds = %36, %41, %29
  %44 = load i16, ptr %31, align 2, !tbaa !35
  %45 = zext i16 %44 to i32
  %46 = zext i16 %34 to i32
  %47 = sub nsw i32 %45, %46
  %48 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 259, ptr noundef nonnull %12) #9
  %49 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 284, ptr noundef nonnull %11) #9
  %50 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 9
  %51 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 262, ptr noundef nonnull %50) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  switch i32 %47, label %58 [
    i32 1, label %54
    i32 3, label %60
  ]

54:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  %55 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 259, ptr noundef nonnull %8) #9
  %56 = load i16, ptr %8, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  switch i16 %56, label %57 [
    i16 -32765, label %60
    i16 4, label %60
    i16 3, label %60
    i16 2, label %60
  ]

57:                                               ; preds = %54
  br label %60

58:                                               ; preds = %53
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @photoTag) #9
  br label %301

60:                                               ; preds = %53, %54, %54, %54, %54, %57
  %61 = phi i16 [ 1, %57 ], [ 0, %54 ], [ 0, %54 ], [ 0, %54 ], [ 0, %54 ], [ 2, %53 ]
  store i16 %61, ptr %50, align 2, !tbaa !36
  br label %62

62:                                               ; preds = %60, %43
  %63 = load i16, ptr %50, align 2, !tbaa !36
  switch i16 %63, label %151 [
    i16 3, label %64
    i16 0, label %96
    i16 1, label %96
    i16 6, label %107
    i16 2, label %118
    i16 5, label %122
    i16 -32692, label %130
    i16 -32691, label %137
  ]

64:                                               ; preds = %62
  %65 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call ptr @TIFFFileName(ptr noundef %1) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %68, ptr noundef nonnull @.str.16) #9
  br label %301

69:                                               ; preds = %64
  %70 = load i16, ptr %23, align 4, !tbaa !32
  %71 = zext nneg i16 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = trunc i64 %72 to i32
  %74 = shl i64 2, %71
  %75 = trunc i64 %74 to i32
  %76 = call ptr @_TIFFmalloc(i32 noundef %75) #9
  store ptr %76, ptr %19, align 8, !tbaa !25
  %77 = call ptr @_TIFFmalloc(i32 noundef %75) #9
  store ptr %77, ptr %20, align 8, !tbaa !26
  %78 = call ptr @_TIFFmalloc(i32 noundef %75) #9
  store ptr %78, ptr %21, align 8, !tbaa !27
  %79 = load ptr, ptr %19, align 8, !tbaa !25
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load ptr, ptr %20, align 8, !tbaa !26
  %83 = icmp eq ptr %82, null
  %84 = icmp eq ptr %78, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %69
  %87 = call ptr @TIFFFileName(ptr noundef %1) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %87, ptr noundef nonnull @.str.17) #9
  br label %301

88:                                               ; preds = %81
  %89 = load ptr, ptr %13, align 8, !tbaa !34
  %90 = shl nsw i32 %73, 1
  %91 = sext i32 %90 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %79, ptr align 2 %89, i64 %91, i1 false)
  %92 = load ptr, ptr %20, align 8, !tbaa !26
  %93 = load ptr, ptr %14, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %93, i64 %91, i1 false)
  %94 = load ptr, ptr %21, align 8, !tbaa !27
  %95 = load ptr, ptr %15, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %94, ptr align 2 %95, i64 %91, i1 false)
  br label %96

96:                                               ; preds = %62, %62, %88
  %97 = load i16, ptr %11, align 2, !tbaa !16
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %154

99:                                               ; preds = %96
  %100 = load i16, ptr %31, align 2, !tbaa !35
  %101 = icmp eq i16 %100, 1
  br i1 %101, label %154, label %102

102:                                              ; preds = %99
  %103 = zext i16 %100 to i32
  %104 = load i16, ptr %50, align 2, !tbaa !36
  %105 = zext i16 %104 to i32
  %106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @photoTag, i32 noundef %105, ptr noundef nonnull @.str.3, i32 noundef %103) #9
  br label %301

107:                                              ; preds = %62
  %108 = load i16, ptr %11, align 2
  %109 = icmp eq i16 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = zext i16 %108 to i32
  %112 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef %111) #9
  br label %301

113:                                              ; preds = %107
  %114 = load i16, ptr %12, align 2, !tbaa !16
  %115 = icmp eq i16 %114, 7
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  %117 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 65538, i32 noundef 1) #9
  store i16 2, ptr %50, align 2, !tbaa !36
  br label %154

118:                                              ; preds = %62
  %119 = icmp slt i32 %47, 3
  br i1 %119, label %120, label %154

120:                                              ; preds = %118
  %121 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.7, i32 noundef %47) #9
  br label %301

122:                                              ; preds = %62
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  %123 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 332, ptr noundef nonnull %16) #9
  %124 = load i16, ptr %16, align 2, !tbaa !16
  %125 = icmp eq i16 %124, 1
  br i1 %125, label %126, label %296

126:                                              ; preds = %122
  %127 = load i16, ptr %31, align 2, !tbaa !35
  %128 = icmp eq i16 %127, 4
  br i1 %128, label %129, label %296

129:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  br label %154

130:                                              ; preds = %62
  %131 = load i16, ptr %12, align 2, !tbaa !16
  %132 = icmp eq i16 %131, -30860
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11, i32 noundef 34676) #9
  br label %301

135:                                              ; preds = %130
  %136 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 65560, i32 noundef 3) #9
  store i16 1, ptr %50, align 2, !tbaa !36
  store i16 8, ptr %23, align 4, !tbaa !32
  br label %154

137:                                              ; preds = %62
  %138 = load i16, ptr %12, align 2
  %139 = add i16 %138, 30858
  %140 = icmp ult i16 %139, -2
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @.str.11, i32 noundef 34676, i32 noundef 34677) #9
  br label %301

143:                                              ; preds = %137
  %144 = load i16, ptr %11, align 2, !tbaa !16
  %145 = icmp eq i16 %144, 1
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = zext i16 %144 to i32
  %148 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.5, i32 noundef %147) #9
  br label %301

149:                                              ; preds = %143
  %150 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 65560, i32 noundef 3) #9
  store i16 2, ptr %50, align 2, !tbaa !36
  store i16 8, ptr %23, align 4, !tbaa !32
  br label %154

151:                                              ; preds = %62
  %152 = zext i16 %63 to i32
  %153 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @photoTag, i32 noundef %152) #9
  br label %301

154:                                              ; preds = %129, %118, %113, %116, %96, %99, %149, %135
  %155 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %156 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %157 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %155, i8 0, i64 32, i1 false)
  %158 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 256, ptr noundef nonnull %157) #9
  %159 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 5
  %160 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 257, ptr noundef nonnull %159) #9
  %161 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 8
  %162 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 274, ptr noundef nonnull %161) #9
  %163 = load i16, ptr %11, align 2, !tbaa !16
  %164 = icmp ne i16 %163, 2
  %165 = icmp slt i32 %47, 2
  %166 = select i1 %164, i1 true, i1 %165
  %167 = zext i1 %166 to i32
  %168 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 2
  store i32 %167, ptr %168, align 4, !tbaa !37
  %169 = call i32 @TIFFIsTiled(ptr noundef %1) #9
  %170 = icmp eq i32 %169, 0
  %171 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 13
  br i1 %166, label %172, label %266

172:                                              ; preds = %154
  %173 = select i1 %170, ptr @gtStripContig, ptr @gtTileContig
  store ptr %173, ptr %171, align 8, !tbaa !38
  %174 = call fastcc i32 @buildMap(ptr noundef nonnull %0), !range !39
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %263, label %176

176:                                              ; preds = %172
  %177 = load i16, ptr %50, align 2, !tbaa !36
  switch i16 %177, label %263 [
    i16 2, label %178
    i16 5, label %198
    i16 3, label %205
    i16 0, label %209
    i16 1, label %209
    i16 6, label %213
  ]

178:                                              ; preds = %176
  %179 = load i16, ptr %23, align 4, !tbaa !32
  switch i16 %179, label %263 [
    i16 8, label %180
    i16 16, label %189
  ]

180:                                              ; preds = %178
  %181 = load ptr, ptr %155, align 8, !tbaa !20
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %263

183:                                              ; preds = %180
  %184 = load i32, ptr %30, align 8, !tbaa !33
  %185 = icmp eq i32 %184, 2
  %186 = select i1 %185, ptr @putRGBUAcontig8bittile, ptr @putRGBcontig8bittile
  %187 = icmp eq i32 %184, 1
  %188 = select i1 %187, ptr @putRGBAAcontig8bittile, ptr %186
  br label %263

189:                                              ; preds = %178
  %190 = load ptr, ptr %155, align 8, !tbaa !20
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %263

192:                                              ; preds = %189
  %193 = load i32, ptr %30, align 8, !tbaa !33
  %194 = icmp eq i32 %193, 2
  %195 = select i1 %194, ptr @putRGBUAcontig16bittile, ptr @putRGBcontig16bittile
  %196 = icmp eq i32 %193, 1
  %197 = select i1 %196, ptr @putRGBAAcontig16bittile, ptr %195
  br label %263

198:                                              ; preds = %176
  %199 = load i16, ptr %23, align 4, !tbaa !32
  %200 = icmp eq i16 %199, 8
  br i1 %200, label %201, label %263

201:                                              ; preds = %198
  %202 = load ptr, ptr %155, align 8, !tbaa !20
  %203 = icmp eq ptr %202, null
  %204 = select i1 %203, ptr @putRGBcontig8bitCMYKtile, ptr @putRGBcontig8bitCMYKMaptile
  br label %263

205:                                              ; preds = %176
  %206 = load i16, ptr %23, align 4, !tbaa !32
  %207 = add i16 %206, -1
  %208 = icmp ult i16 %207, 8
  br i1 %208, label %255, label %263

209:                                              ; preds = %176, %176
  %210 = load i16, ptr %23, align 4, !tbaa !32
  %211 = add i16 %210, -1
  %212 = icmp ult i16 %211, 8
  br i1 %212, label %259, label %263

213:                                              ; preds = %176
  %214 = load i16, ptr %23, align 4, !tbaa !32
  %215 = icmp eq i16 %214, 8
  br i1 %215, label %216, label %263

216:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  %217 = load ptr, ptr %156, align 8, !tbaa !24
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = call ptr @_TIFFmalloc(i32 noundef 5176) #9
  store ptr %220, ptr %156, align 8, !tbaa !24
  %221 = icmp eq ptr %220, null
  %222 = load ptr, ptr %0, align 8, !tbaa !30
  br i1 %221, label %223, label %225

223:                                              ; preds = %219
  %224 = call ptr @TIFFFileName(ptr noundef %222) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %224, ptr noundef nonnull @.str.32) #9
  br label %253

225:                                              ; preds = %219
  call fastcc void @TIFFYCbCrToRGBInit(ptr noundef nonnull %220, ptr noundef %222)
  br label %238

226:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %227 = load ptr, ptr %0, align 8, !tbaa !30
  %228 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %227, i32 noundef 529, ptr noundef nonnull %7) #9
  %229 = load ptr, ptr %7, align 8, !tbaa !34
  %230 = load ptr, ptr %156, align 8, !tbaa !24
  %231 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %230, i64 0, i32 5
  %232 = call i32 @_TIFFmemcmp(ptr noundef %229, ptr noundef nonnull %231, i32 noundef 12) #9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %226
  %235 = load ptr, ptr %156, align 8, !tbaa !24
  %236 = load ptr, ptr %0, align 8, !tbaa !30
  call fastcc void @TIFFYCbCrToRGBInit(ptr noundef %235, ptr noundef %236)
  br label %237

237:                                              ; preds = %234, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %238

238:                                              ; preds = %237, %225
  %239 = load ptr, ptr %0, align 8, !tbaa !30
  %240 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %239, i32 noundef 530, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %241 = load i16, ptr %5, align 2, !tbaa !16
  %242 = zext i16 %241 to i32
  %243 = shl nuw nsw i32 %242, 4
  %244 = load i16, ptr %6, align 2, !tbaa !16
  %245 = zext i16 %244 to i32
  %246 = or i32 %243, %245
  switch i32 %246, label %252 [
    i32 68, label %253
    i32 66, label %247
    i32 65, label %248
    i32 34, label %249
    i32 33, label %250
    i32 17, label %251
  ]

247:                                              ; preds = %238
  br label %253

248:                                              ; preds = %238
  br label %253

249:                                              ; preds = %238
  br label %253

250:                                              ; preds = %238
  br label %253

251:                                              ; preds = %238
  br label %253

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252, %251, %250, %249, %248, %247, %238, %223
  %254 = phi ptr [ null, %223 ], [ null, %252 ], [ @putcontig8bitYCbCr11tile, %251 ], [ @putcontig8bitYCbCr21tile, %250 ], [ @putcontig8bitYCbCr22tile, %249 ], [ @putcontig8bitYCbCr41tile, %248 ], [ @putcontig8bitYCbCr42tile, %247 ], [ @putcontig8bitYCbCr44tile, %238 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %263

255:                                              ; preds = %205
  %256 = zext nneg i16 %207 to i64
  %257 = getelementptr inbounds [8 x ptr], ptr @switch.table.TIFFRGBAImageBegin, i64 0, i64 %256
  %258 = load ptr, ptr %257, align 8
  br label %263

259:                                              ; preds = %209
  %260 = zext nneg i16 %211 to i64
  %261 = getelementptr inbounds [8 x ptr], ptr @switch.table.TIFFRGBAImageBegin.33, i64 0, i64 %260
  %262 = load ptr, ptr %261, align 8
  br label %263

263:                                              ; preds = %259, %209, %255, %205, %172, %176, %178, %180, %183, %189, %192, %198, %201, %213, %253
  %264 = phi ptr [ null, %176 ], [ %254, %253 ], [ null, %213 ], [ null, %209 ], [ null, %205 ], [ null, %198 ], [ null, %178 ], [ @putRGBcontig16bittile, %189 ], [ null, %172 ], [ @putRGBcontig8bitMaptile, %180 ], [ %204, %201 ], [ %188, %183 ], [ %197, %192 ], [ %258, %255 ], [ %262, %259 ]
  %265 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  store ptr %264, ptr %265, align 8, !tbaa !40
  br label %301

266:                                              ; preds = %154
  %267 = select i1 %170, ptr @gtStripSeparate, ptr @gtTileSeparate
  store ptr %267, ptr %171, align 8, !tbaa !38
  %268 = call fastcc i32 @buildMap(ptr noundef nonnull %0), !range !39
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %293, label %270

270:                                              ; preds = %266
  %271 = load i16, ptr %50, align 2, !tbaa !36
  %272 = icmp eq i16 %271, 2
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = load i16, ptr %23, align 4, !tbaa !32
  switch i16 %274, label %293 [
    i16 8, label %275
    i16 16, label %284
  ]

275:                                              ; preds = %273
  %276 = load ptr, ptr %155, align 8, !tbaa !20
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %293

278:                                              ; preds = %275
  %279 = load i32, ptr %30, align 8, !tbaa !33
  %280 = icmp eq i32 %279, 2
  %281 = select i1 %280, ptr @putRGBUAseparate8bittile, ptr @putRGBseparate8bittile
  %282 = icmp eq i32 %279, 1
  %283 = select i1 %282, ptr @putRGBAAseparate8bittile, ptr %281
  br label %293

284:                                              ; preds = %273
  %285 = load ptr, ptr %155, align 8, !tbaa !20
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = load i32, ptr %30, align 8, !tbaa !33
  %289 = icmp eq i32 %288, 2
  %290 = select i1 %289, ptr @putRGBUAseparate16bittile, ptr @putRGBseparate16bittile
  %291 = icmp eq i32 %288, 1
  %292 = select i1 %291, ptr @putRGBAAseparate16bittile, ptr %290
  br label %293

293:                                              ; preds = %287, %278, %266, %270, %273, %275, %284
  %294 = phi ptr [ null, %273 ], [ @putRGBseparate16bittile, %284 ], [ null, %270 ], [ null, %266 ], [ @putRGBseparate8bitMaptile, %275 ], [ %283, %278 ], [ %292, %287 ]
  %295 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  store ptr %294, ptr %295, align 8, !tbaa !40
  br label %301

296:                                              ; preds = %126, %122
  %297 = phi i16 [ %124, %122 ], [ %127, %126 ]
  %298 = phi ptr [ @.str.9, %122 ], [ @.str.3, %126 ]
  %299 = zext i16 %297 to i32
  %300 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %298, i32 noundef %299) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  br label %301

301:                                              ; preds = %263, %293, %296, %151, %146, %141, %133, %120, %110, %102, %86, %67, %58, %26
  %302 = phi i32 [ 0, %26 ], [ 0, %151 ], [ 0, %141 ], [ 0, %146 ], [ 0, %133 ], [ 0, %120 ], [ 0, %110 ], [ 0, %102 ], [ 0, %86 ], [ 0, %67 ], [ 0, %58 ], [ 0, %296 ], [ 1, %293 ], [ 1, %263 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  ret i32 %302
}

declare i32 @TIFFGetFieldDefaulted(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @TIFFFileName(ptr noundef) local_unnamed_addr #3

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @TIFFIsTiled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @gtTileContig(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %10 = tail call i32 @TIFFTileSize(ptr noundef %7) #9
  %11 = tail call ptr @_TIFFmalloc(i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = tail call ptr @TIFFFileName(ptr noundef %7) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.24) #9
  br label %93

15:                                               ; preds = %4
  %16 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 322, ptr noundef nonnull %5) #9
  %17 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 323, ptr noundef nonnull %6) #9
  %18 = load ptr, ptr %0, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 8, !tbaa !41
  switch i16 %20, label %23 [
    i16 3, label %21
    i16 7, label %21
    i16 8, label %21
    i16 4, label %27
    i16 1, label %25
  ]

21:                                               ; preds = %15, %15, %15
  %22 = call ptr @TIFFFileName(ptr noundef %18) #9
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %22, ptr noundef nonnull @.str.25) #9
  store i16 4, ptr %19, align 8, !tbaa !41
  br label %27

23:                                               ; preds = %15
  %24 = call ptr @TIFFFileName(ptr noundef %18) #9
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %24, ptr noundef nonnull @.str.26) #9
  store i16 1, ptr %19, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %23, %15
  %26 = add i32 %3, -1
  br label %27

27:                                               ; preds = %15, %21, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %15 ], [ 0, %21 ]
  %29 = load i16, ptr %19, align 8, !tbaa !41
  %30 = icmp eq i16 %29, 1
  %31 = load i32, ptr %5, align 4
  %32 = sub i32 0, %2
  %33 = select i1 %30, i32 %2, i32 %32
  %34 = add i32 %33, %31
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %39 = icmp eq i32 %2, 0
  %40 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 20
  %41 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 19
  br label %42

42:                                               ; preds = %37, %85
  %43 = phi i32 [ 0, %37 ], [ %90, %85 ]
  %44 = phi i32 [ %28, %37 ], [ %88, %85 ]
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, %43
  %47 = icmp ugt i32 %46, %3
  %48 = sub i32 %3, %43
  %49 = select i1 %47, i32 %48, i32 %45
  br i1 %39, label %85, label %50

50:                                               ; preds = %42
  %51 = mul i32 %44, %2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %1, i64 %52
  %54 = mul i32 %44, %2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %1, i64 %55
  br label %57

57:                                               ; preds = %50, %81
  %58 = phi i32 [ 0, %50 ], [ %83, %81 ]
  %59 = load i32, ptr %40, align 4, !tbaa !29
  %60 = add i32 %59, %58
  %61 = load i32, ptr %41, align 8, !tbaa !28
  %62 = add i32 %61, %43
  %63 = call i32 @TIFFReadTile(ptr noundef %7, ptr noundef nonnull %11, i32 noundef %60, i32 noundef %62, i32 noundef 0, i16 noundef zeroext 0) #9
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, ptr %38, align 8, !tbaa !31
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65, %57
  %69 = load i32, ptr %5, align 4, !tbaa !42
  %70 = add i32 %69, %58
  %71 = icmp ugt i32 %70, %2
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = sub i32 %2, %58
  %74 = sub i32 %69, %73
  %75 = zext i32 %58 to i64
  %76 = getelementptr inbounds i32, ptr %56, i64 %75
  %77 = sub i32 %74, %34
  call void %9(ptr noundef nonnull %0, ptr noundef %76, i32 noundef %58, i32 noundef %44, i32 noundef %73, i32 noundef %49, i32 noundef %74, i32 noundef %77, ptr noundef nonnull %11) #9
  br label %81

78:                                               ; preds = %68
  %79 = zext i32 %58 to i64
  %80 = getelementptr inbounds i32, ptr %53, i64 %79
  call void %9(ptr noundef nonnull %0, ptr noundef %80, i32 noundef %58, i32 noundef %44, i32 noundef %69, i32 noundef %49, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %11) #9
  br label %81

81:                                               ; preds = %72, %78
  %82 = load i32, ptr %5, align 4, !tbaa !42
  %83 = add i32 %82, %58
  %84 = icmp ult i32 %83, %2
  br i1 %84, label %57, label %85, !llvm.loop !43

85:                                               ; preds = %81, %65, %42
  %86 = sub nsw i32 0, %49
  %87 = select i1 %30, i32 %86, i32 %49
  %88 = add i32 %87, %44
  %89 = load i32, ptr %6, align 4, !tbaa !42
  %90 = add i32 %89, %43
  %91 = icmp ult i32 %90, %3
  br i1 %91, label %42, label %92, !llvm.loop !45

92:                                               ; preds = %85, %27
  call void @_TIFFfree(ptr noundef nonnull %11) #9
  br label %93

93:                                               ; preds = %92, %13
  %94 = phi i32 [ 0, %13 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gtStripContig(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %9 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = tail call i32 @TIFFStripSize(ptr noundef %6) #9
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call ptr @TIFFFileName(ptr noundef %6) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef nonnull @.str.27) #9
  br label %67

16:                                               ; preds = %4
  %17 = load ptr, ptr %0, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 8
  %19 = load i16, ptr %18, align 8, !tbaa !41
  switch i16 %19, label %22 [
    i16 3, label %20
    i16 7, label %20
    i16 8, label %20
    i16 4, label %26
    i16 1, label %24
  ]

20:                                               ; preds = %16, %16, %16
  %21 = tail call ptr @TIFFFileName(ptr noundef %17) #9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %21, ptr noundef nonnull @.str.25) #9
  store i16 4, ptr %18, align 8, !tbaa !41
  br label %26

22:                                               ; preds = %16
  %23 = tail call ptr @TIFFFileName(ptr noundef %17) #9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %23, ptr noundef nonnull @.str.26) #9
  store i16 1, ptr %18, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %22, %16
  %25 = add i32 %3, -1
  br label %26

26:                                               ; preds = %16, %20, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %16 ], [ 0, %20 ]
  %28 = load i16, ptr %18, align 8, !tbaa !41
  %29 = icmp eq i16 %28, 1
  %30 = mul i32 %2, -2
  %31 = select i1 %29, i32 %30, i32 0
  %32 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %6, i32 noundef 278, ptr noundef nonnull %5) #9
  %33 = call i32 @TIFFScanlineSize(ptr noundef %6) #9
  %34 = call i32 @llvm.usub.sat.i32(i32 %10, i32 %2)
  %35 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 19
  br label %39

39:                                               ; preds = %37, %56
  %40 = phi i32 [ 0, %37 ], [ %64, %56 ]
  %41 = phi i32 [ %27, %37 ], [ %62, %56 ]
  %42 = load i32, ptr %5, align 4
  %43 = add i32 %42, %40
  %44 = icmp ugt i32 %43, %3
  %45 = sub i32 %3, %40
  %46 = select i1 %44, i32 %45, i32 %42
  %47 = load i32, ptr %38, align 8, !tbaa !28
  %48 = add i32 %47, %40
  %49 = call i32 @TIFFComputeStrip(ptr noundef %6, i32 noundef %48, i16 noundef zeroext 0) #9
  %50 = mul i32 %46, %33
  %51 = call i32 @TIFFReadEncodedStrip(ptr noundef %6, i32 noundef %49, ptr noundef nonnull %12, i32 noundef %50) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, ptr %35, align 8, !tbaa !31
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53, %39
  %57 = mul i32 %41, %2
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %1, i64 %58
  call void %8(ptr noundef nonnull %0, ptr noundef %59, i32 noundef 0, i32 noundef %41, i32 noundef %2, i32 noundef %46, i32 noundef %34, i32 noundef %31, ptr noundef nonnull %12) #9
  %60 = sub nsw i32 0, %46
  %61 = select i1 %29, i32 %60, i32 %46
  %62 = add i32 %61, %41
  %63 = load i32, ptr %5, align 4, !tbaa !42
  %64 = add i32 %63, %40
  %65 = icmp ult i32 %64, %3
  br i1 %65, label %39, label %66, !llvm.loop !47

66:                                               ; preds = %56, %53, %26
  call void @_TIFFfree(ptr noundef nonnull %12) #9
  br label %67

67:                                               ; preds = %66, %14
  %68 = phi i32 [ 0, %14 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gtTileSeparate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !33
  %12 = tail call i32 @TIFFTileSize(ptr noundef %7) #9
  %13 = shl nsw i32 %12, 2
  %14 = tail call ptr @_TIFFmalloc(i32 noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = tail call ptr @TIFFFileName(ptr noundef %7) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %17, ptr noundef nonnull @.str.24) #9
  br label %137

18:                                               ; preds = %4
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  %23 = icmp eq i32 %11, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %22, i8 -1, i64 %19, i1 false)
  br label %25

25:                                               ; preds = %24, %18
  %26 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 322, ptr noundef nonnull %5) #9
  %27 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 323, ptr noundef nonnull %6) #9
  %28 = load ptr, ptr %0, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 8
  %30 = load i16, ptr %29, align 8, !tbaa !41
  switch i16 %30, label %33 [
    i16 3, label %31
    i16 7, label %31
    i16 8, label %31
    i16 4, label %37
    i16 1, label %35
  ]

31:                                               ; preds = %25, %25, %25
  %32 = call ptr @TIFFFileName(ptr noundef %28) #9
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %32, ptr noundef nonnull @.str.25) #9
  store i16 4, ptr %29, align 8, !tbaa !41
  br label %37

33:                                               ; preds = %25
  %34 = call ptr @TIFFFileName(ptr noundef %28) #9
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %34, ptr noundef nonnull @.str.26) #9
  store i16 1, ptr %29, align 8, !tbaa !41
  br label %35

35:                                               ; preds = %33, %25
  %36 = add i32 %3, -1
  br label %37

37:                                               ; preds = %25, %31, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %25 ], [ 0, %31 ]
  %39 = load i16, ptr %29, align 8, !tbaa !41
  %40 = icmp eq i16 %39, 1
  %41 = load i32, ptr %5, align 4
  %42 = sub i32 0, %2
  %43 = select i1 %40, i32 %2, i32 %42
  %44 = add i32 %43, %41
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %136, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %52 = icmp eq i32 %2, 0
  %53 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 20
  %54 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 19
  br label %55

55:                                               ; preds = %47, %129
  %56 = phi i32 [ 0, %47 ], [ %134, %129 ]
  %57 = phi i32 [ %38, %47 ], [ %132, %129 ]
  %58 = load i32, ptr %6, align 4
  %59 = add i32 %58, %56
  %60 = icmp ugt i32 %59, %3
  %61 = sub i32 %3, %56
  %62 = select i1 %60, i32 %61, i32 %58
  br i1 %52, label %129, label %63

63:                                               ; preds = %55
  %64 = mul i32 %57, %2
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %1, i64 %65
  %67 = mul i32 %57, %2
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %1, i64 %68
  br label %70

70:                                               ; preds = %63, %125
  %71 = phi i32 [ 0, %63 ], [ %127, %125 ]
  %72 = load i32, ptr %53, align 4, !tbaa !29
  %73 = add i32 %72, %71
  %74 = load i32, ptr %54, align 8, !tbaa !28
  %75 = add i32 %74, %56
  %76 = call i32 @TIFFReadTile(ptr noundef %7, ptr noundef nonnull %14, i32 noundef %73, i32 noundef %75, i32 noundef 0, i16 noundef zeroext 0) #9
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, ptr %48, align 8, !tbaa !31
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %129

81:                                               ; preds = %78, %70
  %82 = load i32, ptr %53, align 4, !tbaa !29
  %83 = add i32 %82, %71
  %84 = load i32, ptr %54, align 8, !tbaa !28
  %85 = add i32 %84, %56
  %86 = call i32 @TIFFReadTile(ptr noundef %7, ptr noundef nonnull %20, i32 noundef %83, i32 noundef %85, i32 noundef 0, i16 noundef zeroext 1) #9
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, ptr %49, align 8, !tbaa !31
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %129

91:                                               ; preds = %88, %81
  %92 = load i32, ptr %53, align 4, !tbaa !29
  %93 = add i32 %92, %71
  %94 = load i32, ptr %54, align 8, !tbaa !28
  %95 = add i32 %94, %56
  %96 = call i32 @TIFFReadTile(ptr noundef %7, ptr noundef nonnull %21, i32 noundef %93, i32 noundef %95, i32 noundef 0, i16 noundef zeroext 2) #9
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, ptr %50, align 8, !tbaa !31
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %98, %91
  br i1 %23, label %112, label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %53, align 4, !tbaa !29
  %104 = add i32 %103, %71
  %105 = load i32, ptr %54, align 8, !tbaa !28
  %106 = add i32 %105, %56
  %107 = call i32 @TIFFReadTile(ptr noundef %7, ptr noundef nonnull %22, i32 noundef %104, i32 noundef %106, i32 noundef 0, i16 noundef zeroext 3) #9
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, ptr %51, align 8, !tbaa !31
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109, %102, %101
  %113 = load i32, ptr %5, align 4, !tbaa !42
  %114 = add i32 %113, %71
  %115 = icmp ugt i32 %114, %2
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = sub i32 %2, %71
  %118 = sub i32 %113, %117
  %119 = zext i32 %71 to i64
  %120 = getelementptr inbounds i32, ptr %69, i64 %119
  %121 = sub i32 %118, %44
  call void %9(ptr noundef nonnull %0, ptr noundef %120, i32 noundef %71, i32 noundef %57, i32 noundef %117, i32 noundef %62, i32 noundef %118, i32 noundef %121, ptr noundef nonnull %14, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #9
  br label %125

122:                                              ; preds = %112
  %123 = zext i32 %71 to i64
  %124 = getelementptr inbounds i32, ptr %66, i64 %123
  call void %9(ptr noundef nonnull %0, ptr noundef %124, i32 noundef %71, i32 noundef %57, i32 noundef %113, i32 noundef %62, i32 noundef 0, i32 noundef %45, ptr noundef nonnull %14, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #9
  br label %125

125:                                              ; preds = %116, %122
  %126 = load i32, ptr %5, align 4, !tbaa !42
  %127 = add i32 %126, %71
  %128 = icmp ult i32 %127, %2
  br i1 %128, label %70, label %129, !llvm.loop !48

129:                                              ; preds = %125, %78, %88, %98, %109, %55
  %130 = sub nsw i32 0, %62
  %131 = select i1 %40, i32 %130, i32 %62
  %132 = add i32 %131, %57
  %133 = load i32, ptr %6, align 4, !tbaa !42
  %134 = add i32 %133, %56
  %135 = icmp ult i32 %134, %3
  br i1 %135, label %55, label %136, !llvm.loop !49

136:                                              ; preds = %129, %37
  call void @_TIFFfree(ptr noundef nonnull %14) #9
  br label %137

137:                                              ; preds = %136, %16
  %138 = phi i32 [ 0, %16 ], [ 1, %136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gtStripSeparate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %9 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = tail call i32 @TIFFStripSize(ptr noundef %6) #9
  %14 = shl nsw i32 %13, 2
  %15 = tail call ptr @_TIFFmalloc(i32 noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = tail call ptr @TIFFFileName(ptr noundef %6) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.24) #9
  br label %102

19:                                               ; preds = %4
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds i8, ptr %15, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  %24 = icmp eq i32 %12, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %23, i8 -1, i64 %20, i1 false)
  br label %26

26:                                               ; preds = %25, %19
  %27 = load ptr, ptr %0, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 8
  %29 = load i16, ptr %28, align 8, !tbaa !41
  switch i16 %29, label %32 [
    i16 3, label %30
    i16 7, label %30
    i16 8, label %30
    i16 4, label %36
    i16 1, label %34
  ]

30:                                               ; preds = %26, %26, %26
  %31 = tail call ptr @TIFFFileName(ptr noundef %27) #9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %31, ptr noundef nonnull @.str.25) #9
  store i16 4, ptr %28, align 8, !tbaa !41
  br label %36

32:                                               ; preds = %26
  %33 = tail call ptr @TIFFFileName(ptr noundef %27) #9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %33, ptr noundef nonnull @.str.26) #9
  store i16 1, ptr %28, align 8, !tbaa !41
  br label %34

34:                                               ; preds = %32, %26
  %35 = add i32 %3, -1
  br label %36

36:                                               ; preds = %26, %30, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %26 ], [ 0, %30 ]
  %38 = load i16, ptr %28, align 8, !tbaa !41
  %39 = icmp eq i16 %38, 1
  %40 = mul i32 %2, -2
  %41 = select i1 %39, i32 %40, i32 0
  %42 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %6, i32 noundef 278, ptr noundef nonnull %5) #9
  %43 = call i32 @TIFFScanlineSize(ptr noundef %6) #9
  %44 = call i32 @llvm.usub.sat.i32(i32 %10, i32 %2)
  %45 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %48 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 1
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %101, label %50

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 19
  br label %52

52:                                               ; preds = %50, %91
  %53 = phi i32 [ 0, %50 ], [ %99, %91 ]
  %54 = phi i32 [ %37, %50 ], [ %97, %91 ]
  %55 = load i32, ptr %5, align 4
  %56 = add i32 %55, %53
  %57 = icmp ugt i32 %56, %3
  %58 = sub i32 %3, %53
  %59 = select i1 %57, i32 %58, i32 %55
  %60 = load i32, ptr %51, align 8, !tbaa !28
  %61 = add i32 %60, %53
  %62 = call i32 @TIFFComputeStrip(ptr noundef %6, i32 noundef %61, i16 noundef zeroext 0) #9
  %63 = mul i32 %59, %43
  %64 = call i32 @TIFFReadEncodedStrip(ptr noundef %6, i32 noundef %62, ptr noundef nonnull %15, i32 noundef %63) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, ptr %45, align 8, !tbaa !31
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %66, %52
  %70 = call i32 @TIFFComputeStrip(ptr noundef %6, i32 noundef %61, i16 noundef zeroext 1) #9
  %71 = call i32 @TIFFReadEncodedStrip(ptr noundef %6, i32 noundef %70, ptr noundef nonnull %21, i32 noundef %63) #9
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, ptr %46, align 8, !tbaa !31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73, %69
  %77 = call i32 @TIFFComputeStrip(ptr noundef %6, i32 noundef %61, i16 noundef zeroext 2) #9
  %78 = call i32 @TIFFReadEncodedStrip(ptr noundef %6, i32 noundef %77, ptr noundef nonnull %22, i32 noundef %63) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, ptr %47, align 8, !tbaa !31
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80, %76
  br i1 %24, label %91, label %84

84:                                               ; preds = %83
  %85 = call i32 @TIFFComputeStrip(ptr noundef %6, i32 noundef %61, i16 noundef zeroext 3) #9
  %86 = call i32 @TIFFReadEncodedStrip(ptr noundef %6, i32 noundef %85, ptr noundef nonnull %23, i32 noundef %63) #9
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, ptr %48, align 8, !tbaa !31
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88, %84, %83
  %92 = mul i32 %54, %2
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %1, i64 %93
  call void %8(ptr noundef nonnull %0, ptr noundef %94, i32 noundef 0, i32 noundef %54, i32 noundef %2, i32 noundef %59, i32 noundef %44, i32 noundef %41, ptr noundef nonnull %15, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #9
  %95 = sub nsw i32 0, %59
  %96 = select i1 %39, i32 %95, i32 %59
  %97 = add i32 %96, %54
  %98 = load i32, ptr %5, align 4, !tbaa !42
  %99 = add i32 %98, %53
  %100 = icmp ult i32 %99, %3
  br i1 %100, label %52, label %101, !llvm.loop !50

101:                                              ; preds = %91, %66, %73, %80, %88, %36
  call void @_TIFFfree(ptr noundef nonnull %15) #9
  br label %102

102:                                              ; preds = %101, %17
  %103 = phi i32 [ 0, %17 ], [ 1, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFRGBAImageGet(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !30
  %10 = tail call ptr @TIFFFileName(ptr noundef %9) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str.18) #9
  br label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !30
  %17 = tail call ptr @TIFFFileName(ptr noundef %16) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %17, ptr noundef nonnull @.str.19) #9
  br label %20

18:                                               ; preds = %11
  %19 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  br label %20

20:                                               ; preds = %18, %15, %8
  %21 = phi i32 [ 0, %8 ], [ 0, %15 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadRGBAImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct._TIFFRGBAImage, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #9
  %8 = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %4, ptr noundef nonnull %6), !range !39
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = sub i32 %2, %12
  %14 = mul i32 %13, %1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load ptr, ptr %7, align 8, !tbaa !30
  %22 = call ptr @TIFFFileName(ptr noundef %21) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef nonnull @.str.18) #9
  br label %32

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !30
  %29 = call ptr @TIFFFileName(ptr noundef %28) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %29, ptr noundef nonnull @.str.19) #9
  br label %32

30:                                               ; preds = %23
  %31 = call i32 %18(ptr noundef nonnull %7, ptr noundef %16, i32 noundef %1, i32 noundef %12) #9
  br label %32

32:                                               ; preds = %20, %27, %30
  %33 = phi i32 [ 0, %20 ], [ 0, %27 ], [ %31, %30 ]
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %7)
  br label %36

34:                                               ; preds = %5
  %35 = call ptr @TIFFFileName(ptr noundef %0) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %35, ptr noundef nonnull %6) #9
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #9
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadRGBAStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct._TIFFRGBAImage, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = tail call i32 @TIFFIsTiled(ptr noundef %0) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @TIFFFileName(ptr noundef %0) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str.20) #9
  br label %52

11:                                               ; preds = %3
  %12 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef 278, ptr noundef nonnull %6) #9
  %13 = load i32, ptr %6, align 4, !tbaa !42
  %14 = urem i32 %1, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call ptr @TIFFFileName(ptr noundef %0) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %17, ptr noundef nonnull @.str.21) #9
  br label %52

18:                                               ; preds = %11
  %19 = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4), !range !39
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 19
  store i32 %1, ptr %22, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 20
  store i32 0, ptr %23, align 4, !tbaa !29
  %24 = load i32, ptr %6, align 4, !tbaa !42
  %25 = add i32 %24, %1
  %26 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !51
  %28 = icmp ugt i32 %25, %27
  %29 = sub i32 %27, %1
  %30 = select i1 %28, i32 %29, i32 %24
  %31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load ptr, ptr %5, align 8, !tbaa !30
  %38 = call ptr @TIFFFileName(ptr noundef %37) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.18) #9
  br label %48

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr %5, align 8, !tbaa !30
  %45 = call ptr @TIFFFileName(ptr noundef %44) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %45, ptr noundef nonnull @.str.19) #9
  br label %48

46:                                               ; preds = %39
  %47 = call i32 %34(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %32, i32 noundef %30) #9
  br label %48

48:                                               ; preds = %36, %43, %46
  %49 = phi i32 [ 0, %36 ], [ 0, %43 ], [ %47, %46 ]
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %5)
  br label %52

50:                                               ; preds = %18
  %51 = call ptr @TIFFFileName(ptr noundef %0) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %51, ptr noundef nonnull %4) #9
  br label %52

52:                                               ; preds = %48, %50, %16, %9
  %53 = phi i32 [ 0, %9 ], [ 0, %16 ], [ %49, %48 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFReadRGBATile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct._TIFFRGBAImage, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %9 = tail call i32 @TIFFIsTiled(ptr noundef %0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %4
  %12 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef 322, ptr noundef nonnull %7) #9
  %13 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef 323, ptr noundef nonnull %8) #9
  %14 = load i32, ptr %7, align 4, !tbaa !42
  %15 = urem i32 %1, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %110

17:                                               ; preds = %11
  %18 = load i32, ptr %8, align 4, !tbaa !42
  %19 = urem i32 %2, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5), !range !39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %110, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4, !tbaa !42
  %26 = add i32 %25, %2
  %27 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !51
  %29 = icmp ugt i32 %26, %28
  %30 = sub i32 %28, %2
  %31 = select i1 %29, i32 %30, i32 %25
  %32 = load i32, ptr %7, align 4, !tbaa !42
  %33 = add i32 %32, %1
  %34 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = icmp ugt i32 %33, %35
  %37 = sub i32 %35, %1
  %38 = select i1 %36, i32 %37, i32 %32
  %39 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 19
  store i32 %2, ptr %39, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 20
  store i32 %1, ptr %40, align 4, !tbaa !29
  %41 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 13
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load ptr, ptr %6, align 8, !tbaa !30
  %46 = call ptr @TIFFFileName(ptr noundef %45) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %46, ptr noundef nonnull @.str.18) #9
  br label %56

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %6, align 8, !tbaa !30
  %53 = call ptr @TIFFFileName(ptr noundef %52) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %53, ptr noundef nonnull @.str.19) #9
  br label %56

54:                                               ; preds = %47
  %55 = call i32 %42(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %38, i32 noundef %31) #9
  br label %56

56:                                               ; preds = %44, %51, %54
  %57 = phi i32 [ 0, %44 ], [ 0, %51 ], [ %55, %54 ]
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %6)
  %58 = load i32, ptr %7, align 4, !tbaa !42
  %59 = icmp eq i32 %38, %58
  %60 = load i32, ptr %8, align 4
  %61 = icmp eq i32 %31, %60
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %113, label %63

63:                                               ; preds = %56
  %64 = icmp eq i32 %31, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = zext i32 %38 to i64
  %67 = shl i32 %38, 2
  %68 = getelementptr inbounds i32, ptr %3, i64 %66
  %69 = zext i32 %31 to i64
  br label %73

70:                                               ; preds = %73, %63
  %71 = load i32, ptr %8, align 4, !tbaa !42
  %72 = icmp ult i32 %31, %71
  br i1 %72, label %97, label %113

73:                                               ; preds = %65, %73
  %74 = phi i64 [ 0, %65 ], [ %95, %73 ]
  %75 = load i32, ptr %8, align 4, !tbaa !42
  %76 = trunc i64 %74 to i32
  %77 = xor i32 %76, -1
  %78 = add i32 %75, %77
  %79 = load i32, ptr %7, align 4, !tbaa !42
  %80 = mul i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %3, i64 %81
  %83 = add i32 %31, %77
  %84 = mul i32 %83, %38
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %3, i64 %85
  call void @_TIFFmemcpy(ptr noundef %82, ptr noundef %86, i32 noundef %67) #9
  %87 = load i32, ptr %8, align 4, !tbaa !42
  %88 = add i32 %87, %77
  %89 = load i32, ptr %7, align 4, !tbaa !42
  %90 = mul i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %68, i64 %91
  %93 = sub i32 %89, %38
  %94 = shl i32 %93, 2
  call void @_TIFFmemset(ptr noundef %92, i32 noundef 0, i32 noundef %94) #9
  %95 = add nuw nsw i64 %74, 1
  %96 = icmp ult i64 %95, %69
  br i1 %96, label %73, label %70, !llvm.loop !52

97:                                               ; preds = %70, %97
  %98 = phi i32 [ %108, %97 ], [ %71, %70 ]
  %99 = phi i32 [ %107, %97 ], [ %31, %70 ]
  %100 = xor i32 %99, -1
  %101 = add i32 %98, %100
  %102 = load i32, ptr %7, align 4, !tbaa !42
  %103 = mul i32 %102, %101
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %3, i64 %104
  %106 = shl i32 %102, 2
  call void @_TIFFmemset(ptr noundef %105, i32 noundef 0, i32 noundef %106) #9
  %107 = add nuw i32 %99, 1
  %108 = load i32, ptr %8, align 4, !tbaa !42
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %97, label %113, !llvm.loop !53

110:                                              ; preds = %21, %11, %17, %4
  %111 = phi ptr [ @.str.22, %4 ], [ @.str.23, %17 ], [ @.str.23, %11 ], [ %5, %21 ]
  %112 = call ptr @TIFFFileName(ptr noundef %0) #9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %112, ptr noundef nonnull %111) #9
  br label %113

113:                                              ; preds = %97, %110, %70, %56
  %114 = phi i32 [ %57, %56 ], [ %57, %70 ], [ 0, %110 ], [ %57, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #9
  ret i32 %114
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @TIFFTileSize(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFReadTile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @TIFFStripSize(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFReadEncodedStrip(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @TIFFComputeStrip(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buildMap(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 2, !tbaa !36
  switch i16 %3, label %418 [
    i16 2, label %4
    i16 6, label %4
    i16 5, label %4
    i16 1, label %8
    i16 0, label %8
    i16 3, label %173
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 4, !tbaa !32
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %418, label %8

8:                                                ; preds = %4, %1, %1
  %9 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 6
  %10 = load i16, ptr %9, align 4, !tbaa !32
  %11 = zext nneg i16 %10 to i64
  %12 = shl nsw i64 -1, %11
  %13 = trunc i64 %12 to i32
  %14 = xor i32 %13, -1
  %15 = sub nsw i32 0, %13
  %16 = tail call ptr @_TIFFmalloc(i32 noundef %15) #9
  %17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  store ptr %16, ptr %17, align 8, !tbaa !20
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load ptr, ptr %0, align 8, !tbaa !30
  %21 = tail call ptr @TIFFFileName(ptr noundef %20) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef nonnull @.str.29) #9
  br label %419

22:                                               ; preds = %8
  %23 = load i16, ptr %2, align 2, !tbaa !36
  %24 = icmp eq i16 %23, 0
  %25 = icmp sgt i32 %13, -1
  br i1 %24, label %30, label %26

26:                                               ; preds = %22
  br i1 %25, label %55, label %27

27:                                               ; preds = %26
  %28 = sub i64 0, %12
  %29 = and i64 %28, 4294967295
  br label %45

30:                                               ; preds = %22
  br i1 %25, label %55, label %31

31:                                               ; preds = %30
  %32 = sub i64 0, %12
  %33 = and i64 %32, 4294967295
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = trunc i64 %35 to i32
  %37 = sub i32 %14, %36
  %38 = mul i32 %37, 255
  %39 = sdiv i32 %38, %14
  %40 = trunc i32 %39 to i8
  %41 = load ptr, ptr %17, align 8, !tbaa !20
  %42 = getelementptr inbounds i8, ptr %41, i64 %35
  store i8 %40, ptr %42, align 1, !tbaa !40
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %33
  br i1 %44, label %55, label %34, !llvm.loop !54

45:                                               ; preds = %45, %27
  %46 = phi i64 [ 0, %27 ], [ %53, %45 ]
  %47 = trunc i64 %46 to i32
  %48 = mul i32 %47, 255
  %49 = udiv i32 %48, %14
  %50 = trunc i32 %49 to i8
  %51 = load ptr, ptr %17, align 8, !tbaa !20
  %52 = getelementptr inbounds i8, ptr %51, i64 %46
  store i8 %50, ptr %52, align 1, !tbaa !40
  %53 = add nuw nsw i64 %46, 1
  %54 = icmp eq i64 %53, %29
  br i1 %54, label %55, label %45, !llvm.loop !55

55:                                               ; preds = %45, %34, %30, %26
  %56 = load i16, ptr %9, align 4, !tbaa !32
  %57 = icmp ult i16 %56, 9
  br i1 %57, label %58, label %418

58:                                               ; preds = %55
  %59 = load i16, ptr %2, align 2, !tbaa !36
  %60 = icmp ult i16 %59, 2
  br i1 %60, label %61, label %418

61:                                               ; preds = %58
  %62 = load ptr, ptr %17, align 8, !tbaa !20
  %63 = udiv i16 8, %56
  %64 = shl nuw nsw i16 %63, 10
  %65 = add nuw nsw i16 %64, 2048
  %66 = zext nneg i16 %65 to i32
  %67 = tail call ptr @_TIFFmalloc(i32 noundef %66) #9
  %68 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  store ptr %67, ptr %68, align 8, !tbaa !22
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load ptr, ptr %0, align 8, !tbaa !30
  %72 = tail call ptr @TIFFFileName(ptr noundef %71) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %72, ptr noundef nonnull @.str.30) #9
  br label %170

73:                                               ; preds = %61
  %74 = getelementptr inbounds ptr, ptr %67, i64 256
  br label %75

75:                                               ; preds = %166, %73
  %76 = phi i64 [ 0, %73 ], [ %168, %166 ]
  %77 = phi ptr [ %74, %73 ], [ %167, %166 ]
  %78 = load ptr, ptr %68, align 8, !tbaa !22
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  store ptr %77, ptr %79, align 8, !tbaa !34
  switch i16 %56, label %166 [
    i16 1, label %80
    i16 2, label %113
    i16 4, label %140
    i16 8, label %156
  ]

80:                                               ; preds = %75
  %81 = lshr i64 %76, 7
  %82 = and i64 %81, 33554431
  %83 = getelementptr inbounds i8, ptr %62, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !40
  %85 = zext i8 %84 to i32
  %86 = mul nuw nsw i32 %85, 65793
  %87 = or disjoint i32 %86, -16777216
  %88 = getelementptr inbounds i32, ptr %77, i64 1
  store i32 %87, ptr %77, align 4, !tbaa !42
  %89 = lshr i64 %76, 6
  %90 = and i64 %89, 1
  %91 = getelementptr inbounds i8, ptr %62, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !40
  %93 = zext i8 %92 to i32
  %94 = mul nuw nsw i32 %93, 65793
  %95 = or disjoint i32 %94, -16777216
  %96 = getelementptr inbounds i32, ptr %77, i64 2
  store i32 %95, ptr %88, align 4, !tbaa !42
  %97 = lshr i64 %76, 5
  %98 = and i64 %97, 1
  %99 = getelementptr inbounds i8, ptr %62, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !40
  %101 = zext i8 %100 to i32
  %102 = mul nuw nsw i32 %101, 65793
  %103 = or disjoint i32 %102, -16777216
  %104 = getelementptr inbounds i32, ptr %77, i64 3
  store i32 %103, ptr %96, align 4, !tbaa !42
  %105 = lshr i64 %76, 4
  %106 = and i64 %105, 1
  %107 = getelementptr inbounds i8, ptr %62, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !40
  %109 = zext i8 %108 to i32
  %110 = mul nuw nsw i32 %109, 65793
  %111 = or disjoint i32 %110, -16777216
  %112 = getelementptr inbounds i32, ptr %77, i64 4
  store i32 %111, ptr %104, align 4, !tbaa !42
  br label %113

113:                                              ; preds = %75, %80
  %114 = phi i64 [ 3, %80 ], [ 6, %75 ]
  %115 = phi i64 [ 1, %80 ], [ 67108863, %75 ]
  %116 = phi i64 [ 5, %80 ], [ 1, %75 ]
  %117 = phi ptr [ %112, %80 ], [ %77, %75 ]
  %118 = phi i64 [ 2, %80 ], [ 4, %75 ]
  %119 = phi i64 [ 1, %80 ], [ 3, %75 ]
  %120 = phi i64 [ 6, %80 ], [ 2, %75 ]
  %121 = phi i64 [ 1, %80 ], [ 2, %75 ]
  %122 = phi i64 [ 7, %80 ], [ 3, %75 ]
  %123 = phi i64 [ 8, %80 ], [ 4, %75 ]
  %124 = lshr i64 %76, %114
  %125 = and i64 %124, %115
  %126 = getelementptr inbounds i8, ptr %62, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !40
  %128 = zext i8 %127 to i32
  %129 = mul nuw nsw i32 %128, 65793
  %130 = or disjoint i32 %129, -16777216
  %131 = getelementptr inbounds i32, ptr %77, i64 %116
  store i32 %130, ptr %117, align 4, !tbaa !42
  %132 = lshr i64 %76, %118
  %133 = and i64 %132, %119
  %134 = getelementptr inbounds i8, ptr %62, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !40
  %136 = zext i8 %135 to i32
  %137 = mul nuw nsw i32 %136, 65793
  %138 = or disjoint i32 %137, -16777216
  %139 = getelementptr inbounds i32, ptr %77, i64 %120
  store i32 %138, ptr %131, align 4, !tbaa !42
  br label %140

140:                                              ; preds = %113, %75
  %141 = phi i64 [ 4, %75 ], [ %121, %113 ]
  %142 = phi i64 [ 268435455, %75 ], [ %119, %113 ]
  %143 = phi i64 [ 1, %75 ], [ %122, %113 ]
  %144 = phi ptr [ %77, %75 ], [ %139, %113 ]
  %145 = phi i64 [ 15, %75 ], [ %119, %113 ]
  %146 = phi i64 [ 2, %75 ], [ %123, %113 ]
  %147 = lshr i64 %76, %141
  %148 = and i64 %147, %142
  %149 = getelementptr inbounds i8, ptr %62, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !40
  %151 = zext i8 %150 to i32
  %152 = mul nuw nsw i32 %151, 65793
  %153 = or disjoint i32 %152, -16777216
  %154 = getelementptr inbounds i32, ptr %77, i64 %143
  store i32 %153, ptr %144, align 4, !tbaa !42
  %155 = and i64 %76, %145
  br label %156

156:                                              ; preds = %140, %75
  %157 = phi i64 [ %76, %75 ], [ %155, %140 ]
  %158 = phi i64 [ 1, %75 ], [ %146, %140 ]
  %159 = phi ptr [ %77, %75 ], [ %154, %140 ]
  %160 = getelementptr inbounds i8, ptr %62, i64 %157
  %161 = load i8, ptr %160, align 1, !tbaa !40
  %162 = zext i8 %161 to i32
  %163 = mul nuw nsw i32 %162, 65793
  %164 = or disjoint i32 %163, -16777216
  %165 = getelementptr inbounds i32, ptr %77, i64 %158
  store i32 %164, ptr %159, align 4, !tbaa !42
  br label %166

166:                                              ; preds = %156, %75
  %167 = phi ptr [ %77, %75 ], [ %165, %156 ]
  %168 = add nuw nsw i64 %76, 1
  %169 = icmp eq i64 %168, 256
  br i1 %169, label %170, label %75, !llvm.loop !56

170:                                              ; preds = %166, %70
  br i1 %69, label %419, label %171

171:                                              ; preds = %170
  %172 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void @_TIFFfree(ptr noundef %172) #9
  store ptr null, ptr %17, align 8, !tbaa !20
  br label %418

173:                                              ; preds = %1
  %174 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 10
  %175 = load ptr, ptr %174, align 8, !tbaa !25
  %176 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 11
  %177 = load ptr, ptr %176, align 8, !tbaa !26
  %178 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 12
  %179 = load ptr, ptr %178, align 8, !tbaa !27
  %180 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 6
  %181 = load i16, ptr %180, align 4, !tbaa !32
  %182 = zext nneg i16 %181 to i64
  %183 = shl nuw i64 1, %182
  br label %184

184:                                              ; preds = %198, %173
  %185 = phi ptr [ %175, %173 ], [ %192, %198 ]
  %186 = phi ptr [ %177, %173 ], [ %199, %198 ]
  %187 = phi ptr [ %179, %173 ], [ %200, %198 ]
  %188 = phi i64 [ %183, %173 ], [ %189, %198 ]
  %189 = add nsw i64 %188, -1
  %190 = icmp sgt i64 %188, 0
  br i1 %190, label %191, label %220

191:                                              ; preds = %184
  %192 = getelementptr inbounds i16, ptr %185, i64 1
  %193 = load i16, ptr %185, align 2, !tbaa !16
  %194 = icmp ugt i16 %193, 255
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i16, ptr %186, align 2, !tbaa !16
  %197 = icmp ugt i16 %196, 255
  br i1 %197, label %203, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds i16, ptr %186, i64 1
  %200 = getelementptr inbounds i16, ptr %187, i64 1
  %201 = load i16, ptr %187, align 2, !tbaa !16
  %202 = icmp ugt i16 %201, 255
  br i1 %202, label %203, label %184, !llvm.loop !57

203:                                              ; preds = %191, %195, %198
  br i1 %190, label %204, label %220

204:                                              ; preds = %203
  %205 = shl nsw i64 -1, %182
  %206 = xor i64 %205, -1
  br label %207

207:                                              ; preds = %207, %204
  %208 = phi i64 [ %218, %207 ], [ %206, %204 ]
  %209 = getelementptr inbounds i16, ptr %175, i64 %208
  %210 = load i16, ptr %209, align 2, !tbaa !16
  %211 = lshr i16 %210, 8
  store i16 %211, ptr %209, align 2, !tbaa !16
  %212 = getelementptr inbounds i16, ptr %177, i64 %208
  %213 = load i16, ptr %212, align 2, !tbaa !16
  %214 = lshr i16 %213, 8
  store i16 %214, ptr %212, align 2, !tbaa !16
  %215 = getelementptr inbounds i16, ptr %179, i64 %208
  %216 = load i16, ptr %215, align 2, !tbaa !16
  %217 = lshr i16 %216, 8
  store i16 %217, ptr %215, align 2, !tbaa !16
  %218 = add nsw i64 %208, -1
  %219 = icmp sgt i64 %208, 0
  br i1 %219, label %207, label %223, !llvm.loop !58

220:                                              ; preds = %184, %203
  %221 = load ptr, ptr %0, align 8, !tbaa !30
  %222 = tail call ptr @TIFFFileName(ptr noundef %221) #9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %222, ptr noundef nonnull @.str.28) #9
  br label %223

223:                                              ; preds = %207, %220
  %224 = load i16, ptr %180, align 4, !tbaa !32
  %225 = icmp ult i16 %224, 9
  br i1 %225, label %226, label %418

226:                                              ; preds = %223
  %227 = udiv i16 8, %224
  %228 = load ptr, ptr %174, align 8, !tbaa !25
  %229 = load ptr, ptr %176, align 8, !tbaa !26
  %230 = load ptr, ptr %178, align 8, !tbaa !27
  %231 = shl nuw nsw i16 %227, 10
  %232 = add nuw nsw i16 %231, 2048
  %233 = zext nneg i16 %232 to i32
  %234 = tail call ptr @_TIFFmalloc(i32 noundef %233) #9
  %235 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  store ptr %234, ptr %235, align 8, !tbaa !23
  %236 = icmp eq ptr %234, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %226
  %238 = load ptr, ptr %0, align 8, !tbaa !30
  %239 = tail call ptr @TIFFFileName(ptr noundef %238) #9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %239, ptr noundef nonnull @.str.31) #9
  br label %417

240:                                              ; preds = %226
  %241 = getelementptr inbounds ptr, ptr %234, i64 256
  br label %242

242:                                              ; preds = %413, %240
  %243 = phi i64 [ 0, %240 ], [ %415, %413 ]
  %244 = phi ptr [ %241, %240 ], [ %414, %413 ]
  %245 = load ptr, ptr %235, align 8, !tbaa !23
  %246 = getelementptr inbounds ptr, ptr %245, i64 %243
  store ptr %244, ptr %246, align 8, !tbaa !34
  switch i16 %224, label %413 [
    i16 1, label %247
    i16 2, label %320
    i16 4, label %367
    i16 8, label %393
  ]

247:                                              ; preds = %242
  %248 = lshr i64 %243, 7
  %249 = and i64 %248, 33554431
  %250 = getelementptr inbounds i16, ptr %228, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !16
  %252 = and i16 %251, 255
  %253 = getelementptr inbounds i16, ptr %229, i64 %249
  %254 = load i16, ptr %253, align 2, !tbaa !16
  %255 = shl i16 %254, 8
  %256 = or disjoint i16 %255, %252
  %257 = zext i16 %256 to i32
  %258 = getelementptr inbounds i16, ptr %230, i64 %249
  %259 = load i16, ptr %258, align 2, !tbaa !16
  %260 = and i16 %259, 255
  %261 = zext nneg i16 %260 to i32
  %262 = shl nuw nsw i32 %261, 16
  %263 = or disjoint i32 %262, %257
  %264 = or disjoint i32 %263, -16777216
  %265 = getelementptr inbounds i32, ptr %244, i64 1
  store i32 %264, ptr %244, align 4, !tbaa !42
  %266 = lshr i64 %243, 6
  %267 = and i64 %266, 1
  %268 = getelementptr inbounds i16, ptr %228, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !16
  %270 = and i16 %269, 255
  %271 = getelementptr inbounds i16, ptr %229, i64 %267
  %272 = load i16, ptr %271, align 2, !tbaa !16
  %273 = shl i16 %272, 8
  %274 = or disjoint i16 %273, %270
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds i16, ptr %230, i64 %267
  %277 = load i16, ptr %276, align 2, !tbaa !16
  %278 = and i16 %277, 255
  %279 = zext nneg i16 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = or disjoint i32 %280, %275
  %282 = or disjoint i32 %281, -16777216
  %283 = getelementptr inbounds i32, ptr %244, i64 2
  store i32 %282, ptr %265, align 4, !tbaa !42
  %284 = lshr i64 %243, 5
  %285 = and i64 %284, 1
  %286 = getelementptr inbounds i16, ptr %228, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !16
  %288 = and i16 %287, 255
  %289 = getelementptr inbounds i16, ptr %229, i64 %285
  %290 = load i16, ptr %289, align 2, !tbaa !16
  %291 = shl i16 %290, 8
  %292 = or disjoint i16 %291, %288
  %293 = zext i16 %292 to i32
  %294 = getelementptr inbounds i16, ptr %230, i64 %285
  %295 = load i16, ptr %294, align 2, !tbaa !16
  %296 = and i16 %295, 255
  %297 = zext nneg i16 %296 to i32
  %298 = shl nuw nsw i32 %297, 16
  %299 = or disjoint i32 %298, %293
  %300 = or disjoint i32 %299, -16777216
  %301 = getelementptr inbounds i32, ptr %244, i64 3
  store i32 %300, ptr %283, align 4, !tbaa !42
  %302 = lshr i64 %243, 4
  %303 = and i64 %302, 1
  %304 = getelementptr inbounds i16, ptr %228, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !16
  %306 = and i16 %305, 255
  %307 = getelementptr inbounds i16, ptr %229, i64 %303
  %308 = load i16, ptr %307, align 2, !tbaa !16
  %309 = shl i16 %308, 8
  %310 = or disjoint i16 %309, %306
  %311 = zext i16 %310 to i32
  %312 = getelementptr inbounds i16, ptr %230, i64 %303
  %313 = load i16, ptr %312, align 2, !tbaa !16
  %314 = and i16 %313, 255
  %315 = zext nneg i16 %314 to i32
  %316 = shl nuw nsw i32 %315, 16
  %317 = or disjoint i32 %316, %311
  %318 = or disjoint i32 %317, -16777216
  %319 = getelementptr inbounds i32, ptr %244, i64 4
  store i32 %318, ptr %301, align 4, !tbaa !42
  br label %320

320:                                              ; preds = %242, %247
  %321 = phi i64 [ 3, %247 ], [ 6, %242 ]
  %322 = phi i64 [ 1, %247 ], [ 67108863, %242 ]
  %323 = phi i64 [ 5, %247 ], [ 1, %242 ]
  %324 = phi ptr [ %319, %247 ], [ %244, %242 ]
  %325 = phi i64 [ 2, %247 ], [ 4, %242 ]
  %326 = phi i64 [ 1, %247 ], [ 3, %242 ]
  %327 = phi i64 [ 6, %247 ], [ 2, %242 ]
  %328 = phi i64 [ 1, %247 ], [ 2, %242 ]
  %329 = phi i64 [ 7, %247 ], [ 3, %242 ]
  %330 = phi i64 [ 8, %247 ], [ 4, %242 ]
  %331 = lshr i64 %243, %321
  %332 = and i64 %331, %322
  %333 = getelementptr inbounds i16, ptr %228, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !16
  %335 = and i16 %334, 255
  %336 = getelementptr inbounds i16, ptr %229, i64 %332
  %337 = load i16, ptr %336, align 2, !tbaa !16
  %338 = shl i16 %337, 8
  %339 = or disjoint i16 %338, %335
  %340 = zext i16 %339 to i32
  %341 = getelementptr inbounds i16, ptr %230, i64 %332
  %342 = load i16, ptr %341, align 2, !tbaa !16
  %343 = and i16 %342, 255
  %344 = zext nneg i16 %343 to i32
  %345 = shl nuw nsw i32 %344, 16
  %346 = or disjoint i32 %345, %340
  %347 = or disjoint i32 %346, -16777216
  %348 = getelementptr inbounds i32, ptr %244, i64 %323
  store i32 %347, ptr %324, align 4, !tbaa !42
  %349 = lshr i64 %243, %325
  %350 = and i64 %349, %326
  %351 = getelementptr inbounds i16, ptr %228, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !16
  %353 = and i16 %352, 255
  %354 = getelementptr inbounds i16, ptr %229, i64 %350
  %355 = load i16, ptr %354, align 2, !tbaa !16
  %356 = shl i16 %355, 8
  %357 = or disjoint i16 %356, %353
  %358 = zext i16 %357 to i32
  %359 = getelementptr inbounds i16, ptr %230, i64 %350
  %360 = load i16, ptr %359, align 2, !tbaa !16
  %361 = and i16 %360, 255
  %362 = zext nneg i16 %361 to i32
  %363 = shl nuw nsw i32 %362, 16
  %364 = or disjoint i32 %363, %358
  %365 = or disjoint i32 %364, -16777216
  %366 = getelementptr inbounds i32, ptr %244, i64 %327
  store i32 %365, ptr %348, align 4, !tbaa !42
  br label %367

367:                                              ; preds = %320, %242
  %368 = phi i64 [ 4, %242 ], [ %328, %320 ]
  %369 = phi i64 [ 268435455, %242 ], [ %326, %320 ]
  %370 = phi i64 [ 1, %242 ], [ %329, %320 ]
  %371 = phi ptr [ %244, %242 ], [ %366, %320 ]
  %372 = phi i64 [ 15, %242 ], [ %326, %320 ]
  %373 = phi i64 [ 2, %242 ], [ %330, %320 ]
  %374 = lshr i64 %243, %368
  %375 = and i64 %374, %369
  %376 = getelementptr inbounds i16, ptr %228, i64 %375
  %377 = load i16, ptr %376, align 2, !tbaa !16
  %378 = and i16 %377, 255
  %379 = getelementptr inbounds i16, ptr %229, i64 %375
  %380 = load i16, ptr %379, align 2, !tbaa !16
  %381 = shl i16 %380, 8
  %382 = or disjoint i16 %381, %378
  %383 = zext i16 %382 to i32
  %384 = getelementptr inbounds i16, ptr %230, i64 %375
  %385 = load i16, ptr %384, align 2, !tbaa !16
  %386 = and i16 %385, 255
  %387 = zext nneg i16 %386 to i32
  %388 = shl nuw nsw i32 %387, 16
  %389 = or disjoint i32 %388, %383
  %390 = or disjoint i32 %389, -16777216
  %391 = getelementptr inbounds i32, ptr %244, i64 %370
  store i32 %390, ptr %371, align 4, !tbaa !42
  %392 = and i64 %243, %372
  br label %393

393:                                              ; preds = %367, %242
  %394 = phi i64 [ %243, %242 ], [ %392, %367 ]
  %395 = phi i64 [ 1, %242 ], [ %373, %367 ]
  %396 = phi ptr [ %244, %242 ], [ %391, %367 ]
  %397 = getelementptr inbounds i16, ptr %228, i64 %394
  %398 = load i16, ptr %397, align 2, !tbaa !16
  %399 = and i16 %398, 255
  %400 = getelementptr inbounds i16, ptr %229, i64 %394
  %401 = load i16, ptr %400, align 2, !tbaa !16
  %402 = shl i16 %401, 8
  %403 = or disjoint i16 %402, %399
  %404 = zext i16 %403 to i32
  %405 = getelementptr inbounds i16, ptr %230, i64 %394
  %406 = load i16, ptr %405, align 2, !tbaa !16
  %407 = and i16 %406, 255
  %408 = zext nneg i16 %407 to i32
  %409 = shl nuw nsw i32 %408, 16
  %410 = or disjoint i32 %409, %404
  %411 = or disjoint i32 %410, -16777216
  %412 = getelementptr inbounds i32, ptr %244, i64 %395
  store i32 %411, ptr %396, align 4, !tbaa !42
  br label %413

413:                                              ; preds = %393, %242
  %414 = phi ptr [ %244, %242 ], [ %412, %393 ]
  %415 = add nuw nsw i64 %243, 1
  %416 = icmp eq i64 %415, 256
  br i1 %416, label %417, label %242, !llvm.loop !59

417:                                              ; preds = %413, %237
  br i1 %236, label %419, label %418

418:                                              ; preds = %171, %58, %55, %223, %417, %4, %1
  br label %419

419:                                              ; preds = %19, %170, %417, %418
  %420 = phi i32 [ 1, %418 ], [ 0, %417 ], [ 0, %170 ], [ 0, %19 ]
  ret i32 %420
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBAAcontig8bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %353, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp ugt i32 %4, 7
  %17 = zext i16 %13 to i64
  %18 = zext i16 %13 to i64
  %19 = zext i16 %13 to i64
  %20 = zext i16 %13 to i64
  %21 = zext i16 %13 to i64
  %22 = zext i16 %13 to i64
  %23 = zext i16 %13 to i64
  %24 = zext i16 %13 to i64
  %25 = sext i32 %7 to i64
  %26 = sext i32 %15 to i64
  br label %27

27:                                               ; preds = %11, %347
  %28 = phi i32 [ %5, %11 ], [ %31, %347 ]
  %29 = phi ptr [ %1, %11 ], [ %350, %347 ]
  %30 = phi ptr [ %8, %11 ], [ %351, %347 ]
  %31 = add i32 %28, -1
  br i1 %16, label %32, label %190

32:                                               ; preds = %27, %32
  %33 = phi i32 [ %188, %32 ], [ %4, %27 ]
  %34 = phi ptr [ %186, %32 ], [ %29, %27 ]
  %35 = phi ptr [ %187, %32 ], [ %30, %27 ]
  %36 = load i8, ptr %35, align 1, !tbaa !40
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !40
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = or disjoint i32 %41, %37
  %43 = getelementptr inbounds i8, ptr %35, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !40
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or disjoint i32 %42, %46
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !40
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 %50, 24
  %52 = or disjoint i32 %47, %51
  %53 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %52, ptr %34, align 4, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %35, i64 %17
  %55 = load i8, ptr %54, align 1, !tbaa !40
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %54, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !40
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or disjoint i32 %60, %56
  %62 = getelementptr inbounds i8, ptr %54, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !40
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = or disjoint i32 %61, %65
  %67 = getelementptr inbounds i8, ptr %54, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !40
  %69 = zext i8 %68 to i32
  %70 = shl nuw i32 %69, 24
  %71 = or disjoint i32 %66, %70
  %72 = getelementptr inbounds i32, ptr %34, i64 2
  store i32 %71, ptr %53, align 4, !tbaa !42
  %73 = getelementptr inbounds i8, ptr %54, i64 %17
  %74 = load i8, ptr %73, align 1, !tbaa !40
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds i8, ptr %73, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !40
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = or disjoint i32 %79, %75
  %81 = getelementptr inbounds i8, ptr %73, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !40
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 16
  %85 = or disjoint i32 %80, %84
  %86 = getelementptr inbounds i8, ptr %73, i64 3
  %87 = load i8, ptr %86, align 1, !tbaa !40
  %88 = zext i8 %87 to i32
  %89 = shl nuw i32 %88, 24
  %90 = or disjoint i32 %85, %89
  %91 = getelementptr inbounds i32, ptr %34, i64 3
  store i32 %90, ptr %72, align 4, !tbaa !42
  %92 = getelementptr inbounds i8, ptr %73, i64 %17
  %93 = load i8, ptr %92, align 1, !tbaa !40
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !40
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or disjoint i32 %98, %94
  %100 = getelementptr inbounds i8, ptr %92, i64 2
  %101 = load i8, ptr %100, align 1, !tbaa !40
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 16
  %104 = or disjoint i32 %99, %103
  %105 = getelementptr inbounds i8, ptr %92, i64 3
  %106 = load i8, ptr %105, align 1, !tbaa !40
  %107 = zext i8 %106 to i32
  %108 = shl nuw i32 %107, 24
  %109 = or disjoint i32 %104, %108
  %110 = getelementptr inbounds i32, ptr %34, i64 4
  store i32 %109, ptr %91, align 4, !tbaa !42
  %111 = getelementptr inbounds i8, ptr %92, i64 %17
  %112 = load i8, ptr %111, align 1, !tbaa !40
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !40
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = or disjoint i32 %117, %113
  %119 = getelementptr inbounds i8, ptr %111, i64 2
  %120 = load i8, ptr %119, align 1, !tbaa !40
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 16
  %123 = or disjoint i32 %118, %122
  %124 = getelementptr inbounds i8, ptr %111, i64 3
  %125 = load i8, ptr %124, align 1, !tbaa !40
  %126 = zext i8 %125 to i32
  %127 = shl nuw i32 %126, 24
  %128 = or disjoint i32 %123, %127
  %129 = getelementptr inbounds i32, ptr %34, i64 5
  store i32 %128, ptr %110, align 4, !tbaa !42
  %130 = getelementptr inbounds i8, ptr %111, i64 %17
  %131 = load i8, ptr %130, align 1, !tbaa !40
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds i8, ptr %130, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !40
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = or disjoint i32 %136, %132
  %138 = getelementptr inbounds i8, ptr %130, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !40
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 16
  %142 = or disjoint i32 %137, %141
  %143 = getelementptr inbounds i8, ptr %130, i64 3
  %144 = load i8, ptr %143, align 1, !tbaa !40
  %145 = zext i8 %144 to i32
  %146 = shl nuw i32 %145, 24
  %147 = or disjoint i32 %142, %146
  %148 = getelementptr inbounds i32, ptr %34, i64 6
  store i32 %147, ptr %129, align 4, !tbaa !42
  %149 = getelementptr inbounds i8, ptr %130, i64 %17
  %150 = load i8, ptr %149, align 1, !tbaa !40
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds i8, ptr %149, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !40
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or disjoint i32 %155, %151
  %157 = getelementptr inbounds i8, ptr %149, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !40
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 16
  %161 = or disjoint i32 %156, %160
  %162 = getelementptr inbounds i8, ptr %149, i64 3
  %163 = load i8, ptr %162, align 1, !tbaa !40
  %164 = zext i8 %163 to i32
  %165 = shl nuw i32 %164, 24
  %166 = or disjoint i32 %161, %165
  %167 = getelementptr inbounds i32, ptr %34, i64 7
  store i32 %166, ptr %148, align 4, !tbaa !42
  %168 = getelementptr inbounds i8, ptr %149, i64 %17
  %169 = load i8, ptr %168, align 1, !tbaa !40
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds i8, ptr %168, i64 1
  %172 = load i8, ptr %171, align 1, !tbaa !40
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 8
  %175 = or disjoint i32 %174, %170
  %176 = getelementptr inbounds i8, ptr %168, i64 2
  %177 = load i8, ptr %176, align 1, !tbaa !40
  %178 = zext i8 %177 to i32
  %179 = shl nuw nsw i32 %178, 16
  %180 = or disjoint i32 %175, %179
  %181 = getelementptr inbounds i8, ptr %168, i64 3
  %182 = load i8, ptr %181, align 1, !tbaa !40
  %183 = zext i8 %182 to i32
  %184 = shl nuw i32 %183, 24
  %185 = or disjoint i32 %180, %184
  %186 = getelementptr inbounds i32, ptr %34, i64 8
  store i32 %185, ptr %167, align 4, !tbaa !42
  %187 = getelementptr inbounds i8, ptr %168, i64 %17
  %188 = add i32 %33, -8
  %189 = icmp ugt i32 %188, 7
  br i1 %189, label %32, label %190, !llvm.loop !60

190:                                              ; preds = %32, %27
  %191 = phi ptr [ %30, %27 ], [ %187, %32 ]
  %192 = phi ptr [ %29, %27 ], [ %186, %32 ]
  %193 = phi i32 [ %4, %27 ], [ %188, %32 ]
  switch i32 %193, label %346 [
    i32 0, label %347
    i32 7, label %194
    i32 6, label %214
    i32 5, label %236
    i32 4, label %258
    i32 3, label %280
    i32 2, label %302
    i32 1, label %324
  ]

194:                                              ; preds = %190
  %195 = load i8, ptr %191, align 1, !tbaa !40
  %196 = zext i8 %195 to i32
  %197 = getelementptr inbounds i8, ptr %191, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !40
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 8
  %201 = or disjoint i32 %200, %196
  %202 = getelementptr inbounds i8, ptr %191, i64 2
  %203 = load i8, ptr %202, align 1, !tbaa !40
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 16
  %206 = or disjoint i32 %201, %205
  %207 = getelementptr inbounds i8, ptr %191, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !40
  %209 = zext i8 %208 to i32
  %210 = shl nuw i32 %209, 24
  %211 = or disjoint i32 %206, %210
  %212 = getelementptr inbounds i32, ptr %192, i64 1
  store i32 %211, ptr %192, align 4, !tbaa !42
  %213 = getelementptr inbounds i8, ptr %191, i64 %18
  br label %214

214:                                              ; preds = %190, %194
  %215 = phi ptr [ %213, %194 ], [ %191, %190 ]
  %216 = phi ptr [ %212, %194 ], [ %192, %190 ]
  %217 = load i8, ptr %215, align 1, !tbaa !40
  %218 = zext i8 %217 to i32
  %219 = getelementptr inbounds i8, ptr %215, i64 1
  %220 = load i8, ptr %219, align 1, !tbaa !40
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, 8
  %223 = or disjoint i32 %222, %218
  %224 = getelementptr inbounds i8, ptr %215, i64 2
  %225 = load i8, ptr %224, align 1, !tbaa !40
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 16
  %228 = or disjoint i32 %223, %227
  %229 = getelementptr inbounds i8, ptr %215, i64 3
  %230 = load i8, ptr %229, align 1, !tbaa !40
  %231 = zext i8 %230 to i32
  %232 = shl nuw i32 %231, 24
  %233 = or disjoint i32 %228, %232
  %234 = getelementptr inbounds i32, ptr %216, i64 1
  store i32 %233, ptr %216, align 4, !tbaa !42
  %235 = getelementptr inbounds i8, ptr %215, i64 %19
  br label %236

236:                                              ; preds = %190, %214
  %237 = phi ptr [ %235, %214 ], [ %191, %190 ]
  %238 = phi ptr [ %234, %214 ], [ %192, %190 ]
  %239 = load i8, ptr %237, align 1, !tbaa !40
  %240 = zext i8 %239 to i32
  %241 = getelementptr inbounds i8, ptr %237, i64 1
  %242 = load i8, ptr %241, align 1, !tbaa !40
  %243 = zext i8 %242 to i32
  %244 = shl nuw nsw i32 %243, 8
  %245 = or disjoint i32 %244, %240
  %246 = getelementptr inbounds i8, ptr %237, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !40
  %248 = zext i8 %247 to i32
  %249 = shl nuw nsw i32 %248, 16
  %250 = or disjoint i32 %245, %249
  %251 = getelementptr inbounds i8, ptr %237, i64 3
  %252 = load i8, ptr %251, align 1, !tbaa !40
  %253 = zext i8 %252 to i32
  %254 = shl nuw i32 %253, 24
  %255 = or disjoint i32 %250, %254
  %256 = getelementptr inbounds i32, ptr %238, i64 1
  store i32 %255, ptr %238, align 4, !tbaa !42
  %257 = getelementptr inbounds i8, ptr %237, i64 %20
  br label %258

258:                                              ; preds = %190, %236
  %259 = phi ptr [ %257, %236 ], [ %191, %190 ]
  %260 = phi ptr [ %256, %236 ], [ %192, %190 ]
  %261 = load i8, ptr %259, align 1, !tbaa !40
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds i8, ptr %259, i64 1
  %264 = load i8, ptr %263, align 1, !tbaa !40
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 8
  %267 = or disjoint i32 %266, %262
  %268 = getelementptr inbounds i8, ptr %259, i64 2
  %269 = load i8, ptr %268, align 1, !tbaa !40
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 16
  %272 = or disjoint i32 %267, %271
  %273 = getelementptr inbounds i8, ptr %259, i64 3
  %274 = load i8, ptr %273, align 1, !tbaa !40
  %275 = zext i8 %274 to i32
  %276 = shl nuw i32 %275, 24
  %277 = or disjoint i32 %272, %276
  %278 = getelementptr inbounds i32, ptr %260, i64 1
  store i32 %277, ptr %260, align 4, !tbaa !42
  %279 = getelementptr inbounds i8, ptr %259, i64 %21
  br label %280

280:                                              ; preds = %190, %258
  %281 = phi ptr [ %279, %258 ], [ %191, %190 ]
  %282 = phi ptr [ %278, %258 ], [ %192, %190 ]
  %283 = load i8, ptr %281, align 1, !tbaa !40
  %284 = zext i8 %283 to i32
  %285 = getelementptr inbounds i8, ptr %281, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !40
  %287 = zext i8 %286 to i32
  %288 = shl nuw nsw i32 %287, 8
  %289 = or disjoint i32 %288, %284
  %290 = getelementptr inbounds i8, ptr %281, i64 2
  %291 = load i8, ptr %290, align 1, !tbaa !40
  %292 = zext i8 %291 to i32
  %293 = shl nuw nsw i32 %292, 16
  %294 = or disjoint i32 %289, %293
  %295 = getelementptr inbounds i8, ptr %281, i64 3
  %296 = load i8, ptr %295, align 1, !tbaa !40
  %297 = zext i8 %296 to i32
  %298 = shl nuw i32 %297, 24
  %299 = or disjoint i32 %294, %298
  %300 = getelementptr inbounds i32, ptr %282, i64 1
  store i32 %299, ptr %282, align 4, !tbaa !42
  %301 = getelementptr inbounds i8, ptr %281, i64 %22
  br label %302

302:                                              ; preds = %190, %280
  %303 = phi ptr [ %301, %280 ], [ %191, %190 ]
  %304 = phi ptr [ %300, %280 ], [ %192, %190 ]
  %305 = load i8, ptr %303, align 1, !tbaa !40
  %306 = zext i8 %305 to i32
  %307 = getelementptr inbounds i8, ptr %303, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !40
  %309 = zext i8 %308 to i32
  %310 = shl nuw nsw i32 %309, 8
  %311 = or disjoint i32 %310, %306
  %312 = getelementptr inbounds i8, ptr %303, i64 2
  %313 = load i8, ptr %312, align 1, !tbaa !40
  %314 = zext i8 %313 to i32
  %315 = shl nuw nsw i32 %314, 16
  %316 = or disjoint i32 %311, %315
  %317 = getelementptr inbounds i8, ptr %303, i64 3
  %318 = load i8, ptr %317, align 1, !tbaa !40
  %319 = zext i8 %318 to i32
  %320 = shl nuw i32 %319, 24
  %321 = or disjoint i32 %316, %320
  %322 = getelementptr inbounds i32, ptr %304, i64 1
  store i32 %321, ptr %304, align 4, !tbaa !42
  %323 = getelementptr inbounds i8, ptr %303, i64 %23
  br label %324

324:                                              ; preds = %190, %302
  %325 = phi ptr [ %323, %302 ], [ %191, %190 ]
  %326 = phi ptr [ %322, %302 ], [ %192, %190 ]
  %327 = load i8, ptr %325, align 1, !tbaa !40
  %328 = zext i8 %327 to i32
  %329 = getelementptr inbounds i8, ptr %325, i64 1
  %330 = load i8, ptr %329, align 1, !tbaa !40
  %331 = zext i8 %330 to i32
  %332 = shl nuw nsw i32 %331, 8
  %333 = or disjoint i32 %332, %328
  %334 = getelementptr inbounds i8, ptr %325, i64 2
  %335 = load i8, ptr %334, align 1, !tbaa !40
  %336 = zext i8 %335 to i32
  %337 = shl nuw nsw i32 %336, 16
  %338 = or disjoint i32 %333, %337
  %339 = getelementptr inbounds i8, ptr %325, i64 3
  %340 = load i8, ptr %339, align 1, !tbaa !40
  %341 = zext i8 %340 to i32
  %342 = shl nuw i32 %341, 24
  %343 = or disjoint i32 %338, %342
  %344 = getelementptr inbounds i32, ptr %326, i64 1
  store i32 %343, ptr %326, align 4, !tbaa !42
  %345 = getelementptr inbounds i8, ptr %325, i64 %24
  br label %347

346:                                              ; preds = %190
  unreachable

347:                                              ; preds = %190, %324
  %348 = phi ptr [ %345, %324 ], [ %191, %190 ]
  %349 = phi ptr [ %344, %324 ], [ %192, %190 ]
  %350 = getelementptr inbounds i32, ptr %349, i64 %25
  %351 = getelementptr inbounds i8, ptr %348, i64 %26
  %352 = icmp eq i32 %31, 0
  br i1 %352, label %353, label %27, !llvm.loop !61

353:                                              ; preds = %347, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBUAcontig8bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp eq i32 %4, 0
  %17 = zext i16 %13 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %15 to i64
  br label %20

20:                                               ; preds = %11, %56
  %21 = phi i32 [ %5, %11 ], [ %24, %56 ]
  %22 = phi ptr [ %1, %11 ], [ %59, %56 ]
  %23 = phi ptr [ %8, %11 ], [ %60, %56 ]
  %24 = add i32 %21, -1
  br i1 %16, label %56, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %53, %25 ], [ %22, %20 ]
  %27 = phi i32 [ %29, %25 ], [ %4, %20 ]
  %28 = phi ptr [ %54, %25 ], [ %23, %20 ]
  %29 = add i32 %27, -1
  %30 = getelementptr inbounds i8, ptr %28, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !40
  %32 = zext i8 %31 to i32
  %33 = load i8, ptr %28, align 1, !tbaa !40
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, %32
  %36 = udiv i32 %35, 255
  %37 = getelementptr inbounds i8, ptr %28, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !40
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, %32
  %41 = udiv i32 %40, 255
  %42 = getelementptr inbounds i8, ptr %28, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, %32
  %46 = udiv i32 %45, 255
  %47 = shl nuw nsw i32 %41, 8
  %48 = shl nuw nsw i32 %46, 16
  %49 = shl nuw i32 %32, 24
  %50 = or disjoint i32 %36, %49
  %51 = or i32 %50, %47
  %52 = or i32 %51, %48
  %53 = getelementptr inbounds i32, ptr %26, i64 1
  store i32 %52, ptr %26, align 4, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %28, i64 %17
  %55 = icmp eq i32 %29, 0
  br i1 %55, label %56, label %25, !llvm.loop !62

56:                                               ; preds = %25, %20
  %57 = phi ptr [ %23, %20 ], [ %54, %25 ]
  %58 = phi ptr [ %22, %20 ], [ %53, %25 ]
  %59 = getelementptr inbounds i32, ptr %58, i64 %18
  %60 = getelementptr inbounds i8, ptr %57, i64 %19
  %61 = icmp eq i32 %24, 0
  br i1 %61, label %62, label %20, !llvm.loop !63

62:                                               ; preds = %56, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBcontig8bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %293, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp ugt i32 %4, 7
  %17 = zext i16 %13 to i64
  %18 = zext i16 %13 to i64
  %19 = zext i16 %13 to i64
  %20 = zext i16 %13 to i64
  %21 = zext i16 %13 to i64
  %22 = zext i16 %13 to i64
  %23 = zext i16 %13 to i64
  %24 = zext i16 %13 to i64
  %25 = sext i32 %7 to i64
  %26 = sext i32 %15 to i64
  br label %27

27:                                               ; preds = %11, %287
  %28 = phi i32 [ %5, %11 ], [ %31, %287 ]
  %29 = phi ptr [ %1, %11 ], [ %290, %287 ]
  %30 = phi ptr [ %8, %11 ], [ %291, %287 ]
  %31 = add i32 %28, -1
  br i1 %16, label %32, label %158

32:                                               ; preds = %27, %32
  %33 = phi i32 [ %156, %32 ], [ %4, %27 ]
  %34 = phi ptr [ %154, %32 ], [ %29, %27 ]
  %35 = phi ptr [ %155, %32 ], [ %30, %27 ]
  %36 = load i8, ptr %35, align 1, !tbaa !40
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !40
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = getelementptr inbounds i8, ptr %35, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = or disjoint i32 %41, %37
  %47 = or disjoint i32 %46, %45
  %48 = or disjoint i32 %47, -16777216
  %49 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %48, ptr %34, align 4, !tbaa !42
  %50 = getelementptr inbounds i8, ptr %35, i64 %17
  %51 = load i8, ptr %50, align 1, !tbaa !40
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !40
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = getelementptr inbounds i8, ptr %50, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !40
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or disjoint i32 %56, %52
  %62 = or disjoint i32 %61, %60
  %63 = or disjoint i32 %62, -16777216
  %64 = getelementptr inbounds i32, ptr %34, i64 2
  store i32 %63, ptr %49, align 4, !tbaa !42
  %65 = getelementptr inbounds i8, ptr %50, i64 %17
  %66 = load i8, ptr %65, align 1, !tbaa !40
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !40
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = getelementptr inbounds i8, ptr %65, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !40
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 16
  %76 = or disjoint i32 %71, %67
  %77 = or disjoint i32 %76, %75
  %78 = or disjoint i32 %77, -16777216
  %79 = getelementptr inbounds i32, ptr %34, i64 3
  store i32 %78, ptr %64, align 4, !tbaa !42
  %80 = getelementptr inbounds i8, ptr %65, i64 %17
  %81 = load i8, ptr %80, align 1, !tbaa !40
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds i8, ptr %80, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !40
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = getelementptr inbounds i8, ptr %80, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !40
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 16
  %91 = or disjoint i32 %86, %82
  %92 = or disjoint i32 %91, %90
  %93 = or disjoint i32 %92, -16777216
  %94 = getelementptr inbounds i32, ptr %34, i64 4
  store i32 %93, ptr %79, align 4, !tbaa !42
  %95 = getelementptr inbounds i8, ptr %80, i64 %17
  %96 = load i8, ptr %95, align 1, !tbaa !40
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !40
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = getelementptr inbounds i8, ptr %95, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !40
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %101, %97
  %107 = or disjoint i32 %106, %105
  %108 = or disjoint i32 %107, -16777216
  %109 = getelementptr inbounds i32, ptr %34, i64 5
  store i32 %108, ptr %94, align 4, !tbaa !42
  %110 = getelementptr inbounds i8, ptr %95, i64 %17
  %111 = load i8, ptr %110, align 1, !tbaa !40
  %112 = zext i8 %111 to i32
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !40
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 8
  %117 = getelementptr inbounds i8, ptr %110, i64 2
  %118 = load i8, ptr %117, align 1, !tbaa !40
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  %121 = or disjoint i32 %116, %112
  %122 = or disjoint i32 %121, %120
  %123 = or disjoint i32 %122, -16777216
  %124 = getelementptr inbounds i32, ptr %34, i64 6
  store i32 %123, ptr %109, align 4, !tbaa !42
  %125 = getelementptr inbounds i8, ptr %110, i64 %17
  %126 = load i8, ptr %125, align 1, !tbaa !40
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds i8, ptr %125, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !40
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 8
  %132 = getelementptr inbounds i8, ptr %125, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !40
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %131, %127
  %137 = or disjoint i32 %136, %135
  %138 = or disjoint i32 %137, -16777216
  %139 = getelementptr inbounds i32, ptr %34, i64 7
  store i32 %138, ptr %124, align 4, !tbaa !42
  %140 = getelementptr inbounds i8, ptr %125, i64 %17
  %141 = load i8, ptr %140, align 1, !tbaa !40
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !40
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = getelementptr inbounds i8, ptr %140, i64 2
  %148 = load i8, ptr %147, align 1, !tbaa !40
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 16
  %151 = or disjoint i32 %146, %142
  %152 = or disjoint i32 %151, %150
  %153 = or disjoint i32 %152, -16777216
  %154 = getelementptr inbounds i32, ptr %34, i64 8
  store i32 %153, ptr %139, align 4, !tbaa !42
  %155 = getelementptr inbounds i8, ptr %140, i64 %17
  %156 = add i32 %33, -8
  %157 = icmp ugt i32 %156, 7
  br i1 %157, label %32, label %158, !llvm.loop !64

158:                                              ; preds = %32, %27
  %159 = phi ptr [ %30, %27 ], [ %155, %32 ]
  %160 = phi ptr [ %29, %27 ], [ %154, %32 ]
  %161 = phi i32 [ %4, %27 ], [ %156, %32 ]
  switch i32 %161, label %286 [
    i32 0, label %287
    i32 7, label %162
    i32 6, label %178
    i32 5, label %196
    i32 4, label %214
    i32 3, label %232
    i32 2, label %250
    i32 1, label %268
  ]

162:                                              ; preds = %158
  %163 = load i8, ptr %159, align 1, !tbaa !40
  %164 = zext i8 %163 to i32
  %165 = getelementptr inbounds i8, ptr %159, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !40
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 8
  %169 = getelementptr inbounds i8, ptr %159, i64 2
  %170 = load i8, ptr %169, align 1, !tbaa !40
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 16
  %173 = or disjoint i32 %168, %164
  %174 = or disjoint i32 %173, %172
  %175 = or disjoint i32 %174, -16777216
  %176 = getelementptr inbounds i32, ptr %160, i64 1
  store i32 %175, ptr %160, align 4, !tbaa !42
  %177 = getelementptr inbounds i8, ptr %159, i64 %18
  br label %178

178:                                              ; preds = %158, %162
  %179 = phi ptr [ %177, %162 ], [ %159, %158 ]
  %180 = phi ptr [ %176, %162 ], [ %160, %158 ]
  %181 = load i8, ptr %179, align 1, !tbaa !40
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds i8, ptr %179, i64 1
  %184 = load i8, ptr %183, align 1, !tbaa !40
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = getelementptr inbounds i8, ptr %179, i64 2
  %188 = load i8, ptr %187, align 1, !tbaa !40
  %189 = zext i8 %188 to i32
  %190 = shl nuw nsw i32 %189, 16
  %191 = or disjoint i32 %186, %182
  %192 = or disjoint i32 %191, %190
  %193 = or disjoint i32 %192, -16777216
  %194 = getelementptr inbounds i32, ptr %180, i64 1
  store i32 %193, ptr %180, align 4, !tbaa !42
  %195 = getelementptr inbounds i8, ptr %179, i64 %19
  br label %196

196:                                              ; preds = %158, %178
  %197 = phi ptr [ %195, %178 ], [ %159, %158 ]
  %198 = phi ptr [ %194, %178 ], [ %160, %158 ]
  %199 = load i8, ptr %197, align 1, !tbaa !40
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds i8, ptr %197, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !40
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, 8
  %205 = getelementptr inbounds i8, ptr %197, i64 2
  %206 = load i8, ptr %205, align 1, !tbaa !40
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 16
  %209 = or disjoint i32 %204, %200
  %210 = or disjoint i32 %209, %208
  %211 = or disjoint i32 %210, -16777216
  %212 = getelementptr inbounds i32, ptr %198, i64 1
  store i32 %211, ptr %198, align 4, !tbaa !42
  %213 = getelementptr inbounds i8, ptr %197, i64 %20
  br label %214

214:                                              ; preds = %158, %196
  %215 = phi ptr [ %213, %196 ], [ %159, %158 ]
  %216 = phi ptr [ %212, %196 ], [ %160, %158 ]
  %217 = load i8, ptr %215, align 1, !tbaa !40
  %218 = zext i8 %217 to i32
  %219 = getelementptr inbounds i8, ptr %215, i64 1
  %220 = load i8, ptr %219, align 1, !tbaa !40
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, 8
  %223 = getelementptr inbounds i8, ptr %215, i64 2
  %224 = load i8, ptr %223, align 1, !tbaa !40
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 16
  %227 = or disjoint i32 %222, %218
  %228 = or disjoint i32 %227, %226
  %229 = or disjoint i32 %228, -16777216
  %230 = getelementptr inbounds i32, ptr %216, i64 1
  store i32 %229, ptr %216, align 4, !tbaa !42
  %231 = getelementptr inbounds i8, ptr %215, i64 %21
  br label %232

232:                                              ; preds = %158, %214
  %233 = phi ptr [ %231, %214 ], [ %159, %158 ]
  %234 = phi ptr [ %230, %214 ], [ %160, %158 ]
  %235 = load i8, ptr %233, align 1, !tbaa !40
  %236 = zext i8 %235 to i32
  %237 = getelementptr inbounds i8, ptr %233, i64 1
  %238 = load i8, ptr %237, align 1, !tbaa !40
  %239 = zext i8 %238 to i32
  %240 = shl nuw nsw i32 %239, 8
  %241 = getelementptr inbounds i8, ptr %233, i64 2
  %242 = load i8, ptr %241, align 1, !tbaa !40
  %243 = zext i8 %242 to i32
  %244 = shl nuw nsw i32 %243, 16
  %245 = or disjoint i32 %240, %236
  %246 = or disjoint i32 %245, %244
  %247 = or disjoint i32 %246, -16777216
  %248 = getelementptr inbounds i32, ptr %234, i64 1
  store i32 %247, ptr %234, align 4, !tbaa !42
  %249 = getelementptr inbounds i8, ptr %233, i64 %22
  br label %250

250:                                              ; preds = %158, %232
  %251 = phi ptr [ %249, %232 ], [ %159, %158 ]
  %252 = phi ptr [ %248, %232 ], [ %160, %158 ]
  %253 = load i8, ptr %251, align 1, !tbaa !40
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds i8, ptr %251, i64 1
  %256 = load i8, ptr %255, align 1, !tbaa !40
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 8
  %259 = getelementptr inbounds i8, ptr %251, i64 2
  %260 = load i8, ptr %259, align 1, !tbaa !40
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 16
  %263 = or disjoint i32 %258, %254
  %264 = or disjoint i32 %263, %262
  %265 = or disjoint i32 %264, -16777216
  %266 = getelementptr inbounds i32, ptr %252, i64 1
  store i32 %265, ptr %252, align 4, !tbaa !42
  %267 = getelementptr inbounds i8, ptr %251, i64 %23
  br label %268

268:                                              ; preds = %158, %250
  %269 = phi ptr [ %267, %250 ], [ %159, %158 ]
  %270 = phi ptr [ %266, %250 ], [ %160, %158 ]
  %271 = load i8, ptr %269, align 1, !tbaa !40
  %272 = zext i8 %271 to i32
  %273 = getelementptr inbounds i8, ptr %269, i64 1
  %274 = load i8, ptr %273, align 1, !tbaa !40
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = getelementptr inbounds i8, ptr %269, i64 2
  %278 = load i8, ptr %277, align 1, !tbaa !40
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = or disjoint i32 %276, %272
  %282 = or disjoint i32 %281, %280
  %283 = or disjoint i32 %282, -16777216
  %284 = getelementptr inbounds i32, ptr %270, i64 1
  store i32 %283, ptr %270, align 4, !tbaa !42
  %285 = getelementptr inbounds i8, ptr %269, i64 %24
  br label %287

286:                                              ; preds = %158
  unreachable

287:                                              ; preds = %158, %268
  %288 = phi ptr [ %285, %268 ], [ %159, %158 ]
  %289 = phi ptr [ %284, %268 ], [ %160, %158 ]
  %290 = getelementptr inbounds i32, ptr %289, i64 %25
  %291 = getelementptr inbounds i8, ptr %288, i64 %26
  %292 = icmp eq i32 %31, 0
  br i1 %292, label %293, label %27, !llvm.loop !65

293:                                              ; preds = %287, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBcontig8bitMaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %15 = load i16, ptr %14, align 2, !tbaa !35
  %16 = zext i16 %15 to i32
  %17 = mul nsw i32 %16, %6
  %18 = icmp eq i32 %4, 0
  %19 = zext i16 %15 to i64
  %20 = sext i32 %17 to i64
  %21 = sext i32 %7 to i64
  br label %22

22:                                               ; preds = %13, %57
  %23 = phi i32 [ %5, %13 ], [ %26, %57 ]
  %24 = phi ptr [ %1, %13 ], [ %61, %57 ]
  %25 = phi ptr [ %8, %13 ], [ %60, %57 ]
  %26 = add i32 %23, -1
  br i1 %18, label %57, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %54, %27 ], [ %24, %22 ]
  %29 = phi i32 [ %31, %27 ], [ %4, %22 ]
  %30 = phi ptr [ %55, %27 ], [ %25, %22 ]
  %31 = add i32 %29, -1
  %32 = load i8, ptr %30, align 1, !tbaa !40
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %11, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !40
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !40
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %11, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !40
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = getelementptr inbounds i8, ptr %30, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !40
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, ptr %11, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !40
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %43, %36
  %52 = or disjoint i32 %51, %50
  %53 = or disjoint i32 %52, -16777216
  %54 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %53, ptr %28, align 4, !tbaa !42
  %55 = getelementptr inbounds i8, ptr %30, i64 %19
  %56 = icmp eq i32 %31, 0
  br i1 %56, label %57, label %27, !llvm.loop !66

57:                                               ; preds = %27, %22
  %58 = phi ptr [ %25, %22 ], [ %55, %27 ]
  %59 = phi ptr [ %24, %22 ], [ %54, %27 ]
  %60 = getelementptr inbounds i8, ptr %58, i64 %20
  %61 = getelementptr inbounds i32, ptr %59, i64 %21
  %62 = icmp eq i32 %26, 0
  br i1 %62, label %63, label %22, !llvm.loop !67

63:                                               ; preds = %57, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBcontig16bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp eq i32 %4, 0
  %17 = zext i16 %13 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %15 to i64
  br label %20

20:                                               ; preds = %11, %47
  %21 = phi i32 [ %5, %11 ], [ %24, %47 ]
  %22 = phi ptr [ %8, %11 ], [ %51, %47 ]
  %23 = phi ptr [ %1, %11 ], [ %50, %47 ]
  %24 = add i32 %21, -1
  br i1 %16, label %47, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %45, %25 ], [ %22, %20 ]
  %27 = phi ptr [ %44, %25 ], [ %23, %20 ]
  %28 = phi i32 [ %29, %25 ], [ %4, %20 ]
  %29 = add i32 %28, -1
  %30 = load i16, ptr %26, align 2, !tbaa !16
  %31 = lshr i16 %30, 8
  %32 = getelementptr inbounds i16, ptr %26, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !16
  %34 = and i16 %33, -256
  %35 = or disjoint i16 %34, %31
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds i16, ptr %26, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !16
  %39 = lshr i16 %38, 8
  %40 = zext nneg i16 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %41, %36
  %43 = or disjoint i32 %42, -16777216
  %44 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %43, ptr %27, align 4, !tbaa !42
  %45 = getelementptr inbounds i16, ptr %26, i64 %17
  %46 = icmp eq i32 %29, 0
  br i1 %46, label %47, label %25, !llvm.loop !68

47:                                               ; preds = %25, %20
  %48 = phi ptr [ %23, %20 ], [ %44, %25 ]
  %49 = phi ptr [ %22, %20 ], [ %45, %25 ]
  %50 = getelementptr inbounds i32, ptr %48, i64 %18
  %51 = getelementptr inbounds i16, ptr %49, i64 %19
  %52 = icmp eq i32 %24, 0
  br i1 %52, label %53, label %20, !llvm.loop !69

53:                                               ; preds = %47, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBAAcontig16bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp eq i32 %4, 0
  %17 = zext i16 %13 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %15 to i64
  br label %20

20:                                               ; preds = %11, %52
  %21 = phi i32 [ %5, %11 ], [ %24, %52 ]
  %22 = phi ptr [ %8, %11 ], [ %56, %52 ]
  %23 = phi ptr [ %1, %11 ], [ %55, %52 ]
  %24 = add i32 %21, -1
  br i1 %16, label %52, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %50, %25 ], [ %22, %20 ]
  %27 = phi ptr [ %49, %25 ], [ %23, %20 ]
  %28 = phi i32 [ %29, %25 ], [ %4, %20 ]
  %29 = add i32 %28, -1
  %30 = load i16, ptr %26, align 2, !tbaa !16
  %31 = lshr i16 %30, 8
  %32 = getelementptr inbounds i16, ptr %26, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !16
  %34 = and i16 %33, -256
  %35 = or disjoint i16 %34, %31
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds i16, ptr %26, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !16
  %39 = lshr i16 %38, 8
  %40 = zext nneg i16 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %41, %36
  %43 = getelementptr inbounds i16, ptr %26, i64 3
  %44 = load i16, ptr %43, align 2, !tbaa !16
  %45 = lshr i16 %44, 8
  %46 = zext nneg i16 %45 to i32
  %47 = shl nuw i32 %46, 24
  %48 = or disjoint i32 %42, %47
  %49 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %48, ptr %27, align 4, !tbaa !42
  %50 = getelementptr inbounds i16, ptr %26, i64 %17
  %51 = icmp eq i32 %29, 0
  br i1 %51, label %52, label %25, !llvm.loop !70

52:                                               ; preds = %25, %20
  %53 = phi ptr [ %23, %20 ], [ %49, %25 ]
  %54 = phi ptr [ %22, %20 ], [ %50, %25 ]
  %55 = getelementptr inbounds i32, ptr %53, i64 %18
  %56 = getelementptr inbounds i16, ptr %54, i64 %19
  %57 = icmp eq i32 %24, 0
  br i1 %57, label %58, label %20, !llvm.loop !71

58:                                               ; preds = %52, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBUAcontig16bittile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp eq i32 %4, 0
  %17 = zext i16 %13 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %15 to i64
  br label %20

20:                                               ; preds = %11, %57
  %21 = phi i32 [ %5, %11 ], [ %24, %57 ]
  %22 = phi ptr [ %1, %11 ], [ %60, %57 ]
  %23 = phi ptr [ %8, %11 ], [ %61, %57 ]
  %24 = add i32 %21, -1
  br i1 %16, label %57, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %54, %25 ], [ %22, %20 ]
  %27 = phi i32 [ %29, %25 ], [ %4, %20 ]
  %28 = phi ptr [ %55, %25 ], [ %23, %20 ]
  %29 = add i32 %27, -1
  %30 = getelementptr inbounds i16, ptr %28, i64 3
  %31 = load i16, ptr %30, align 2, !tbaa !16
  %32 = lshr i16 %31, 4
  %33 = zext nneg i16 %32 to i32
  %34 = load i16, ptr %28, align 2, !tbaa !16
  %35 = zext i16 %34 to i32
  %36 = mul nuw nsw i32 %35, %33
  %37 = udiv i32 %36, 69375
  %38 = getelementptr inbounds i16, ptr %28, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !16
  %40 = zext i16 %39 to i32
  %41 = mul nuw nsw i32 %40, %33
  %42 = udiv i32 %41, 69375
  %43 = getelementptr inbounds i16, ptr %28, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !16
  %45 = zext i16 %44 to i32
  %46 = mul nuw nsw i32 %45, %33
  %47 = udiv i32 %46, 69375
  %48 = shl nuw nsw i32 %42, 8
  %49 = shl nuw nsw i32 %47, 16
  %50 = shl i32 %33, 24
  %51 = or disjoint i32 %37, %50
  %52 = or i32 %51, %48
  %53 = or i32 %52, %49
  %54 = getelementptr inbounds i32, ptr %26, i64 1
  store i32 %53, ptr %26, align 4, !tbaa !42
  %55 = getelementptr inbounds i16, ptr %28, i64 %17
  %56 = icmp eq i32 %29, 0
  br i1 %56, label %57, label %25, !llvm.loop !72

57:                                               ; preds = %25, %20
  %58 = phi ptr [ %23, %20 ], [ %55, %25 ]
  %59 = phi ptr [ %22, %20 ], [ %54, %25 ]
  %60 = getelementptr inbounds i32, ptr %59, i64 %18
  %61 = getelementptr inbounds i16, ptr %58, i64 %19
  %62 = icmp eq i32 %24, 0
  br i1 %62, label %63, label %20, !llvm.loop !73

63:                                               ; preds = %57, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBcontig8bitCMYKtile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef readonly %8) #6 {
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %488, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = zext i16 %13 to i32
  %15 = mul nsw i32 %14, %6
  %16 = icmp ugt i32 %4, 7
  %17 = zext i16 %13 to i64
  %18 = zext i16 %13 to i64
  %19 = zext i16 %13 to i64
  %20 = zext i16 %13 to i64
  %21 = zext i16 %13 to i64
  %22 = zext i16 %13 to i64
  %23 = zext i16 %13 to i64
  %24 = zext i16 %13 to i64
  %25 = sext i32 %7 to i64
  %26 = sext i32 %15 to i64
  br label %27

27:                                               ; preds = %11, %482
  %28 = phi i32 [ %5, %11 ], [ %31, %482 ]
  %29 = phi ptr [ %1, %11 ], [ %485, %482 ]
  %30 = phi ptr [ %8, %11 ], [ %486, %482 ]
  %31 = add i32 %28, -1
  br i1 %16, label %32, label %262

32:                                               ; preds = %27, %32
  %33 = phi i32 [ %260, %32 ], [ %4, %27 ]
  %34 = phi ptr [ %258, %32 ], [ %29, %27 ]
  %35 = phi ptr [ %259, %32 ], [ %30, %27 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !40
  %38 = xor i8 %37, -1
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr %35, align 1, !tbaa !40
  %41 = xor i8 %40, -1
  %42 = zext i8 %41 to i32
  %43 = mul nuw nsw i32 %42, %39
  %44 = udiv i32 %43, 255
  %45 = getelementptr inbounds i8, ptr %35, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !40
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = mul nuw nsw i32 %48, %39
  %50 = udiv i32 %49, 255
  %51 = getelementptr inbounds i8, ptr %35, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !40
  %53 = xor i8 %52, -1
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %54, %39
  %56 = udiv i32 %55, 255
  %57 = shl nuw nsw i32 %50, 8
  %58 = shl nuw nsw i32 %56, 16
  %59 = or i32 %44, %57
  %60 = or i32 %59, %58
  %61 = or i32 %60, -16777216
  %62 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %61, ptr %34, align 4, !tbaa !42
  %63 = getelementptr inbounds i8, ptr %35, i64 %17
  %64 = getelementptr inbounds i8, ptr %63, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !40
  %66 = xor i8 %65, -1
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %63, align 1, !tbaa !40
  %69 = xor i8 %68, -1
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %70, %67
  %72 = udiv i32 %71, 255
  %73 = getelementptr inbounds i8, ptr %63, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !40
  %75 = xor i8 %74, -1
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, %67
  %78 = udiv i32 %77, 255
  %79 = getelementptr inbounds i8, ptr %63, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !40
  %81 = xor i8 %80, -1
  %82 = zext i8 %81 to i32
  %83 = mul nuw nsw i32 %82, %67
  %84 = udiv i32 %83, 255
  %85 = shl nuw nsw i32 %78, 8
  %86 = shl nuw nsw i32 %84, 16
  %87 = or i32 %72, %85
  %88 = or i32 %87, %86
  %89 = or i32 %88, -16777216
  %90 = getelementptr inbounds i32, ptr %34, i64 2
  store i32 %89, ptr %62, align 4, !tbaa !42
  %91 = getelementptr inbounds i8, ptr %63, i64 %17
  %92 = getelementptr inbounds i8, ptr %91, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !40
  %94 = xor i8 %93, -1
  %95 = zext i8 %94 to i32
  %96 = load i8, ptr %91, align 1, !tbaa !40
  %97 = xor i8 %96, -1
  %98 = zext i8 %97 to i32
  %99 = mul nuw nsw i32 %98, %95
  %100 = udiv i32 %99, 255
  %101 = getelementptr inbounds i8, ptr %91, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !40
  %103 = xor i8 %102, -1
  %104 = zext i8 %103 to i32
  %105 = mul nuw nsw i32 %104, %95
  %106 = udiv i32 %105, 255
  %107 = getelementptr inbounds i8, ptr %91, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !40
  %109 = xor i8 %108, -1
  %110 = zext i8 %109 to i32
  %111 = mul nuw nsw i32 %110, %95
  %112 = udiv i32 %111, 255
  %113 = shl nuw nsw i32 %106, 8
  %114 = shl nuw nsw i32 %112, 16
  %115 = or i32 %100, %113
  %116 = or i32 %115, %114
  %117 = or i32 %116, -16777216
  %118 = getelementptr inbounds i32, ptr %34, i64 3
  store i32 %117, ptr %90, align 4, !tbaa !42
  %119 = getelementptr inbounds i8, ptr %91, i64 %17
  %120 = getelementptr inbounds i8, ptr %119, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !40
  %122 = xor i8 %121, -1
  %123 = zext i8 %122 to i32
  %124 = load i8, ptr %119, align 1, !tbaa !40
  %125 = xor i8 %124, -1
  %126 = zext i8 %125 to i32
  %127 = mul nuw nsw i32 %126, %123
  %128 = udiv i32 %127, 255
  %129 = getelementptr inbounds i8, ptr %119, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !40
  %131 = xor i8 %130, -1
  %132 = zext i8 %131 to i32
  %133 = mul nuw nsw i32 %132, %123
  %134 = udiv i32 %133, 255
  %135 = getelementptr inbounds i8, ptr %119, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !40
  %137 = xor i8 %136, -1
  %138 = zext i8 %137 to i32
  %139 = mul nuw nsw i32 %138, %123
  %140 = udiv i32 %139, 255
  %141 = shl nuw nsw i32 %134, 8
  %142 = shl nuw nsw i32 %140, 16
  %143 = or i32 %128, %141
  %144 = or i32 %143, %142
  %145 = or i32 %144, -16777216
  %146 = getelementptr inbounds i32, ptr %34, i64 4
  store i32 %145, ptr %118, align 4, !tbaa !42
  %147 = getelementptr inbounds i8, ptr %119, i64 %17
  %148 = getelementptr inbounds i8, ptr %147, i64 3
  %149 = load i8, ptr %148, align 1, !tbaa !40
  %150 = xor i8 %149, -1
  %151 = zext i8 %150 to i32
  %152 = load i8, ptr %147, align 1, !tbaa !40
  %153 = xor i8 %152, -1
  %154 = zext i8 %153 to i32
  %155 = mul nuw nsw i32 %154, %151
  %156 = udiv i32 %155, 255
  %157 = getelementptr inbounds i8, ptr %147, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !40
  %159 = xor i8 %158, -1
  %160 = zext i8 %159 to i32
  %161 = mul nuw nsw i32 %160, %151
  %162 = udiv i32 %161, 255
  %163 = getelementptr inbounds i8, ptr %147, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !40
  %165 = xor i8 %164, -1
  %166 = zext i8 %165 to i32
  %167 = mul nuw nsw i32 %166, %151
  %168 = udiv i32 %167, 255
  %169 = shl nuw nsw i32 %162, 8
  %170 = shl nuw nsw i32 %168, 16
  %171 = or i32 %156, %169
  %172 = or i32 %171, %170
  %173 = or i32 %172, -16777216
  %174 = getelementptr inbounds i32, ptr %34, i64 5
  store i32 %173, ptr %146, align 4, !tbaa !42
  %175 = getelementptr inbounds i8, ptr %147, i64 %17
  %176 = getelementptr inbounds i8, ptr %175, i64 3
  %177 = load i8, ptr %176, align 1, !tbaa !40
  %178 = xor i8 %177, -1
  %179 = zext i8 %178 to i32
  %180 = load i8, ptr %175, align 1, !tbaa !40
  %181 = xor i8 %180, -1
  %182 = zext i8 %181 to i32
  %183 = mul nuw nsw i32 %182, %179
  %184 = udiv i32 %183, 255
  %185 = getelementptr inbounds i8, ptr %175, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !40
  %187 = xor i8 %186, -1
  %188 = zext i8 %187 to i32
  %189 = mul nuw nsw i32 %188, %179
  %190 = udiv i32 %189, 255
  %191 = getelementptr inbounds i8, ptr %175, i64 2
  %192 = load i8, ptr %191, align 1, !tbaa !40
  %193 = xor i8 %192, -1
  %194 = zext i8 %193 to i32
  %195 = mul nuw nsw i32 %194, %179
  %196 = udiv i32 %195, 255
  %197 = shl nuw nsw i32 %190, 8
  %198 = shl nuw nsw i32 %196, 16
  %199 = or i32 %184, %197
  %200 = or i32 %199, %198
  %201 = or i32 %200, -16777216
  %202 = getelementptr inbounds i32, ptr %34, i64 6
  store i32 %201, ptr %174, align 4, !tbaa !42
  %203 = getelementptr inbounds i8, ptr %175, i64 %17
  %204 = getelementptr inbounds i8, ptr %203, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !40
  %206 = xor i8 %205, -1
  %207 = zext i8 %206 to i32
  %208 = load i8, ptr %203, align 1, !tbaa !40
  %209 = xor i8 %208, -1
  %210 = zext i8 %209 to i32
  %211 = mul nuw nsw i32 %210, %207
  %212 = udiv i32 %211, 255
  %213 = getelementptr inbounds i8, ptr %203, i64 1
  %214 = load i8, ptr %213, align 1, !tbaa !40
  %215 = xor i8 %214, -1
  %216 = zext i8 %215 to i32
  %217 = mul nuw nsw i32 %216, %207
  %218 = udiv i32 %217, 255
  %219 = getelementptr inbounds i8, ptr %203, i64 2
  %220 = load i8, ptr %219, align 1, !tbaa !40
  %221 = xor i8 %220, -1
  %222 = zext i8 %221 to i32
  %223 = mul nuw nsw i32 %222, %207
  %224 = udiv i32 %223, 255
  %225 = shl nuw nsw i32 %218, 8
  %226 = shl nuw nsw i32 %224, 16
  %227 = or i32 %212, %225
  %228 = or i32 %227, %226
  %229 = or i32 %228, -16777216
  %230 = getelementptr inbounds i32, ptr %34, i64 7
  store i32 %229, ptr %202, align 4, !tbaa !42
  %231 = getelementptr inbounds i8, ptr %203, i64 %17
  %232 = getelementptr inbounds i8, ptr %231, i64 3
  %233 = load i8, ptr %232, align 1, !tbaa !40
  %234 = xor i8 %233, -1
  %235 = zext i8 %234 to i32
  %236 = load i8, ptr %231, align 1, !tbaa !40
  %237 = xor i8 %236, -1
  %238 = zext i8 %237 to i32
  %239 = mul nuw nsw i32 %238, %235
  %240 = udiv i32 %239, 255
  %241 = getelementptr inbounds i8, ptr %231, i64 1
  %242 = load i8, ptr %241, align 1, !tbaa !40
  %243 = xor i8 %242, -1
  %244 = zext i8 %243 to i32
  %245 = mul nuw nsw i32 %244, %235
  %246 = udiv i32 %245, 255
  %247 = getelementptr inbounds i8, ptr %231, i64 2
  %248 = load i8, ptr %247, align 1, !tbaa !40
  %249 = xor i8 %248, -1
  %250 = zext i8 %249 to i32
  %251 = mul nuw nsw i32 %250, %235
  %252 = udiv i32 %251, 255
  %253 = shl nuw nsw i32 %246, 8
  %254 = shl nuw nsw i32 %252, 16
  %255 = or i32 %240, %253
  %256 = or i32 %255, %254
  %257 = or i32 %256, -16777216
  %258 = getelementptr inbounds i32, ptr %34, i64 8
  store i32 %257, ptr %230, align 4, !tbaa !42
  %259 = getelementptr inbounds i8, ptr %231, i64 %17
  %260 = add i32 %33, -8
  %261 = icmp ugt i32 %260, 7
  br i1 %261, label %32, label %262, !llvm.loop !74

262:                                              ; preds = %32, %27
  %263 = phi ptr [ %30, %27 ], [ %259, %32 ]
  %264 = phi ptr [ %29, %27 ], [ %258, %32 ]
  %265 = phi i32 [ %4, %27 ], [ %260, %32 ]
  switch i32 %265, label %481 [
    i32 0, label %482
    i32 7, label %266
    i32 6, label %295
    i32 5, label %326
    i32 4, label %357
    i32 3, label %388
    i32 2, label %419
    i32 1, label %450
  ]

266:                                              ; preds = %262
  %267 = getelementptr inbounds i8, ptr %263, i64 3
  %268 = load i8, ptr %267, align 1, !tbaa !40
  %269 = xor i8 %268, -1
  %270 = zext i8 %269 to i32
  %271 = load i8, ptr %263, align 1, !tbaa !40
  %272 = xor i8 %271, -1
  %273 = zext i8 %272 to i32
  %274 = mul nuw nsw i32 %273, %270
  %275 = udiv i32 %274, 255
  %276 = getelementptr inbounds i8, ptr %263, i64 1
  %277 = load i8, ptr %276, align 1, !tbaa !40
  %278 = xor i8 %277, -1
  %279 = zext i8 %278 to i32
  %280 = mul nuw nsw i32 %279, %270
  %281 = udiv i32 %280, 255
  %282 = getelementptr inbounds i8, ptr %263, i64 2
  %283 = load i8, ptr %282, align 1, !tbaa !40
  %284 = xor i8 %283, -1
  %285 = zext i8 %284 to i32
  %286 = mul nuw nsw i32 %285, %270
  %287 = udiv i32 %286, 255
  %288 = shl nuw nsw i32 %281, 8
  %289 = shl nuw nsw i32 %287, 16
  %290 = or i32 %275, %288
  %291 = or i32 %290, %289
  %292 = or i32 %291, -16777216
  %293 = getelementptr inbounds i32, ptr %264, i64 1
  store i32 %292, ptr %264, align 4, !tbaa !42
  %294 = getelementptr inbounds i8, ptr %263, i64 %18
  br label %295

295:                                              ; preds = %262, %266
  %296 = phi ptr [ %294, %266 ], [ %263, %262 ]
  %297 = phi ptr [ %293, %266 ], [ %264, %262 ]
  %298 = getelementptr inbounds i8, ptr %296, i64 3
  %299 = load i8, ptr %298, align 1, !tbaa !40
  %300 = xor i8 %299, -1
  %301 = zext i8 %300 to i32
  %302 = load i8, ptr %296, align 1, !tbaa !40
  %303 = xor i8 %302, -1
  %304 = zext i8 %303 to i32
  %305 = mul nuw nsw i32 %304, %301
  %306 = udiv i32 %305, 255
  %307 = getelementptr inbounds i8, ptr %296, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !40
  %309 = xor i8 %308, -1
  %310 = zext i8 %309 to i32
  %311 = mul nuw nsw i32 %310, %301
  %312 = udiv i32 %311, 255
  %313 = getelementptr inbounds i8, ptr %296, i64 2
  %314 = load i8, ptr %313, align 1, !tbaa !40
  %315 = xor i8 %314, -1
  %316 = zext i8 %315 to i32
  %317 = mul nuw nsw i32 %316, %301
  %318 = udiv i32 %317, 255
  %319 = shl nuw nsw i32 %312, 8
  %320 = shl nuw nsw i32 %318, 16
  %321 = or i32 %306, %319
  %322 = or i32 %321, %320
  %323 = or i32 %322, -16777216
  %324 = getelementptr inbounds i32, ptr %297, i64 1
  store i32 %323, ptr %297, align 4, !tbaa !42
  %325 = getelementptr inbounds i8, ptr %296, i64 %19
  br label %326

326:                                              ; preds = %262, %295
  %327 = phi ptr [ %325, %295 ], [ %263, %262 ]
  %328 = phi ptr [ %324, %295 ], [ %264, %262 ]
  %329 = getelementptr inbounds i8, ptr %327, i64 3
  %330 = load i8, ptr %329, align 1, !tbaa !40
  %331 = xor i8 %330, -1
  %332 = zext i8 %331 to i32
  %333 = load i8, ptr %327, align 1, !tbaa !40
  %334 = xor i8 %333, -1
  %335 = zext i8 %334 to i32
  %336 = mul nuw nsw i32 %335, %332
  %337 = udiv i32 %336, 255
  %338 = getelementptr inbounds i8, ptr %327, i64 1
  %339 = load i8, ptr %338, align 1, !tbaa !40
  %340 = xor i8 %339, -1
  %341 = zext i8 %340 to i32
  %342 = mul nuw nsw i32 %341, %332
  %343 = udiv i32 %342, 255
  %344 = getelementptr inbounds i8, ptr %327, i64 2
  %345 = load i8, ptr %344, align 1, !tbaa !40
  %346 = xor i8 %345, -1
  %347 = zext i8 %346 to i32
  %348 = mul nuw nsw i32 %347, %332
  %349 = udiv i32 %348, 255
  %350 = shl nuw nsw i32 %343, 8
  %351 = shl nuw nsw i32 %349, 16
  %352 = or i32 %337, %350
  %353 = or i32 %352, %351
  %354 = or i32 %353, -16777216
  %355 = getelementptr inbounds i32, ptr %328, i64 1
  store i32 %354, ptr %328, align 4, !tbaa !42
  %356 = getelementptr inbounds i8, ptr %327, i64 %20
  br label %357

357:                                              ; preds = %262, %326
  %358 = phi ptr [ %356, %326 ], [ %263, %262 ]
  %359 = phi ptr [ %355, %326 ], [ %264, %262 ]
  %360 = getelementptr inbounds i8, ptr %358, i64 3
  %361 = load i8, ptr %360, align 1, !tbaa !40
  %362 = xor i8 %361, -1
  %363 = zext i8 %362 to i32
  %364 = load i8, ptr %358, align 1, !tbaa !40
  %365 = xor i8 %364, -1
  %366 = zext i8 %365 to i32
  %367 = mul nuw nsw i32 %366, %363
  %368 = udiv i32 %367, 255
  %369 = getelementptr inbounds i8, ptr %358, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !40
  %371 = xor i8 %370, -1
  %372 = zext i8 %371 to i32
  %373 = mul nuw nsw i32 %372, %363
  %374 = udiv i32 %373, 255
  %375 = getelementptr inbounds i8, ptr %358, i64 2
  %376 = load i8, ptr %375, align 1, !tbaa !40
  %377 = xor i8 %376, -1
  %378 = zext i8 %377 to i32
  %379 = mul nuw nsw i32 %378, %363
  %380 = udiv i32 %379, 255
  %381 = shl nuw nsw i32 %374, 8
  %382 = shl nuw nsw i32 %380, 16
  %383 = or i32 %368, %381
  %384 = or i32 %383, %382
  %385 = or i32 %384, -16777216
  %386 = getelementptr inbounds i32, ptr %359, i64 1
  store i32 %385, ptr %359, align 4, !tbaa !42
  %387 = getelementptr inbounds i8, ptr %358, i64 %21
  br label %388

388:                                              ; preds = %262, %357
  %389 = phi ptr [ %387, %357 ], [ %263, %262 ]
  %390 = phi ptr [ %386, %357 ], [ %264, %262 ]
  %391 = getelementptr inbounds i8, ptr %389, i64 3
  %392 = load i8, ptr %391, align 1, !tbaa !40
  %393 = xor i8 %392, -1
  %394 = zext i8 %393 to i32
  %395 = load i8, ptr %389, align 1, !tbaa !40
  %396 = xor i8 %395, -1
  %397 = zext i8 %396 to i32
  %398 = mul nuw nsw i32 %397, %394
  %399 = udiv i32 %398, 255
  %400 = getelementptr inbounds i8, ptr %389, i64 1
  %401 = load i8, ptr %400, align 1, !tbaa !40
  %402 = xor i8 %401, -1
  %403 = zext i8 %402 to i32
  %404 = mul nuw nsw i32 %403, %394
  %405 = udiv i32 %404, 255
  %406 = getelementptr inbounds i8, ptr %389, i64 2
  %407 = load i8, ptr %406, align 1, !tbaa !40
  %408 = xor i8 %407, -1
  %409 = zext i8 %408 to i32
  %410 = mul nuw nsw i32 %409, %394
  %411 = udiv i32 %410, 255
  %412 = shl nuw nsw i32 %405, 8
  %413 = shl nuw nsw i32 %411, 16
  %414 = or i32 %399, %412
  %415 = or i32 %414, %413
  %416 = or i32 %415, -16777216
  %417 = getelementptr inbounds i32, ptr %390, i64 1
  store i32 %416, ptr %390, align 4, !tbaa !42
  %418 = getelementptr inbounds i8, ptr %389, i64 %22
  br label %419

419:                                              ; preds = %262, %388
  %420 = phi ptr [ %418, %388 ], [ %263, %262 ]
  %421 = phi ptr [ %417, %388 ], [ %264, %262 ]
  %422 = getelementptr inbounds i8, ptr %420, i64 3
  %423 = load i8, ptr %422, align 1, !tbaa !40
  %424 = xor i8 %423, -1
  %425 = zext i8 %424 to i32
  %426 = load i8, ptr %420, align 1, !tbaa !40
  %427 = xor i8 %426, -1
  %428 = zext i8 %427 to i32
  %429 = mul nuw nsw i32 %428, %425
  %430 = udiv i32 %429, 255
  %431 = getelementptr inbounds i8, ptr %420, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !40
  %433 = xor i8 %432, -1
  %434 = zext i8 %433 to i32
  %435 = mul nuw nsw i32 %434, %425
  %436 = udiv i32 %435, 255
  %437 = getelementptr inbounds i8, ptr %420, i64 2
  %438 = load i8, ptr %437, align 1, !tbaa !40
  %439 = xor i8 %438, -1
  %440 = zext i8 %439 to i32
  %441 = mul nuw nsw i32 %440, %425
  %442 = udiv i32 %441, 255
  %443 = shl nuw nsw i32 %436, 8
  %444 = shl nuw nsw i32 %442, 16
  %445 = or i32 %430, %443
  %446 = or i32 %445, %444
  %447 = or i32 %446, -16777216
  %448 = getelementptr inbounds i32, ptr %421, i64 1
  store i32 %447, ptr %421, align 4, !tbaa !42
  %449 = getelementptr inbounds i8, ptr %420, i64 %23
  br label %450

450:                                              ; preds = %262, %419
  %451 = phi ptr [ %449, %419 ], [ %263, %262 ]
  %452 = phi ptr [ %448, %419 ], [ %264, %262 ]
  %453 = getelementptr inbounds i8, ptr %451, i64 3
  %454 = load i8, ptr %453, align 1, !tbaa !40
  %455 = xor i8 %454, -1
  %456 = zext i8 %455 to i32
  %457 = load i8, ptr %451, align 1, !tbaa !40
  %458 = xor i8 %457, -1
  %459 = zext i8 %458 to i32
  %460 = mul nuw nsw i32 %459, %456
  %461 = udiv i32 %460, 255
  %462 = getelementptr inbounds i8, ptr %451, i64 1
  %463 = load i8, ptr %462, align 1, !tbaa !40
  %464 = xor i8 %463, -1
  %465 = zext i8 %464 to i32
  %466 = mul nuw nsw i32 %465, %456
  %467 = udiv i32 %466, 255
  %468 = getelementptr inbounds i8, ptr %451, i64 2
  %469 = load i8, ptr %468, align 1, !tbaa !40
  %470 = xor i8 %469, -1
  %471 = zext i8 %470 to i32
  %472 = mul nuw nsw i32 %471, %456
  %473 = udiv i32 %472, 255
  %474 = shl nuw nsw i32 %467, 8
  %475 = shl nuw nsw i32 %473, 16
  %476 = or i32 %461, %474
  %477 = or i32 %476, %475
  %478 = or i32 %477, -16777216
  %479 = getelementptr inbounds i32, ptr %452, i64 1
  store i32 %478, ptr %452, align 4, !tbaa !42
  %480 = getelementptr inbounds i8, ptr %451, i64 %24
  br label %482

481:                                              ; preds = %262
  unreachable

482:                                              ; preds = %262, %450
  %483 = phi ptr [ %480, %450 ], [ %263, %262 ]
  %484 = phi ptr [ %479, %450 ], [ %264, %262 ]
  %485 = getelementptr inbounds i32, ptr %484, i64 %25
  %486 = getelementptr inbounds i8, ptr %483, i64 %26
  %487 = icmp eq i32 %31, 0
  br i1 %487, label %488, label %27, !llvm.loop !75

488:                                              ; preds = %482, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBcontig8bitCMYKMaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %15 = load i16, ptr %14, align 2, !tbaa !35
  %16 = zext i16 %15 to i32
  %17 = mul nsw i32 %16, %6
  %18 = icmp eq i32 %4, 0
  %19 = zext i16 %15 to i64
  %20 = sext i32 %17 to i64
  %21 = sext i32 %7 to i64
  br label %22

22:                                               ; preds = %13, %73
  %23 = phi i32 [ %5, %13 ], [ %26, %73 ]
  %24 = phi ptr [ %1, %13 ], [ %77, %73 ]
  %25 = phi ptr [ %8, %13 ], [ %76, %73 ]
  %26 = add i32 %23, -1
  br i1 %18, label %73, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %70, %27 ], [ %24, %22 ]
  %29 = phi i32 [ %31, %27 ], [ %4, %22 ]
  %30 = phi ptr [ %71, %27 ], [ %25, %22 ]
  %31 = add i32 %29, -1
  %32 = getelementptr inbounds i8, ptr %30, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !40
  %34 = xor i8 %33, -1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %30, align 1, !tbaa !40
  %37 = xor i8 %36, -1
  %38 = zext i8 %37 to i32
  %39 = mul nuw nsw i32 %38, %35
  %40 = udiv i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %30, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = xor i8 %43, -1
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, %35
  %47 = udiv i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %30, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !40
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, %35
  %54 = udiv i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %11, i64 %41
  %57 = load i8, ptr %56, align 1, !tbaa !40
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %11, i64 %48
  %60 = load i8, ptr %59, align 1, !tbaa !40
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr inbounds i8, ptr %11, i64 %55
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or disjoint i32 %62, %58
  %68 = or disjoint i32 %67, %66
  %69 = or disjoint i32 %68, -16777216
  %70 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %69, ptr %28, align 4, !tbaa !42
  %71 = getelementptr inbounds i8, ptr %30, i64 %19
  %72 = icmp eq i32 %31, 0
  br i1 %72, label %73, label %27, !llvm.loop !76

73:                                               ; preds = %27, %22
  %74 = phi ptr [ %25, %22 ], [ %71, %27 ]
  %75 = phi ptr [ %24, %22 ], [ %70, %27 ]
  %76 = getelementptr inbounds i8, ptr %74, i64 %20
  %77 = getelementptr inbounds i32, ptr %75, i64 %21
  %78 = icmp eq i32 %26, 0
  br i1 %78, label %79, label %22, !llvm.loop !77

79:                                               ; preds = %73, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put8bitcmaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %163, label %13

13:                                               ; preds = %9
  %14 = icmp ugt i32 %4, 7
  %15 = sext i32 %7 to i64
  %16 = sext i32 %6 to i64
  br label %17

17:                                               ; preds = %13, %157
  %18 = phi i32 [ %5, %13 ], [ %21, %157 ]
  %19 = phi ptr [ %1, %13 ], [ %160, %157 ]
  %20 = phi ptr [ %8, %13 ], [ %161, %157 ]
  %21 = add i32 %18, -1
  br i1 %14, label %22, label %84

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %82, %22 ], [ %4, %17 ]
  %24 = phi ptr [ %81, %22 ], [ %19, %17 ]
  %25 = phi ptr [ %75, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %25, align 1, !tbaa !40
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %11, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load i32, ptr %30, align 4, !tbaa !42
  %32 = getelementptr inbounds i32, ptr %24, i64 1
  store i32 %31, ptr %24, align 4, !tbaa !42
  %33 = getelementptr inbounds i8, ptr %25, i64 2
  %34 = load i8, ptr %26, align 1, !tbaa !40
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %11, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = load i32, ptr %37, align 4, !tbaa !42
  %39 = getelementptr inbounds i32, ptr %24, i64 2
  store i32 %38, ptr %32, align 4, !tbaa !42
  %40 = getelementptr inbounds i8, ptr %25, i64 3
  %41 = load i8, ptr %33, align 1, !tbaa !40
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %11, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = load i32, ptr %44, align 4, !tbaa !42
  %46 = getelementptr inbounds i32, ptr %24, i64 3
  store i32 %45, ptr %39, align 4, !tbaa !42
  %47 = getelementptr inbounds i8, ptr %25, i64 4
  %48 = load i8, ptr %40, align 1, !tbaa !40
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %11, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = load i32, ptr %51, align 4, !tbaa !42
  %53 = getelementptr inbounds i32, ptr %24, i64 4
  store i32 %52, ptr %46, align 4, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %25, i64 5
  %55 = load i8, ptr %47, align 1, !tbaa !40
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %11, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = load i32, ptr %58, align 4, !tbaa !42
  %60 = getelementptr inbounds i32, ptr %24, i64 5
  store i32 %59, ptr %53, align 4, !tbaa !42
  %61 = getelementptr inbounds i8, ptr %25, i64 6
  %62 = load i8, ptr %54, align 1, !tbaa !40
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %11, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = load i32, ptr %65, align 4, !tbaa !42
  %67 = getelementptr inbounds i32, ptr %24, i64 6
  store i32 %66, ptr %60, align 4, !tbaa !42
  %68 = getelementptr inbounds i8, ptr %25, i64 7
  %69 = load i8, ptr %61, align 1, !tbaa !40
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %11, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = load i32, ptr %72, align 4, !tbaa !42
  %74 = getelementptr inbounds i32, ptr %24, i64 7
  store i32 %73, ptr %67, align 4, !tbaa !42
  %75 = getelementptr inbounds i8, ptr %25, i64 8
  %76 = load i8, ptr %68, align 1, !tbaa !40
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %11, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = load i32, ptr %79, align 4, !tbaa !42
  %81 = getelementptr inbounds i32, ptr %24, i64 8
  store i32 %80, ptr %74, align 4, !tbaa !42
  %82 = add i32 %23, -8
  %83 = icmp ugt i32 %82, 7
  br i1 %83, label %22, label %84, !llvm.loop !78

84:                                               ; preds = %22, %17
  %85 = phi ptr [ %20, %17 ], [ %75, %22 ]
  %86 = phi ptr [ %19, %17 ], [ %81, %22 ]
  %87 = phi i32 [ %4, %17 ], [ %82, %22 ]
  switch i32 %87, label %156 [
    i32 0, label %157
    i32 7, label %88
    i32 6, label %96
    i32 5, label %106
    i32 4, label %116
    i32 3, label %126
    i32 2, label %136
    i32 1, label %146
  ]

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %85, i64 1
  %90 = load i8, ptr %85, align 1, !tbaa !40
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %11, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = load i32, ptr %93, align 4, !tbaa !42
  %95 = getelementptr inbounds i32, ptr %86, i64 1
  store i32 %94, ptr %86, align 4, !tbaa !42
  br label %96

96:                                               ; preds = %84, %88
  %97 = phi ptr [ %89, %88 ], [ %85, %84 ]
  %98 = phi ptr [ %95, %88 ], [ %86, %84 ]
  %99 = getelementptr inbounds i8, ptr %97, i64 1
  %100 = load i8, ptr %97, align 1, !tbaa !40
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %11, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = load i32, ptr %103, align 4, !tbaa !42
  %105 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %104, ptr %98, align 4, !tbaa !42
  br label %106

106:                                              ; preds = %84, %96
  %107 = phi ptr [ %99, %96 ], [ %85, %84 ]
  %108 = phi ptr [ %105, %96 ], [ %86, %84 ]
  %109 = getelementptr inbounds i8, ptr %107, i64 1
  %110 = load i8, ptr %107, align 1, !tbaa !40
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %11, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = load i32, ptr %113, align 4, !tbaa !42
  %115 = getelementptr inbounds i32, ptr %108, i64 1
  store i32 %114, ptr %108, align 4, !tbaa !42
  br label %116

116:                                              ; preds = %84, %106
  %117 = phi ptr [ %109, %106 ], [ %85, %84 ]
  %118 = phi ptr [ %115, %106 ], [ %86, %84 ]
  %119 = getelementptr inbounds i8, ptr %117, i64 1
  %120 = load i8, ptr %117, align 1, !tbaa !40
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %11, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = load i32, ptr %123, align 4, !tbaa !42
  %125 = getelementptr inbounds i32, ptr %118, i64 1
  store i32 %124, ptr %118, align 4, !tbaa !42
  br label %126

126:                                              ; preds = %84, %116
  %127 = phi ptr [ %119, %116 ], [ %85, %84 ]
  %128 = phi ptr [ %125, %116 ], [ %86, %84 ]
  %129 = getelementptr inbounds i8, ptr %127, i64 1
  %130 = load i8, ptr %127, align 1, !tbaa !40
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %11, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !34
  %134 = load i32, ptr %133, align 4, !tbaa !42
  %135 = getelementptr inbounds i32, ptr %128, i64 1
  store i32 %134, ptr %128, align 4, !tbaa !42
  br label %136

136:                                              ; preds = %84, %126
  %137 = phi ptr [ %129, %126 ], [ %85, %84 ]
  %138 = phi ptr [ %135, %126 ], [ %86, %84 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 1
  %140 = load i8, ptr %137, align 1, !tbaa !40
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %11, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = load i32, ptr %143, align 4, !tbaa !42
  %145 = getelementptr inbounds i32, ptr %138, i64 1
  store i32 %144, ptr %138, align 4, !tbaa !42
  br label %146

146:                                              ; preds = %84, %136
  %147 = phi ptr [ %139, %136 ], [ %85, %84 ]
  %148 = phi ptr [ %145, %136 ], [ %86, %84 ]
  %149 = getelementptr inbounds i8, ptr %147, i64 1
  %150 = load i8, ptr %147, align 1, !tbaa !40
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %11, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !34
  %154 = load i32, ptr %153, align 4, !tbaa !42
  %155 = getelementptr inbounds i32, ptr %148, i64 1
  store i32 %154, ptr %148, align 4, !tbaa !42
  br label %157

156:                                              ; preds = %84
  unreachable

157:                                              ; preds = %84, %146
  %158 = phi ptr [ %149, %146 ], [ %85, %84 ]
  %159 = phi ptr [ %155, %146 ], [ %86, %84 ]
  %160 = getelementptr inbounds i32, ptr %159, i64 %15
  %161 = getelementptr inbounds i8, ptr %158, i64 %16
  %162 = icmp eq i32 %21, 0
  br i1 %162, label %163, label %17, !llvm.loop !79

163:                                              ; preds = %157, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put4bitcmaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 2
  %15 = icmp ugt i32 %4, 1
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %52
  %19 = phi i32 [ %5, %13 ], [ %22, %52 ]
  %20 = phi ptr [ %1, %13 ], [ %55, %52 ]
  %21 = phi ptr [ %8, %13 ], [ %56, %52 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %39

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %37, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %36, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = load i32, ptr %32, align 4, !tbaa !42
  %36 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %35, ptr %34, align 4, !tbaa !42
  %37 = add i32 %24, -2
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %23, label %39, !llvm.loop !80

39:                                               ; preds = %23, %18
  %40 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %41 = phi ptr [ %20, %18 ], [ %36, %23 ]
  %42 = phi i32 [ %4, %18 ], [ %37, %23 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %40, i64 1
  %46 = load i8, ptr %40, align 1, !tbaa !40
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %11, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %50, ptr %41, align 4, !tbaa !42
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi ptr [ %45, %44 ], [ %40, %39 ]
  %54 = phi ptr [ %51, %44 ], [ %41, %39 ]
  %55 = getelementptr inbounds i32, ptr %54, i64 %16
  %56 = getelementptr inbounds i8, ptr %53, i64 %17
  %57 = icmp eq i32 %22, 0
  br i1 %57, label %58, label %18, !llvm.loop !81

58:                                               ; preds = %52, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put2bitcmaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 4
  %15 = icmp ugt i32 %4, 3
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %72
  %19 = phi i32 [ %5, %13 ], [ %22, %72 ]
  %20 = phi ptr [ %1, %13 ], [ %75, %72 ]
  %21 = phi ptr [ %8, %13 ], [ %76, %72 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %45

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %43, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %42, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = getelementptr inbounds i32, ptr %31, i64 2
  %36 = load i32, ptr %32, align 4, !tbaa !42
  %37 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %36, ptr %34, align 4, !tbaa !42
  %38 = getelementptr inbounds i32, ptr %31, i64 3
  %39 = load i32, ptr %35, align 4, !tbaa !42
  %40 = getelementptr inbounds i32, ptr %25, i64 3
  store i32 %39, ptr %37, align 4, !tbaa !42
  %41 = load i32, ptr %38, align 4, !tbaa !42
  %42 = getelementptr inbounds i32, ptr %25, i64 4
  store i32 %41, ptr %40, align 4, !tbaa !42
  %43 = add i32 %24, -4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %23, label %45, !llvm.loop !82

45:                                               ; preds = %23, %18
  %46 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %47 = phi ptr [ %20, %18 ], [ %42, %23 ]
  %48 = phi i32 [ %4, %18 ], [ %43, %23 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  %52 = load i8, ptr %46, align 1, !tbaa !40
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %11, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  switch i32 %48, label %71 [
    i32 3, label %56
    i32 2, label %60
    i32 1, label %66
  ]

56:                                               ; preds = %50
  %57 = getelementptr inbounds i32, ptr %55, i64 1
  %58 = load i32, ptr %55, align 4, !tbaa !42
  %59 = getelementptr inbounds i32, ptr %47, i64 1
  store i32 %58, ptr %47, align 4, !tbaa !42
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi ptr [ %47, %50 ], [ %59, %56 ]
  %62 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  %64 = load i32, ptr %62, align 4, !tbaa !42
  %65 = getelementptr inbounds i32, ptr %61, i64 1
  store i32 %64, ptr %61, align 4, !tbaa !42
  br label %66

66:                                               ; preds = %50, %60
  %67 = phi ptr [ %47, %50 ], [ %65, %60 ]
  %68 = phi ptr [ %55, %50 ], [ %63, %60 ]
  %69 = load i32, ptr %68, align 4, !tbaa !42
  %70 = getelementptr inbounds i32, ptr %67, i64 1
  store i32 %69, ptr %67, align 4, !tbaa !42
  br label %72

71:                                               ; preds = %50
  unreachable

72:                                               ; preds = %66, %45
  %73 = phi ptr [ %51, %66 ], [ %46, %45 ]
  %74 = phi ptr [ %70, %66 ], [ %47, %45 ]
  %75 = getelementptr inbounds i32, ptr %74, i64 %16
  %76 = getelementptr inbounds i8, ptr %73, i64 %17
  %77 = icmp eq i32 %22, 0
  br i1 %77, label %78, label %18, !llvm.loop !83

78:                                               ; preds = %72, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put1bitcmaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %114, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 8
  %15 = icmp ugt i32 %4, 7
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %108
  %19 = phi i32 [ %5, %13 ], [ %22, %108 ]
  %20 = phi ptr [ %1, %13 ], [ %111, %108 ]
  %21 = phi ptr [ %8, %13 ], [ %112, %108 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %57

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %55, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %54, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = getelementptr inbounds i32, ptr %31, i64 2
  %36 = load i32, ptr %32, align 4, !tbaa !42
  %37 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %36, ptr %34, align 4, !tbaa !42
  %38 = getelementptr inbounds i32, ptr %31, i64 3
  %39 = load i32, ptr %35, align 4, !tbaa !42
  %40 = getelementptr inbounds i32, ptr %25, i64 3
  store i32 %39, ptr %37, align 4, !tbaa !42
  %41 = getelementptr inbounds i32, ptr %31, i64 4
  %42 = load i32, ptr %38, align 4, !tbaa !42
  %43 = getelementptr inbounds i32, ptr %25, i64 4
  store i32 %42, ptr %40, align 4, !tbaa !42
  %44 = getelementptr inbounds i32, ptr %31, i64 5
  %45 = load i32, ptr %41, align 4, !tbaa !42
  %46 = getelementptr inbounds i32, ptr %25, i64 5
  store i32 %45, ptr %43, align 4, !tbaa !42
  %47 = getelementptr inbounds i32, ptr %31, i64 6
  %48 = load i32, ptr %44, align 4, !tbaa !42
  %49 = getelementptr inbounds i32, ptr %25, i64 6
  store i32 %48, ptr %46, align 4, !tbaa !42
  %50 = getelementptr inbounds i32, ptr %31, i64 7
  %51 = load i32, ptr %47, align 4, !tbaa !42
  %52 = getelementptr inbounds i32, ptr %25, i64 7
  store i32 %51, ptr %49, align 4, !tbaa !42
  %53 = load i32, ptr %50, align 4, !tbaa !42
  %54 = getelementptr inbounds i32, ptr %25, i64 8
  store i32 %53, ptr %52, align 4, !tbaa !42
  %55 = add i32 %24, -8
  %56 = icmp ugt i32 %55, 7
  br i1 %56, label %23, label %57, !llvm.loop !84

57:                                               ; preds = %23, %18
  %58 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %59 = phi ptr [ %20, %18 ], [ %54, %23 ]
  %60 = phi i32 [ %4, %18 ], [ %55, %23 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %58, i64 1
  %64 = load i8, ptr %58, align 1, !tbaa !40
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %11, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  switch i32 %60, label %107 [
    i32 7, label %68
    i32 6, label %72
    i32 5, label %78
    i32 4, label %84
    i32 3, label %90
    i32 2, label %96
    i32 1, label %102
  ]

68:                                               ; preds = %62
  %69 = getelementptr inbounds i32, ptr %67, i64 1
  %70 = load i32, ptr %67, align 4, !tbaa !42
  %71 = getelementptr inbounds i32, ptr %59, i64 1
  store i32 %70, ptr %59, align 4, !tbaa !42
  br label %72

72:                                               ; preds = %62, %68
  %73 = phi ptr [ %59, %62 ], [ %71, %68 ]
  %74 = phi ptr [ %67, %62 ], [ %69, %68 ]
  %75 = getelementptr inbounds i32, ptr %74, i64 1
  %76 = load i32, ptr %74, align 4, !tbaa !42
  %77 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 %76, ptr %73, align 4, !tbaa !42
  br label %78

78:                                               ; preds = %62, %72
  %79 = phi ptr [ %59, %62 ], [ %77, %72 ]
  %80 = phi ptr [ %67, %62 ], [ %75, %72 ]
  %81 = getelementptr inbounds i32, ptr %80, i64 1
  %82 = load i32, ptr %80, align 4, !tbaa !42
  %83 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %82, ptr %79, align 4, !tbaa !42
  br label %84

84:                                               ; preds = %62, %78
  %85 = phi ptr [ %59, %62 ], [ %83, %78 ]
  %86 = phi ptr [ %67, %62 ], [ %81, %78 ]
  %87 = getelementptr inbounds i32, ptr %86, i64 1
  %88 = load i32, ptr %86, align 4, !tbaa !42
  %89 = getelementptr inbounds i32, ptr %85, i64 1
  store i32 %88, ptr %85, align 4, !tbaa !42
  br label %90

90:                                               ; preds = %62, %84
  %91 = phi ptr [ %59, %62 ], [ %89, %84 ]
  %92 = phi ptr [ %67, %62 ], [ %87, %84 ]
  %93 = getelementptr inbounds i32, ptr %92, i64 1
  %94 = load i32, ptr %92, align 4, !tbaa !42
  %95 = getelementptr inbounds i32, ptr %91, i64 1
  store i32 %94, ptr %91, align 4, !tbaa !42
  br label %96

96:                                               ; preds = %62, %90
  %97 = phi ptr [ %59, %62 ], [ %95, %90 ]
  %98 = phi ptr [ %67, %62 ], [ %93, %90 ]
  %99 = getelementptr inbounds i32, ptr %98, i64 1
  %100 = load i32, ptr %98, align 4, !tbaa !42
  %101 = getelementptr inbounds i32, ptr %97, i64 1
  store i32 %100, ptr %97, align 4, !tbaa !42
  br label %102

102:                                              ; preds = %62, %96
  %103 = phi ptr [ %59, %62 ], [ %101, %96 ]
  %104 = phi ptr [ %67, %62 ], [ %99, %96 ]
  %105 = load i32, ptr %104, align 4, !tbaa !42
  %106 = getelementptr inbounds i32, ptr %103, i64 1
  store i32 %105, ptr %103, align 4, !tbaa !42
  br label %108

107:                                              ; preds = %62
  unreachable

108:                                              ; preds = %102, %57
  %109 = phi ptr [ %63, %102 ], [ %58, %57 ]
  %110 = phi ptr [ %106, %102 ], [ %59, %57 ]
  %111 = getelementptr inbounds i32, ptr %110, i64 %16
  %112 = getelementptr inbounds i8, ptr %109, i64 %17
  %113 = icmp eq i32 %22, 0
  br i1 %113, label %114, label %18, !llvm.loop !85

114:                                              ; preds = %108, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putgreytile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %4, 0
  %15 = sext i32 %7 to i64
  %16 = sext i32 %6 to i64
  br label %17

17:                                               ; preds = %13, %35
  %18 = phi i32 [ %5, %13 ], [ %21, %35 ]
  %19 = phi ptr [ %1, %13 ], [ %38, %35 ]
  %20 = phi ptr [ %8, %13 ], [ %39, %35 ]
  %21 = add i32 %18, -1
  br i1 %14, label %35, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %33, %22 ], [ %19, %17 ]
  %24 = phi ptr [ %27, %22 ], [ %20, %17 ]
  %25 = phi i32 [ %26, %22 ], [ %4, %17 ]
  %26 = add i32 %25, -1
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  %28 = load i8, ptr %24, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = load i32, ptr %31, align 4, !tbaa !42
  %33 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %32, ptr %23, align 4, !tbaa !42
  %34 = icmp eq i32 %26, 0
  br i1 %34, label %35, label %22, !llvm.loop !86

35:                                               ; preds = %22, %17
  %36 = phi ptr [ %20, %17 ], [ %27, %22 ]
  %37 = phi ptr [ %19, %17 ], [ %33, %22 ]
  %38 = getelementptr inbounds i32, ptr %37, i64 %15
  %39 = getelementptr inbounds i8, ptr %36, i64 %16
  %40 = icmp eq i32 %21, 0
  br i1 %40, label %41, label %17, !llvm.loop !87

41:                                               ; preds = %35, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put4bitbwtile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 2
  %15 = icmp ugt i32 %4, 1
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %52
  %19 = phi i32 [ %5, %13 ], [ %22, %52 ]
  %20 = phi ptr [ %1, %13 ], [ %55, %52 ]
  %21 = phi ptr [ %8, %13 ], [ %56, %52 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %39

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %37, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %36, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = load i32, ptr %32, align 4, !tbaa !42
  %36 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %35, ptr %34, align 4, !tbaa !42
  %37 = add i32 %24, -2
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %23, label %39, !llvm.loop !88

39:                                               ; preds = %23, %18
  %40 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %41 = phi ptr [ %20, %18 ], [ %36, %23 ]
  %42 = phi i32 [ %4, %18 ], [ %37, %23 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %40, i64 1
  %46 = load i8, ptr %40, align 1, !tbaa !40
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %11, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %50, ptr %41, align 4, !tbaa !42
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi ptr [ %45, %44 ], [ %40, %39 ]
  %54 = phi ptr [ %51, %44 ], [ %41, %39 ]
  %55 = getelementptr inbounds i32, ptr %54, i64 %16
  %56 = getelementptr inbounds i8, ptr %53, i64 %17
  %57 = icmp eq i32 %22, 0
  br i1 %57, label %58, label %18, !llvm.loop !89

58:                                               ; preds = %52, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put2bitbwtile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 4
  %15 = icmp ugt i32 %4, 3
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %72
  %19 = phi i32 [ %5, %13 ], [ %22, %72 ]
  %20 = phi ptr [ %1, %13 ], [ %75, %72 ]
  %21 = phi ptr [ %8, %13 ], [ %76, %72 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %45

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %43, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %42, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = getelementptr inbounds i32, ptr %31, i64 2
  %36 = load i32, ptr %32, align 4, !tbaa !42
  %37 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %36, ptr %34, align 4, !tbaa !42
  %38 = getelementptr inbounds i32, ptr %31, i64 3
  %39 = load i32, ptr %35, align 4, !tbaa !42
  %40 = getelementptr inbounds i32, ptr %25, i64 3
  store i32 %39, ptr %37, align 4, !tbaa !42
  %41 = load i32, ptr %38, align 4, !tbaa !42
  %42 = getelementptr inbounds i32, ptr %25, i64 4
  store i32 %41, ptr %40, align 4, !tbaa !42
  %43 = add i32 %24, -4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %23, label %45, !llvm.loop !90

45:                                               ; preds = %23, %18
  %46 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %47 = phi ptr [ %20, %18 ], [ %42, %23 ]
  %48 = phi i32 [ %4, %18 ], [ %43, %23 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  %52 = load i8, ptr %46, align 1, !tbaa !40
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %11, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  switch i32 %48, label %71 [
    i32 3, label %56
    i32 2, label %60
    i32 1, label %66
  ]

56:                                               ; preds = %50
  %57 = getelementptr inbounds i32, ptr %55, i64 1
  %58 = load i32, ptr %55, align 4, !tbaa !42
  %59 = getelementptr inbounds i32, ptr %47, i64 1
  store i32 %58, ptr %47, align 4, !tbaa !42
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi ptr [ %47, %50 ], [ %59, %56 ]
  %62 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  %64 = load i32, ptr %62, align 4, !tbaa !42
  %65 = getelementptr inbounds i32, ptr %61, i64 1
  store i32 %64, ptr %61, align 4, !tbaa !42
  br label %66

66:                                               ; preds = %50, %60
  %67 = phi ptr [ %47, %50 ], [ %65, %60 ]
  %68 = phi ptr [ %55, %50 ], [ %63, %60 ]
  %69 = load i32, ptr %68, align 4, !tbaa !42
  %70 = getelementptr inbounds i32, ptr %67, i64 1
  store i32 %69, ptr %67, align 4, !tbaa !42
  br label %72

71:                                               ; preds = %50
  unreachable

72:                                               ; preds = %66, %45
  %73 = phi ptr [ %51, %66 ], [ %46, %45 ]
  %74 = phi ptr [ %70, %66 ], [ %47, %45 ]
  %75 = getelementptr inbounds i32, ptr %74, i64 %16
  %76 = getelementptr inbounds i8, ptr %73, i64 %17
  %77 = icmp eq i32 %22, 0
  br i1 %77, label %78, label %18, !llvm.loop !91

78:                                               ; preds = %72, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @put1bitbwtile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %114, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %6, 8
  %15 = icmp ugt i32 %4, 7
  %16 = sext i32 %7 to i64
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %13, %108
  %19 = phi i32 [ %5, %13 ], [ %22, %108 ]
  %20 = phi ptr [ %1, %13 ], [ %111, %108 ]
  %21 = phi ptr [ %8, %13 ], [ %112, %108 ]
  %22 = add i32 %19, -1
  br i1 %15, label %23, label %57

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %55, %23 ], [ %4, %18 ]
  %25 = phi ptr [ %54, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !40
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %11, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %31, align 4, !tbaa !42
  %34 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %33, ptr %25, align 4, !tbaa !42
  %35 = getelementptr inbounds i32, ptr %31, i64 2
  %36 = load i32, ptr %32, align 4, !tbaa !42
  %37 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %36, ptr %34, align 4, !tbaa !42
  %38 = getelementptr inbounds i32, ptr %31, i64 3
  %39 = load i32, ptr %35, align 4, !tbaa !42
  %40 = getelementptr inbounds i32, ptr %25, i64 3
  store i32 %39, ptr %37, align 4, !tbaa !42
  %41 = getelementptr inbounds i32, ptr %31, i64 4
  %42 = load i32, ptr %38, align 4, !tbaa !42
  %43 = getelementptr inbounds i32, ptr %25, i64 4
  store i32 %42, ptr %40, align 4, !tbaa !42
  %44 = getelementptr inbounds i32, ptr %31, i64 5
  %45 = load i32, ptr %41, align 4, !tbaa !42
  %46 = getelementptr inbounds i32, ptr %25, i64 5
  store i32 %45, ptr %43, align 4, !tbaa !42
  %47 = getelementptr inbounds i32, ptr %31, i64 6
  %48 = load i32, ptr %44, align 4, !tbaa !42
  %49 = getelementptr inbounds i32, ptr %25, i64 6
  store i32 %48, ptr %46, align 4, !tbaa !42
  %50 = getelementptr inbounds i32, ptr %31, i64 7
  %51 = load i32, ptr %47, align 4, !tbaa !42
  %52 = getelementptr inbounds i32, ptr %25, i64 7
  store i32 %51, ptr %49, align 4, !tbaa !42
  %53 = load i32, ptr %50, align 4, !tbaa !42
  %54 = getelementptr inbounds i32, ptr %25, i64 8
  store i32 %53, ptr %52, align 4, !tbaa !42
  %55 = add i32 %24, -8
  %56 = icmp ugt i32 %55, 7
  br i1 %56, label %23, label %57, !llvm.loop !92

57:                                               ; preds = %23, %18
  %58 = phi ptr [ %21, %18 ], [ %27, %23 ]
  %59 = phi ptr [ %20, %18 ], [ %54, %23 ]
  %60 = phi i32 [ %4, %18 ], [ %55, %23 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %58, i64 1
  %64 = load i8, ptr %58, align 1, !tbaa !40
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %11, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  switch i32 %60, label %107 [
    i32 7, label %68
    i32 6, label %72
    i32 5, label %78
    i32 4, label %84
    i32 3, label %90
    i32 2, label %96
    i32 1, label %102
  ]

68:                                               ; preds = %62
  %69 = getelementptr inbounds i32, ptr %67, i64 1
  %70 = load i32, ptr %67, align 4, !tbaa !42
  %71 = getelementptr inbounds i32, ptr %59, i64 1
  store i32 %70, ptr %59, align 4, !tbaa !42
  br label %72

72:                                               ; preds = %62, %68
  %73 = phi ptr [ %59, %62 ], [ %71, %68 ]
  %74 = phi ptr [ %67, %62 ], [ %69, %68 ]
  %75 = getelementptr inbounds i32, ptr %74, i64 1
  %76 = load i32, ptr %74, align 4, !tbaa !42
  %77 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 %76, ptr %73, align 4, !tbaa !42
  br label %78

78:                                               ; preds = %62, %72
  %79 = phi ptr [ %59, %62 ], [ %77, %72 ]
  %80 = phi ptr [ %67, %62 ], [ %75, %72 ]
  %81 = getelementptr inbounds i32, ptr %80, i64 1
  %82 = load i32, ptr %80, align 4, !tbaa !42
  %83 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %82, ptr %79, align 4, !tbaa !42
  br label %84

84:                                               ; preds = %62, %78
  %85 = phi ptr [ %59, %62 ], [ %83, %78 ]
  %86 = phi ptr [ %67, %62 ], [ %81, %78 ]
  %87 = getelementptr inbounds i32, ptr %86, i64 1
  %88 = load i32, ptr %86, align 4, !tbaa !42
  %89 = getelementptr inbounds i32, ptr %85, i64 1
  store i32 %88, ptr %85, align 4, !tbaa !42
  br label %90

90:                                               ; preds = %62, %84
  %91 = phi ptr [ %59, %62 ], [ %89, %84 ]
  %92 = phi ptr [ %67, %62 ], [ %87, %84 ]
  %93 = getelementptr inbounds i32, ptr %92, i64 1
  %94 = load i32, ptr %92, align 4, !tbaa !42
  %95 = getelementptr inbounds i32, ptr %91, i64 1
  store i32 %94, ptr %91, align 4, !tbaa !42
  br label %96

96:                                               ; preds = %62, %90
  %97 = phi ptr [ %59, %62 ], [ %95, %90 ]
  %98 = phi ptr [ %67, %62 ], [ %93, %90 ]
  %99 = getelementptr inbounds i32, ptr %98, i64 1
  %100 = load i32, ptr %98, align 4, !tbaa !42
  %101 = getelementptr inbounds i32, ptr %97, i64 1
  store i32 %100, ptr %97, align 4, !tbaa !42
  br label %102

102:                                              ; preds = %62, %96
  %103 = phi ptr [ %59, %62 ], [ %101, %96 ]
  %104 = phi ptr [ %67, %62 ], [ %99, %96 ]
  %105 = load i32, ptr %104, align 4, !tbaa !42
  %106 = getelementptr inbounds i32, ptr %103, i64 1
  store i32 %105, ptr %103, align 4, !tbaa !42
  br label %108

107:                                              ; preds = %62
  unreachable

108:                                              ; preds = %102, %57
  %109 = phi ptr [ %63, %102 ], [ %58, %57 ]
  %110 = phi ptr [ %106, %102 ], [ %59, %57 ]
  %111 = getelementptr inbounds i32, ptr %110, i64 %16
  %112 = getelementptr inbounds i8, ptr %109, i64 %17
  %113 = icmp eq i32 %22, 0
  br i1 %113, label %114, label %18, !llvm.loop !93

114:                                              ; preds = %108, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFYCbCrToRGBInit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %0, i64 56
  tail call void @_TIFFmemset(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 256) #9
  %5 = getelementptr inbounds i8, ptr %0, i64 312
  store ptr %5, ptr %0, align 8, !tbaa !94
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds i8, ptr %5, i64 %7
  store i8 %8, ptr %9, align 1, !tbaa !40
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, 256
  br i1 %11, label %12, label %6, !llvm.loop !96

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 568
  tail call void @_TIFFmemset(ptr noundef nonnull %13, i32 noundef 255, i32 noundef 512) #9
  %14 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i32 noundef 529, ptr noundef nonnull %3) #9
  %15 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %3, align 8, !tbaa !34
  call void @_TIFFmemcpy(ptr noundef nonnull %15, ptr noundef %16, i32 noundef 12) #9
  %17 = load ptr, ptr %3, align 8, !tbaa !34
  %18 = load float, ptr %17, align 4, !tbaa !97
  %19 = call float @llvm.fmuladd.f32(float %18, float -2.000000e+00, float 2.000000e+00)
  %20 = fmul float %19, 6.553600e+04
  %21 = fpext float %20 to double
  %22 = fadd double %21, 5.000000e-01
  %23 = fptosi double %22 to i32
  %24 = fmul float %18, %19
  %25 = getelementptr inbounds float, ptr %17, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !97
  %27 = fdiv float %24, %26
  %28 = fmul float %27, 6.553600e+04
  %29 = fpext float %28 to double
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i32
  %32 = getelementptr inbounds float, ptr %17, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !97
  %34 = call float @llvm.fmuladd.f32(float %33, float -2.000000e+00, float 2.000000e+00)
  %35 = fmul float %34, 6.553600e+04
  %36 = fpext float %35 to double
  %37 = fadd double %36, 5.000000e-01
  %38 = fptosi double %37 to i32
  %39 = fmul float %33, %34
  %40 = fdiv float %39, %26
  %41 = fmul float %40, 6.553600e+04
  %42 = fpext float %41 to double
  %43 = fadd double %42, 5.000000e-01
  %44 = fptosi double %43 to i32
  %45 = getelementptr inbounds i8, ptr %0, i64 1080
  %46 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %0, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !98
  %47 = getelementptr inbounds i8, ptr %0, i64 2104
  %48 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %0, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !99
  %49 = getelementptr inbounds i8, ptr %0, i64 3128
  %50 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %0, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !100
  %51 = getelementptr inbounds i8, ptr %0, i64 4152
  %52 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %0, i64 0, i32 4
  store ptr %51, ptr %52, align 8, !tbaa !101
  br label %53

53:                                               ; preds = %12, %53
  %54 = phi i64 [ 0, %12 ], [ %70, %53 ]
  %55 = phi i32 [ -128, %12 ], [ %71, %53 ]
  %56 = mul nsw i32 %55, %23
  %57 = add nsw i32 %56, 32768
  %58 = ashr i32 %57, 16
  %59 = getelementptr inbounds i32, ptr %45, i64 %54
  store i32 %58, ptr %59, align 4, !tbaa !42
  %60 = mul nsw i32 %55, %38
  %61 = add nsw i32 %60, 32768
  %62 = ashr i32 %61, 16
  %63 = getelementptr inbounds i32, ptr %47, i64 %54
  store i32 %62, ptr %63, align 4, !tbaa !42
  %64 = mul i32 %55, %31
  %65 = sub i32 0, %64
  %66 = getelementptr inbounds i32, ptr %49, i64 %54
  store i32 %65, ptr %66, align 4, !tbaa !42
  %67 = mul i32 %55, %44
  %68 = sub i32 32768, %67
  %69 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 %68, ptr %69, align 4, !tbaa !42
  %70 = add nuw nsw i64 %54, 1
  %71 = add nsw i32 %55, 1
  %72 = icmp eq i64 %70, 256
  br i1 %72, label %73, label %53, !llvm.loop !102

73:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr44tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = icmp ugt i32 %5, 3
  br i1 %21, label %22, label %551

22:                                               ; preds = %9
  %23 = shl nsw i32 %7, 2
  %24 = mul i32 %4, 3
  %25 = add i32 %23, %24
  %26 = zext i32 %4 to i64
  %27 = getelementptr inbounds i32, ptr %1, i64 %26
  %28 = sext i32 %7 to i64
  %29 = getelementptr inbounds i32, ptr %27, i64 %28
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = getelementptr inbounds i32, ptr %30, i64 %28
  %32 = getelementptr inbounds i32, ptr %31, i64 %26
  %33 = getelementptr inbounds i32, ptr %32, i64 %28
  %34 = lshr i32 %4, 2
  %35 = sext i32 %25 to i64
  %36 = sext i32 %6 to i64
  br label %37

37:                                               ; preds = %22, %543
  %38 = phi ptr [ %1, %22 ], [ %544, %543 ]
  %39 = phi i32 [ %5, %22 ], [ %549, %543 ]
  %40 = phi ptr [ %8, %22 ], [ %548, %543 ]
  %41 = phi ptr [ %29, %22 ], [ %545, %543 ]
  %42 = phi ptr [ %31, %22 ], [ %546, %543 ]
  %43 = phi ptr [ %33, %22 ], [ %547, %543 ]
  br label %44

44:                                               ; preds = %44, %37
  %45 = phi ptr [ %43, %37 ], [ %539, %44 ]
  %46 = phi ptr [ %42, %37 ], [ %538, %44 ]
  %47 = phi ptr [ %41, %37 ], [ %537, %44 ]
  %48 = phi ptr [ %40, %37 ], [ %540, %44 ]
  %49 = phi i32 [ %34, %37 ], [ %541, %44 ]
  %50 = phi ptr [ %38, %37 ], [ %536, %44 ]
  %51 = getelementptr inbounds i8, ptr %48, i64 16
  %52 = load i8, ptr %51, align 1, !tbaa !40
  %53 = getelementptr inbounds i8, ptr %48, i64 17
  %54 = load i8, ptr %53, align 1, !tbaa !40
  %55 = load i8, ptr %48, align 1, !tbaa !40
  %56 = zext i8 %55 to i32
  %57 = zext i8 %54 to i64
  %58 = getelementptr inbounds i32, ptr %13, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !42
  %60 = add nsw i32 %59, %56
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %20, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !40
  %64 = zext i8 %63 to i32
  %65 = zext i8 %52 to i64
  %66 = getelementptr inbounds i32, ptr %19, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !42
  %68 = getelementptr inbounds i32, ptr %17, i64 %57
  %69 = load i32, ptr %68, align 4, !tbaa !42
  %70 = add nsw i32 %69, %67
  %71 = ashr i32 %70, 16
  %72 = add nsw i32 %71, %56
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %20, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !40
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = getelementptr inbounds i32, ptr %15, i64 %65
  %79 = load i32, ptr %78, align 4, !tbaa !42
  %80 = add nsw i32 %79, %56
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %20, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !40
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or disjoint i32 %77, %64
  %87 = or disjoint i32 %86, %85
  %88 = or disjoint i32 %87, -16777216
  store i32 %88, ptr %50, align 4, !tbaa !42
  %89 = getelementptr inbounds i8, ptr %48, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !40
  %91 = zext i8 %90 to i32
  %92 = load i32, ptr %58, align 4, !tbaa !42
  %93 = add nsw i32 %92, %91
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %20, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !40
  %97 = zext i8 %96 to i32
  %98 = load i32, ptr %66, align 4, !tbaa !42
  %99 = load i32, ptr %68, align 4, !tbaa !42
  %100 = add nsw i32 %99, %98
  %101 = ashr i32 %100, 16
  %102 = add nsw i32 %101, %91
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %20, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !40
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = load i32, ptr %78, align 4, !tbaa !42
  %109 = add nsw i32 %108, %91
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %20, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !40
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 16
  %115 = or disjoint i32 %107, %97
  %116 = or disjoint i32 %115, %114
  %117 = or disjoint i32 %116, -16777216
  %118 = getelementptr inbounds i32, ptr %50, i64 1
  store i32 %117, ptr %118, align 4, !tbaa !42
  %119 = getelementptr inbounds i8, ptr %48, i64 2
  %120 = load i8, ptr %119, align 1, !tbaa !40
  %121 = zext i8 %120 to i32
  %122 = load i32, ptr %58, align 4, !tbaa !42
  %123 = add nsw i32 %122, %121
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %20, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !40
  %127 = zext i8 %126 to i32
  %128 = load i32, ptr %66, align 4, !tbaa !42
  %129 = load i32, ptr %68, align 4, !tbaa !42
  %130 = add nsw i32 %129, %128
  %131 = ashr i32 %130, 16
  %132 = add nsw i32 %131, %121
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %20, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !40
  %136 = zext i8 %135 to i32
  %137 = shl nuw nsw i32 %136, 8
  %138 = load i32, ptr %78, align 4, !tbaa !42
  %139 = add nsw i32 %138, %121
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %20, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !40
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 16
  %145 = or disjoint i32 %137, %127
  %146 = or disjoint i32 %145, %144
  %147 = or disjoint i32 %146, -16777216
  %148 = getelementptr inbounds i32, ptr %50, i64 2
  store i32 %147, ptr %148, align 4, !tbaa !42
  %149 = getelementptr inbounds i8, ptr %48, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !40
  %151 = zext i8 %150 to i32
  %152 = load i32, ptr %58, align 4, !tbaa !42
  %153 = add nsw i32 %152, %151
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %20, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !40
  %157 = zext i8 %156 to i32
  %158 = load i32, ptr %66, align 4, !tbaa !42
  %159 = load i32, ptr %68, align 4, !tbaa !42
  %160 = add nsw i32 %159, %158
  %161 = ashr i32 %160, 16
  %162 = add nsw i32 %161, %151
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %20, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !40
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = load i32, ptr %78, align 4, !tbaa !42
  %169 = add nsw i32 %168, %151
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %20, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !40
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 16
  %175 = or disjoint i32 %167, %157
  %176 = or disjoint i32 %175, %174
  %177 = or disjoint i32 %176, -16777216
  %178 = getelementptr inbounds i32, ptr %50, i64 3
  store i32 %177, ptr %178, align 4, !tbaa !42
  %179 = getelementptr inbounds i8, ptr %48, i64 4
  %180 = load i8, ptr %179, align 1, !tbaa !40
  %181 = zext i8 %180 to i32
  %182 = load i32, ptr %58, align 4, !tbaa !42
  %183 = add nsw i32 %182, %181
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %20, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !40
  %187 = zext i8 %186 to i32
  %188 = load i32, ptr %66, align 4, !tbaa !42
  %189 = load i32, ptr %68, align 4, !tbaa !42
  %190 = add nsw i32 %189, %188
  %191 = ashr i32 %190, 16
  %192 = add nsw i32 %191, %181
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %20, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !40
  %196 = zext i8 %195 to i32
  %197 = shl nuw nsw i32 %196, 8
  %198 = load i32, ptr %78, align 4, !tbaa !42
  %199 = add nsw i32 %198, %181
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %20, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !40
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, 16
  %205 = or disjoint i32 %197, %187
  %206 = or disjoint i32 %205, %204
  %207 = or disjoint i32 %206, -16777216
  store i32 %207, ptr %47, align 4, !tbaa !42
  %208 = getelementptr inbounds i8, ptr %48, i64 5
  %209 = load i8, ptr %208, align 1, !tbaa !40
  %210 = zext i8 %209 to i32
  %211 = load i32, ptr %58, align 4, !tbaa !42
  %212 = add nsw i32 %211, %210
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %20, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !40
  %216 = zext i8 %215 to i32
  %217 = load i32, ptr %66, align 4, !tbaa !42
  %218 = load i32, ptr %68, align 4, !tbaa !42
  %219 = add nsw i32 %218, %217
  %220 = ashr i32 %219, 16
  %221 = add nsw i32 %220, %210
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %20, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !40
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 8
  %227 = load i32, ptr %78, align 4, !tbaa !42
  %228 = add nsw i32 %227, %210
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %20, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !40
  %232 = zext i8 %231 to i32
  %233 = shl nuw nsw i32 %232, 16
  %234 = or disjoint i32 %226, %216
  %235 = or disjoint i32 %234, %233
  %236 = or disjoint i32 %235, -16777216
  %237 = getelementptr inbounds i32, ptr %47, i64 1
  store i32 %236, ptr %237, align 4, !tbaa !42
  %238 = getelementptr inbounds i8, ptr %48, i64 6
  %239 = load i8, ptr %238, align 1, !tbaa !40
  %240 = zext i8 %239 to i32
  %241 = load i32, ptr %58, align 4, !tbaa !42
  %242 = add nsw i32 %241, %240
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, ptr %20, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !40
  %246 = zext i8 %245 to i32
  %247 = load i32, ptr %66, align 4, !tbaa !42
  %248 = load i32, ptr %68, align 4, !tbaa !42
  %249 = add nsw i32 %248, %247
  %250 = ashr i32 %249, 16
  %251 = add nsw i32 %250, %240
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %20, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !40
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 8
  %257 = load i32, ptr %78, align 4, !tbaa !42
  %258 = add nsw i32 %257, %240
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %20, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !40
  %262 = zext i8 %261 to i32
  %263 = shl nuw nsw i32 %262, 16
  %264 = or disjoint i32 %256, %246
  %265 = or disjoint i32 %264, %263
  %266 = or disjoint i32 %265, -16777216
  %267 = getelementptr inbounds i32, ptr %47, i64 2
  store i32 %266, ptr %267, align 4, !tbaa !42
  %268 = getelementptr inbounds i8, ptr %48, i64 7
  %269 = load i8, ptr %268, align 1, !tbaa !40
  %270 = zext i8 %269 to i32
  %271 = load i32, ptr %58, align 4, !tbaa !42
  %272 = add nsw i32 %271, %270
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %20, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !40
  %276 = zext i8 %275 to i32
  %277 = load i32, ptr %66, align 4, !tbaa !42
  %278 = load i32, ptr %68, align 4, !tbaa !42
  %279 = add nsw i32 %278, %277
  %280 = ashr i32 %279, 16
  %281 = add nsw i32 %280, %270
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, ptr %20, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !40
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 8
  %287 = load i32, ptr %78, align 4, !tbaa !42
  %288 = add nsw i32 %287, %270
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, ptr %20, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !40
  %292 = zext i8 %291 to i32
  %293 = shl nuw nsw i32 %292, 16
  %294 = or disjoint i32 %286, %276
  %295 = or disjoint i32 %294, %293
  %296 = or disjoint i32 %295, -16777216
  %297 = getelementptr inbounds i32, ptr %47, i64 3
  store i32 %296, ptr %297, align 4, !tbaa !42
  %298 = getelementptr inbounds i8, ptr %48, i64 8
  %299 = load i8, ptr %298, align 1, !tbaa !40
  %300 = zext i8 %299 to i32
  %301 = load i32, ptr %58, align 4, !tbaa !42
  %302 = add nsw i32 %301, %300
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, ptr %20, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !40
  %306 = zext i8 %305 to i32
  %307 = load i32, ptr %66, align 4, !tbaa !42
  %308 = load i32, ptr %68, align 4, !tbaa !42
  %309 = add nsw i32 %308, %307
  %310 = ashr i32 %309, 16
  %311 = add nsw i32 %310, %300
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, ptr %20, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !40
  %315 = zext i8 %314 to i32
  %316 = shl nuw nsw i32 %315, 8
  %317 = load i32, ptr %78, align 4, !tbaa !42
  %318 = add nsw i32 %317, %300
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %20, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !40
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 16
  %324 = or disjoint i32 %316, %306
  %325 = or disjoint i32 %324, %323
  %326 = or disjoint i32 %325, -16777216
  store i32 %326, ptr %46, align 4, !tbaa !42
  %327 = getelementptr inbounds i8, ptr %48, i64 9
  %328 = load i8, ptr %327, align 1, !tbaa !40
  %329 = zext i8 %328 to i32
  %330 = load i32, ptr %58, align 4, !tbaa !42
  %331 = add nsw i32 %330, %329
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %20, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !40
  %335 = zext i8 %334 to i32
  %336 = load i32, ptr %66, align 4, !tbaa !42
  %337 = load i32, ptr %68, align 4, !tbaa !42
  %338 = add nsw i32 %337, %336
  %339 = ashr i32 %338, 16
  %340 = add nsw i32 %339, %329
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, ptr %20, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !40
  %344 = zext i8 %343 to i32
  %345 = shl nuw nsw i32 %344, 8
  %346 = load i32, ptr %78, align 4, !tbaa !42
  %347 = add nsw i32 %346, %329
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %20, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !40
  %351 = zext i8 %350 to i32
  %352 = shl nuw nsw i32 %351, 16
  %353 = or disjoint i32 %345, %335
  %354 = or disjoint i32 %353, %352
  %355 = or disjoint i32 %354, -16777216
  %356 = getelementptr inbounds i32, ptr %46, i64 1
  store i32 %355, ptr %356, align 4, !tbaa !42
  %357 = getelementptr inbounds i8, ptr %48, i64 10
  %358 = load i8, ptr %357, align 1, !tbaa !40
  %359 = zext i8 %358 to i32
  %360 = load i32, ptr %58, align 4, !tbaa !42
  %361 = add nsw i32 %360, %359
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, ptr %20, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !40
  %365 = zext i8 %364 to i32
  %366 = load i32, ptr %66, align 4, !tbaa !42
  %367 = load i32, ptr %68, align 4, !tbaa !42
  %368 = add nsw i32 %367, %366
  %369 = ashr i32 %368, 16
  %370 = add nsw i32 %369, %359
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %20, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !40
  %374 = zext i8 %373 to i32
  %375 = shl nuw nsw i32 %374, 8
  %376 = load i32, ptr %78, align 4, !tbaa !42
  %377 = add nsw i32 %376, %359
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %20, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !40
  %381 = zext i8 %380 to i32
  %382 = shl nuw nsw i32 %381, 16
  %383 = or disjoint i32 %375, %365
  %384 = or disjoint i32 %383, %382
  %385 = or disjoint i32 %384, -16777216
  %386 = getelementptr inbounds i32, ptr %46, i64 2
  store i32 %385, ptr %386, align 4, !tbaa !42
  %387 = getelementptr inbounds i8, ptr %48, i64 11
  %388 = load i8, ptr %387, align 1, !tbaa !40
  %389 = zext i8 %388 to i32
  %390 = load i32, ptr %58, align 4, !tbaa !42
  %391 = add nsw i32 %390, %389
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %20, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !40
  %395 = zext i8 %394 to i32
  %396 = load i32, ptr %66, align 4, !tbaa !42
  %397 = load i32, ptr %68, align 4, !tbaa !42
  %398 = add nsw i32 %397, %396
  %399 = ashr i32 %398, 16
  %400 = add nsw i32 %399, %389
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, ptr %20, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !40
  %404 = zext i8 %403 to i32
  %405 = shl nuw nsw i32 %404, 8
  %406 = load i32, ptr %78, align 4, !tbaa !42
  %407 = add nsw i32 %406, %389
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, ptr %20, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !40
  %411 = zext i8 %410 to i32
  %412 = shl nuw nsw i32 %411, 16
  %413 = or disjoint i32 %405, %395
  %414 = or disjoint i32 %413, %412
  %415 = or disjoint i32 %414, -16777216
  %416 = getelementptr inbounds i32, ptr %46, i64 3
  store i32 %415, ptr %416, align 4, !tbaa !42
  %417 = getelementptr inbounds i8, ptr %48, i64 12
  %418 = load i8, ptr %417, align 1, !tbaa !40
  %419 = zext i8 %418 to i32
  %420 = load i32, ptr %58, align 4, !tbaa !42
  %421 = add nsw i32 %420, %419
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %20, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !40
  %425 = zext i8 %424 to i32
  %426 = load i32, ptr %66, align 4, !tbaa !42
  %427 = load i32, ptr %68, align 4, !tbaa !42
  %428 = add nsw i32 %427, %426
  %429 = ashr i32 %428, 16
  %430 = add nsw i32 %429, %419
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %20, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !40
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 8
  %436 = load i32, ptr %78, align 4, !tbaa !42
  %437 = add nsw i32 %436, %419
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %20, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !40
  %441 = zext i8 %440 to i32
  %442 = shl nuw nsw i32 %441, 16
  %443 = or disjoint i32 %435, %425
  %444 = or disjoint i32 %443, %442
  %445 = or disjoint i32 %444, -16777216
  store i32 %445, ptr %45, align 4, !tbaa !42
  %446 = getelementptr inbounds i8, ptr %48, i64 13
  %447 = load i8, ptr %446, align 1, !tbaa !40
  %448 = zext i8 %447 to i32
  %449 = load i32, ptr %58, align 4, !tbaa !42
  %450 = add nsw i32 %449, %448
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, ptr %20, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !40
  %454 = zext i8 %453 to i32
  %455 = load i32, ptr %66, align 4, !tbaa !42
  %456 = load i32, ptr %68, align 4, !tbaa !42
  %457 = add nsw i32 %456, %455
  %458 = ashr i32 %457, 16
  %459 = add nsw i32 %458, %448
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, ptr %20, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !40
  %463 = zext i8 %462 to i32
  %464 = shl nuw nsw i32 %463, 8
  %465 = load i32, ptr %78, align 4, !tbaa !42
  %466 = add nsw i32 %465, %448
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %20, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !40
  %470 = zext i8 %469 to i32
  %471 = shl nuw nsw i32 %470, 16
  %472 = or disjoint i32 %464, %454
  %473 = or disjoint i32 %472, %471
  %474 = or disjoint i32 %473, -16777216
  %475 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %474, ptr %475, align 4, !tbaa !42
  %476 = getelementptr inbounds i8, ptr %48, i64 14
  %477 = load i8, ptr %476, align 1, !tbaa !40
  %478 = zext i8 %477 to i32
  %479 = load i32, ptr %58, align 4, !tbaa !42
  %480 = add nsw i32 %479, %478
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, ptr %20, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !40
  %484 = zext i8 %483 to i32
  %485 = load i32, ptr %66, align 4, !tbaa !42
  %486 = load i32, ptr %68, align 4, !tbaa !42
  %487 = add nsw i32 %486, %485
  %488 = ashr i32 %487, 16
  %489 = add nsw i32 %488, %478
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, ptr %20, i64 %490
  %492 = load i8, ptr %491, align 1, !tbaa !40
  %493 = zext i8 %492 to i32
  %494 = shl nuw nsw i32 %493, 8
  %495 = load i32, ptr %78, align 4, !tbaa !42
  %496 = add nsw i32 %495, %478
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8, ptr %20, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !40
  %500 = zext i8 %499 to i32
  %501 = shl nuw nsw i32 %500, 16
  %502 = or disjoint i32 %494, %484
  %503 = or disjoint i32 %502, %501
  %504 = or disjoint i32 %503, -16777216
  %505 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %504, ptr %505, align 4, !tbaa !42
  %506 = getelementptr inbounds i8, ptr %48, i64 15
  %507 = load i8, ptr %506, align 1, !tbaa !40
  %508 = zext i8 %507 to i32
  %509 = load i32, ptr %58, align 4, !tbaa !42
  %510 = add nsw i32 %509, %508
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, ptr %20, i64 %511
  %513 = load i8, ptr %512, align 1, !tbaa !40
  %514 = zext i8 %513 to i32
  %515 = load i32, ptr %66, align 4, !tbaa !42
  %516 = load i32, ptr %68, align 4, !tbaa !42
  %517 = add nsw i32 %516, %515
  %518 = ashr i32 %517, 16
  %519 = add nsw i32 %518, %508
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, ptr %20, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !40
  %523 = zext i8 %522 to i32
  %524 = shl nuw nsw i32 %523, 8
  %525 = load i32, ptr %78, align 4, !tbaa !42
  %526 = add nsw i32 %525, %508
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %20, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !40
  %530 = zext i8 %529 to i32
  %531 = shl nuw nsw i32 %530, 16
  %532 = or disjoint i32 %524, %514
  %533 = or disjoint i32 %532, %531
  %534 = or disjoint i32 %533, -16777216
  %535 = getelementptr inbounds i32, ptr %45, i64 3
  store i32 %534, ptr %535, align 4, !tbaa !42
  %536 = getelementptr inbounds i32, ptr %50, i64 4
  %537 = getelementptr inbounds i32, ptr %47, i64 4
  %538 = getelementptr inbounds i32, ptr %46, i64 4
  %539 = getelementptr inbounds i32, ptr %45, i64 4
  %540 = getelementptr inbounds i8, ptr %48, i64 18
  %541 = add i32 %49, -1
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %44, !llvm.loop !103

543:                                              ; preds = %44
  %544 = getelementptr inbounds i32, ptr %536, i64 %35
  %545 = getelementptr inbounds i32, ptr %537, i64 %35
  %546 = getelementptr inbounds i32, ptr %538, i64 %35
  %547 = getelementptr inbounds i32, ptr %539, i64 %35
  %548 = getelementptr inbounds i8, ptr %540, i64 %36
  %549 = add i32 %39, -4
  %550 = icmp ugt i32 %549, 3
  br i1 %550, label %37, label %551, !llvm.loop !104

551:                                              ; preds = %543, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr42tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = icmp ugt i32 %5, 1
  br i1 %21, label %22, label %300

22:                                               ; preds = %9
  %23 = shl nsw i32 %7, 1
  %24 = add i32 %23, %4
  %25 = zext i32 %4 to i64
  %26 = getelementptr inbounds i32, ptr %1, i64 %25
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = lshr i32 %4, 2
  %30 = sext i32 %24 to i64
  %31 = sext i32 %6 to i64
  br label %32

32:                                               ; preds = %22, %294
  %33 = phi ptr [ %1, %22 ], [ %295, %294 ]
  %34 = phi i32 [ %5, %22 ], [ %298, %294 ]
  %35 = phi ptr [ %8, %22 ], [ %297, %294 ]
  %36 = phi ptr [ %28, %22 ], [ %296, %294 ]
  br label %37

37:                                               ; preds = %37, %32
  %38 = phi ptr [ %36, %32 ], [ %290, %37 ]
  %39 = phi ptr [ %35, %32 ], [ %291, %37 ]
  %40 = phi i32 [ %29, %32 ], [ %292, %37 ]
  %41 = phi ptr [ %33, %32 ], [ %289, %37 ]
  %42 = getelementptr inbounds i8, ptr %39, i64 8
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = getelementptr inbounds i8, ptr %39, i64 9
  %45 = load i8, ptr %44, align 1, !tbaa !40
  %46 = load i8, ptr %39, align 1, !tbaa !40
  %47 = zext i8 %46 to i32
  %48 = zext i8 %45 to i64
  %49 = getelementptr inbounds i32, ptr %13, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = add nsw i32 %50, %47
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %20, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !40
  %55 = zext i8 %54 to i32
  %56 = zext i8 %43 to i64
  %57 = getelementptr inbounds i32, ptr %19, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !42
  %59 = getelementptr inbounds i32, ptr %17, i64 %48
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = add nsw i32 %60, %58
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %62, %47
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %20, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !40
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = getelementptr inbounds i32, ptr %15, i64 %56
  %70 = load i32, ptr %69, align 4, !tbaa !42
  %71 = add nsw i32 %70, %47
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %20, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !40
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or disjoint i32 %68, %55
  %78 = or disjoint i32 %77, %76
  %79 = or disjoint i32 %78, -16777216
  store i32 %79, ptr %41, align 4, !tbaa !42
  %80 = getelementptr inbounds i8, ptr %39, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !40
  %82 = zext i8 %81 to i32
  %83 = load i32, ptr %49, align 4, !tbaa !42
  %84 = add nsw i32 %83, %82
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %20, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !40
  %88 = zext i8 %87 to i32
  %89 = load i32, ptr %57, align 4, !tbaa !42
  %90 = load i32, ptr %59, align 4, !tbaa !42
  %91 = add nsw i32 %90, %89
  %92 = ashr i32 %91, 16
  %93 = add nsw i32 %92, %82
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %20, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !40
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = load i32, ptr %69, align 4, !tbaa !42
  %100 = add nsw i32 %99, %82
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %20, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !40
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %98, %88
  %107 = or disjoint i32 %106, %105
  %108 = or disjoint i32 %107, -16777216
  %109 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %108, ptr %109, align 4, !tbaa !42
  %110 = getelementptr inbounds i8, ptr %39, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !40
  %112 = zext i8 %111 to i32
  %113 = load i32, ptr %49, align 4, !tbaa !42
  %114 = add nsw i32 %113, %112
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %20, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !40
  %118 = zext i8 %117 to i32
  %119 = load i32, ptr %57, align 4, !tbaa !42
  %120 = load i32, ptr %59, align 4, !tbaa !42
  %121 = add nsw i32 %120, %119
  %122 = ashr i32 %121, 16
  %123 = add nsw i32 %122, %112
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %20, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !40
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = load i32, ptr %69, align 4, !tbaa !42
  %130 = add nsw i32 %129, %112
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %20, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !40
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %128, %118
  %137 = or disjoint i32 %136, %135
  %138 = or disjoint i32 %137, -16777216
  %139 = getelementptr inbounds i32, ptr %41, i64 2
  store i32 %138, ptr %139, align 4, !tbaa !42
  %140 = getelementptr inbounds i8, ptr %39, i64 3
  %141 = load i8, ptr %140, align 1, !tbaa !40
  %142 = zext i8 %141 to i32
  %143 = load i32, ptr %49, align 4, !tbaa !42
  %144 = add nsw i32 %143, %142
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %20, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !40
  %148 = zext i8 %147 to i32
  %149 = load i32, ptr %57, align 4, !tbaa !42
  %150 = load i32, ptr %59, align 4, !tbaa !42
  %151 = add nsw i32 %150, %149
  %152 = ashr i32 %151, 16
  %153 = add nsw i32 %152, %142
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %20, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !40
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %159 = load i32, ptr %69, align 4, !tbaa !42
  %160 = add nsw i32 %159, %142
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %20, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !40
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 16
  %166 = or disjoint i32 %158, %148
  %167 = or disjoint i32 %166, %165
  %168 = or disjoint i32 %167, -16777216
  %169 = getelementptr inbounds i32, ptr %41, i64 3
  store i32 %168, ptr %169, align 4, !tbaa !42
  %170 = getelementptr inbounds i8, ptr %39, i64 4
  %171 = load i8, ptr %170, align 1, !tbaa !40
  %172 = zext i8 %171 to i32
  %173 = load i32, ptr %49, align 4, !tbaa !42
  %174 = add nsw i32 %173, %172
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %20, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !40
  %178 = zext i8 %177 to i32
  %179 = load i32, ptr %57, align 4, !tbaa !42
  %180 = load i32, ptr %59, align 4, !tbaa !42
  %181 = add nsw i32 %180, %179
  %182 = ashr i32 %181, 16
  %183 = add nsw i32 %182, %172
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %20, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !40
  %187 = zext i8 %186 to i32
  %188 = shl nuw nsw i32 %187, 8
  %189 = load i32, ptr %69, align 4, !tbaa !42
  %190 = add nsw i32 %189, %172
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %20, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !40
  %194 = zext i8 %193 to i32
  %195 = shl nuw nsw i32 %194, 16
  %196 = or disjoint i32 %188, %178
  %197 = or disjoint i32 %196, %195
  %198 = or disjoint i32 %197, -16777216
  store i32 %198, ptr %38, align 4, !tbaa !42
  %199 = getelementptr inbounds i8, ptr %39, i64 5
  %200 = load i8, ptr %199, align 1, !tbaa !40
  %201 = zext i8 %200 to i32
  %202 = load i32, ptr %49, align 4, !tbaa !42
  %203 = add nsw i32 %202, %201
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %20, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !40
  %207 = zext i8 %206 to i32
  %208 = load i32, ptr %57, align 4, !tbaa !42
  %209 = load i32, ptr %59, align 4, !tbaa !42
  %210 = add nsw i32 %209, %208
  %211 = ashr i32 %210, 16
  %212 = add nsw i32 %211, %201
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %20, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !40
  %216 = zext i8 %215 to i32
  %217 = shl nuw nsw i32 %216, 8
  %218 = load i32, ptr %69, align 4, !tbaa !42
  %219 = add nsw i32 %218, %201
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %20, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !40
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 16
  %225 = or disjoint i32 %217, %207
  %226 = or disjoint i32 %225, %224
  %227 = or disjoint i32 %226, -16777216
  %228 = getelementptr inbounds i32, ptr %38, i64 1
  store i32 %227, ptr %228, align 4, !tbaa !42
  %229 = getelementptr inbounds i8, ptr %39, i64 6
  %230 = load i8, ptr %229, align 1, !tbaa !40
  %231 = zext i8 %230 to i32
  %232 = load i32, ptr %49, align 4, !tbaa !42
  %233 = add nsw i32 %232, %231
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %20, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !40
  %237 = zext i8 %236 to i32
  %238 = load i32, ptr %57, align 4, !tbaa !42
  %239 = load i32, ptr %59, align 4, !tbaa !42
  %240 = add nsw i32 %239, %238
  %241 = ashr i32 %240, 16
  %242 = add nsw i32 %241, %231
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, ptr %20, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !40
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 8
  %248 = load i32, ptr %69, align 4, !tbaa !42
  %249 = add nsw i32 %248, %231
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %20, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !40
  %253 = zext i8 %252 to i32
  %254 = shl nuw nsw i32 %253, 16
  %255 = or disjoint i32 %247, %237
  %256 = or disjoint i32 %255, %254
  %257 = or disjoint i32 %256, -16777216
  %258 = getelementptr inbounds i32, ptr %38, i64 2
  store i32 %257, ptr %258, align 4, !tbaa !42
  %259 = getelementptr inbounds i8, ptr %39, i64 7
  %260 = load i8, ptr %259, align 1, !tbaa !40
  %261 = zext i8 %260 to i32
  %262 = load i32, ptr %49, align 4, !tbaa !42
  %263 = add nsw i32 %262, %261
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %20, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !40
  %267 = zext i8 %266 to i32
  %268 = load i32, ptr %57, align 4, !tbaa !42
  %269 = load i32, ptr %59, align 4, !tbaa !42
  %270 = add nsw i32 %269, %268
  %271 = ashr i32 %270, 16
  %272 = add nsw i32 %271, %261
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %20, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !40
  %276 = zext i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 8
  %278 = load i32, ptr %69, align 4, !tbaa !42
  %279 = add nsw i32 %278, %261
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %20, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !40
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 16
  %285 = or disjoint i32 %277, %267
  %286 = or disjoint i32 %285, %284
  %287 = or disjoint i32 %286, -16777216
  %288 = getelementptr inbounds i32, ptr %38, i64 3
  store i32 %287, ptr %288, align 4, !tbaa !42
  %289 = getelementptr inbounds i32, ptr %41, i64 4
  %290 = getelementptr inbounds i32, ptr %38, i64 4
  %291 = getelementptr inbounds i8, ptr %39, i64 10
  %292 = add i32 %40, -1
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %37, !llvm.loop !105

294:                                              ; preds = %37
  %295 = getelementptr inbounds i32, ptr %289, i64 %30
  %296 = getelementptr inbounds i32, ptr %290, i64 %30
  %297 = getelementptr inbounds i8, ptr %291, i64 %31
  %298 = add i32 %34, -2
  %299 = icmp ugt i32 %298, 1
  br i1 %299, label %32, label %300, !llvm.loop !106

300:                                              ; preds = %294, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr41tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = sext i32 %7 to i64
  %22 = lshr i32 %4, 2
  %23 = sext i32 %6 to i64
  br label %24

24:                                               ; preds = %164, %9
  %25 = phi ptr [ %8, %9 ], [ %166, %164 ]
  %26 = phi i32 [ %5, %9 ], [ %167, %164 ]
  %27 = phi ptr [ %1, %9 ], [ %165, %164 ]
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %25, %24 ], [ %161, %28 ]
  %30 = phi i32 [ %22, %24 ], [ %162, %28 ]
  %31 = phi ptr [ %27, %24 ], [ %160, %28 ]
  %32 = getelementptr inbounds i8, ptr %29, i64 4
  %33 = load i8, ptr %32, align 1, !tbaa !40
  %34 = getelementptr inbounds i8, ptr %29, i64 5
  %35 = load i8, ptr %34, align 1, !tbaa !40
  %36 = load i8, ptr %29, align 1, !tbaa !40
  %37 = zext i8 %36 to i32
  %38 = zext i8 %35 to i64
  %39 = getelementptr inbounds i32, ptr %13, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !42
  %41 = add nsw i32 %40, %37
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %20, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !40
  %45 = zext i8 %44 to i32
  %46 = zext i8 %33 to i64
  %47 = getelementptr inbounds i32, ptr %19, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !42
  %49 = getelementptr inbounds i32, ptr %17, i64 %38
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = add nsw i32 %50, %48
  %52 = ashr i32 %51, 16
  %53 = add nsw i32 %52, %37
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %20, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !40
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = getelementptr inbounds i32, ptr %15, i64 %46
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = add nsw i32 %60, %37
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %20, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or disjoint i32 %58, %45
  %68 = or disjoint i32 %67, %66
  %69 = or disjoint i32 %68, -16777216
  store i32 %69, ptr %31, align 4, !tbaa !42
  %70 = getelementptr inbounds i8, ptr %29, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !40
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %39, align 4, !tbaa !42
  %74 = add nsw i32 %73, %72
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %20, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !40
  %78 = zext i8 %77 to i32
  %79 = load i32, ptr %47, align 4, !tbaa !42
  %80 = load i32, ptr %49, align 4, !tbaa !42
  %81 = add nsw i32 %80, %79
  %82 = ashr i32 %81, 16
  %83 = add nsw i32 %82, %72
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %20, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !40
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = load i32, ptr %59, align 4, !tbaa !42
  %90 = add nsw i32 %89, %72
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %20, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !40
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %88, %78
  %97 = or disjoint i32 %96, %95
  %98 = or disjoint i32 %97, -16777216
  %99 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %98, ptr %99, align 4, !tbaa !42
  %100 = getelementptr inbounds i8, ptr %29, i64 2
  %101 = load i8, ptr %100, align 1, !tbaa !40
  %102 = zext i8 %101 to i32
  %103 = load i32, ptr %39, align 4, !tbaa !42
  %104 = add nsw i32 %103, %102
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %20, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !40
  %108 = zext i8 %107 to i32
  %109 = load i32, ptr %47, align 4, !tbaa !42
  %110 = load i32, ptr %49, align 4, !tbaa !42
  %111 = add nsw i32 %110, %109
  %112 = ashr i32 %111, 16
  %113 = add nsw i32 %112, %102
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %20, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !40
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = load i32, ptr %59, align 4, !tbaa !42
  %120 = add nsw i32 %119, %102
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %20, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !40
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 16
  %126 = or disjoint i32 %118, %108
  %127 = or disjoint i32 %126, %125
  %128 = or disjoint i32 %127, -16777216
  %129 = getelementptr inbounds i32, ptr %31, i64 2
  store i32 %128, ptr %129, align 4, !tbaa !42
  %130 = getelementptr inbounds i8, ptr %29, i64 3
  %131 = load i8, ptr %130, align 1, !tbaa !40
  %132 = zext i8 %131 to i32
  %133 = load i32, ptr %39, align 4, !tbaa !42
  %134 = add nsw i32 %133, %132
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %20, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !40
  %138 = zext i8 %137 to i32
  %139 = load i32, ptr %47, align 4, !tbaa !42
  %140 = load i32, ptr %49, align 4, !tbaa !42
  %141 = add nsw i32 %140, %139
  %142 = ashr i32 %141, 16
  %143 = add nsw i32 %142, %132
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %20, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !40
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 8
  %149 = load i32, ptr %59, align 4, !tbaa !42
  %150 = add nsw i32 %149, %132
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %20, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !40
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 16
  %156 = or disjoint i32 %148, %138
  %157 = or disjoint i32 %156, %155
  %158 = or disjoint i32 %157, -16777216
  %159 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %158, ptr %159, align 4, !tbaa !42
  %160 = getelementptr inbounds i32, ptr %31, i64 4
  %161 = getelementptr inbounds i8, ptr %29, i64 6
  %162 = add i32 %30, -1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %28, !llvm.loop !107

164:                                              ; preds = %28
  %165 = getelementptr inbounds i32, ptr %160, i64 %21
  %166 = getelementptr inbounds i8, ptr %161, i64 %23
  %167 = add i32 %26, -1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %24, !llvm.loop !108

169:                                              ; preds = %164
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr22tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = icmp ugt i32 %5, 1
  br i1 %21, label %22, label %180

22:                                               ; preds = %9
  %23 = shl nsw i32 %7, 1
  %24 = add i32 %23, %4
  %25 = zext i32 %4 to i64
  %26 = getelementptr inbounds i32, ptr %1, i64 %25
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = lshr i32 %4, 1
  %30 = sext i32 %24 to i64
  %31 = sext i32 %6 to i64
  br label %32

32:                                               ; preds = %22, %174
  %33 = phi ptr [ %1, %22 ], [ %175, %174 ]
  %34 = phi i32 [ %5, %22 ], [ %178, %174 ]
  %35 = phi ptr [ %8, %22 ], [ %177, %174 ]
  %36 = phi ptr [ %28, %22 ], [ %176, %174 ]
  br label %37

37:                                               ; preds = %37, %32
  %38 = phi ptr [ %36, %32 ], [ %170, %37 ]
  %39 = phi ptr [ %35, %32 ], [ %171, %37 ]
  %40 = phi i32 [ %29, %32 ], [ %172, %37 ]
  %41 = phi ptr [ %33, %32 ], [ %169, %37 ]
  %42 = getelementptr inbounds i8, ptr %39, i64 4
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = getelementptr inbounds i8, ptr %39, i64 5
  %45 = load i8, ptr %44, align 1, !tbaa !40
  %46 = load i8, ptr %39, align 1, !tbaa !40
  %47 = zext i8 %46 to i32
  %48 = zext i8 %45 to i64
  %49 = getelementptr inbounds i32, ptr %13, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = add nsw i32 %50, %47
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %20, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !40
  %55 = zext i8 %54 to i32
  %56 = zext i8 %43 to i64
  %57 = getelementptr inbounds i32, ptr %19, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !42
  %59 = getelementptr inbounds i32, ptr %17, i64 %48
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = add nsw i32 %60, %58
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %62, %47
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %20, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !40
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = getelementptr inbounds i32, ptr %15, i64 %56
  %70 = load i32, ptr %69, align 4, !tbaa !42
  %71 = add nsw i32 %70, %47
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %20, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !40
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or disjoint i32 %68, %55
  %78 = or disjoint i32 %77, %76
  %79 = or disjoint i32 %78, -16777216
  store i32 %79, ptr %41, align 4, !tbaa !42
  %80 = getelementptr inbounds i8, ptr %39, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !40
  %82 = zext i8 %81 to i32
  %83 = load i32, ptr %49, align 4, !tbaa !42
  %84 = add nsw i32 %83, %82
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %20, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !40
  %88 = zext i8 %87 to i32
  %89 = load i32, ptr %57, align 4, !tbaa !42
  %90 = load i32, ptr %59, align 4, !tbaa !42
  %91 = add nsw i32 %90, %89
  %92 = ashr i32 %91, 16
  %93 = add nsw i32 %92, %82
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %20, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !40
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = load i32, ptr %69, align 4, !tbaa !42
  %100 = add nsw i32 %99, %82
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %20, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !40
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %98, %88
  %107 = or disjoint i32 %106, %105
  %108 = or disjoint i32 %107, -16777216
  %109 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %108, ptr %109, align 4, !tbaa !42
  %110 = getelementptr inbounds i8, ptr %39, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !40
  %112 = zext i8 %111 to i32
  %113 = load i32, ptr %49, align 4, !tbaa !42
  %114 = add nsw i32 %113, %112
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %20, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !40
  %118 = zext i8 %117 to i32
  %119 = load i32, ptr %57, align 4, !tbaa !42
  %120 = load i32, ptr %59, align 4, !tbaa !42
  %121 = add nsw i32 %120, %119
  %122 = ashr i32 %121, 16
  %123 = add nsw i32 %122, %112
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %20, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !40
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = load i32, ptr %69, align 4, !tbaa !42
  %130 = add nsw i32 %129, %112
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %20, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !40
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %128, %118
  %137 = or disjoint i32 %136, %135
  %138 = or disjoint i32 %137, -16777216
  store i32 %138, ptr %38, align 4, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %39, i64 3
  %140 = load i8, ptr %139, align 1, !tbaa !40
  %141 = zext i8 %140 to i32
  %142 = load i32, ptr %49, align 4, !tbaa !42
  %143 = add nsw i32 %142, %141
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %20, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !40
  %147 = zext i8 %146 to i32
  %148 = load i32, ptr %57, align 4, !tbaa !42
  %149 = load i32, ptr %59, align 4, !tbaa !42
  %150 = add nsw i32 %149, %148
  %151 = ashr i32 %150, 16
  %152 = add nsw i32 %151, %141
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %20, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !40
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 8
  %158 = load i32, ptr %69, align 4, !tbaa !42
  %159 = add nsw i32 %158, %141
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %20, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !40
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 16
  %165 = or disjoint i32 %157, %147
  %166 = or disjoint i32 %165, %164
  %167 = or disjoint i32 %166, -16777216
  %168 = getelementptr inbounds i32, ptr %38, i64 1
  store i32 %167, ptr %168, align 4, !tbaa !42
  %169 = getelementptr inbounds i32, ptr %41, i64 2
  %170 = getelementptr inbounds i32, ptr %38, i64 2
  %171 = getelementptr inbounds i8, ptr %39, i64 6
  %172 = add i32 %40, -1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %37, !llvm.loop !109

174:                                              ; preds = %37
  %175 = getelementptr inbounds i32, ptr %169, i64 %30
  %176 = getelementptr inbounds i32, ptr %170, i64 %30
  %177 = getelementptr inbounds i8, ptr %171, i64 %31
  %178 = add i32 %34, -2
  %179 = icmp ugt i32 %178, 1
  br i1 %179, label %32, label %180, !llvm.loop !110

180:                                              ; preds = %174, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr21tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = sext i32 %7 to i64
  %22 = lshr i32 %4, 1
  %23 = sext i32 %6 to i64
  br label %24

24:                                               ; preds = %104, %9
  %25 = phi ptr [ %8, %9 ], [ %106, %104 ]
  %26 = phi i32 [ %5, %9 ], [ %107, %104 ]
  %27 = phi ptr [ %1, %9 ], [ %105, %104 ]
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %25, %24 ], [ %101, %28 ]
  %30 = phi i32 [ %22, %24 ], [ %102, %28 ]
  %31 = phi ptr [ %27, %24 ], [ %100, %28 ]
  %32 = getelementptr inbounds i8, ptr %29, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !40
  %34 = getelementptr inbounds i8, ptr %29, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !40
  %36 = load i8, ptr %29, align 1, !tbaa !40
  %37 = zext i8 %36 to i32
  %38 = zext i8 %35 to i64
  %39 = getelementptr inbounds i32, ptr %13, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !42
  %41 = add nsw i32 %40, %37
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %20, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !40
  %45 = zext i8 %44 to i32
  %46 = zext i8 %33 to i64
  %47 = getelementptr inbounds i32, ptr %19, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !42
  %49 = getelementptr inbounds i32, ptr %17, i64 %38
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = add nsw i32 %50, %48
  %52 = ashr i32 %51, 16
  %53 = add nsw i32 %52, %37
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %20, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !40
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = getelementptr inbounds i32, ptr %15, i64 %46
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = add nsw i32 %60, %37
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %20, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or disjoint i32 %58, %45
  %68 = or disjoint i32 %67, %66
  %69 = or disjoint i32 %68, -16777216
  store i32 %69, ptr %31, align 4, !tbaa !42
  %70 = getelementptr inbounds i8, ptr %29, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !40
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %39, align 4, !tbaa !42
  %74 = add nsw i32 %73, %72
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %20, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !40
  %78 = zext i8 %77 to i32
  %79 = load i32, ptr %47, align 4, !tbaa !42
  %80 = load i32, ptr %49, align 4, !tbaa !42
  %81 = add nsw i32 %80, %79
  %82 = ashr i32 %81, 16
  %83 = add nsw i32 %82, %72
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %20, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !40
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = load i32, ptr %59, align 4, !tbaa !42
  %90 = add nsw i32 %89, %72
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %20, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !40
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %88, %78
  %97 = or disjoint i32 %96, %95
  %98 = or disjoint i32 %97, -16777216
  %99 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %98, ptr %99, align 4, !tbaa !42
  %100 = getelementptr inbounds i32, ptr %31, i64 2
  %101 = getelementptr inbounds i8, ptr %29, i64 4
  %102 = add i32 %30, -1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %28, !llvm.loop !111

104:                                              ; preds = %28
  %105 = getelementptr inbounds i32, ptr %100, i64 %21
  %106 = getelementptr inbounds i8, ptr %101, i64 %23
  %107 = add i32 %26, -1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %24, !llvm.loop !112

109:                                              ; preds = %104
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putcontig8bitYCbCr11tile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #6 {
  %10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %11, align 8, !tbaa !94
  %21 = sext i32 %7 to i64
  %22 = lshr i32 %4, 1
  %23 = sext i32 %6 to i64
  br label %24

24:                                               ; preds = %74, %9
  %25 = phi ptr [ %8, %9 ], [ %76, %74 ]
  %26 = phi i32 [ %5, %9 ], [ %77, %74 ]
  %27 = phi ptr [ %1, %9 ], [ %75, %74 ]
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %25, %24 ], [ %71, %28 ]
  %30 = phi i32 [ %22, %24 ], [ %72, %28 ]
  %31 = phi ptr [ %27, %24 ], [ %70, %28 ]
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !40
  %34 = getelementptr inbounds i8, ptr %29, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !40
  %36 = load i8, ptr %29, align 1, !tbaa !40
  %37 = zext i8 %36 to i32
  %38 = zext i8 %35 to i64
  %39 = getelementptr inbounds i32, ptr %13, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !42
  %41 = add nsw i32 %40, %37
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %20, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !40
  %45 = zext i8 %44 to i32
  %46 = zext i8 %33 to i64
  %47 = getelementptr inbounds i32, ptr %19, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !42
  %49 = getelementptr inbounds i32, ptr %17, i64 %38
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = add nsw i32 %50, %48
  %52 = ashr i32 %51, 16
  %53 = add nsw i32 %52, %37
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %20, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !40
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = getelementptr inbounds i32, ptr %15, i64 %46
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = add nsw i32 %60, %37
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %20, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or disjoint i32 %58, %45
  %68 = or disjoint i32 %67, %66
  %69 = or disjoint i32 %68, -16777216
  %70 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %69, ptr %31, align 4, !tbaa !42
  %71 = getelementptr inbounds i8, ptr %29, i64 3
  %72 = add i32 %30, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %28, !llvm.loop !113

74:                                               ; preds = %28
  %75 = getelementptr inbounds i32, ptr %70, i64 %21
  %76 = getelementptr inbounds i8, ptr %71, i64 %23
  %77 = add i32 %26, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %24, !llvm.loop !114

79:                                               ; preds = %74
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBAAseparate8bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %377, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i32 %4, 7
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %365
  %19 = phi i32 [ %5, %14 ], [ %25, %365 ]
  %20 = phi ptr [ %11, %14 ], [ %374, %365 ]
  %21 = phi ptr [ %10, %14 ], [ %373, %365 ]
  %22 = phi ptr [ %9, %14 ], [ %372, %365 ]
  %23 = phi ptr [ %8, %14 ], [ %371, %365 ]
  %24 = phi ptr [ %1, %14 ], [ %375, %365 ]
  %25 = add i32 %19, -1
  br i1 %15, label %26, label %187

26:                                               ; preds = %18, %26
  %27 = phi i32 [ %185, %26 ], [ %4, %18 ]
  %28 = phi ptr [ %179, %26 ], [ %20, %18 ]
  %29 = phi ptr [ %174, %26 ], [ %21, %18 ]
  %30 = phi ptr [ %169, %26 ], [ %22, %18 ]
  %31 = phi ptr [ %166, %26 ], [ %23, %18 ]
  %32 = phi ptr [ %184, %26 ], [ %24, %18 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i8, ptr %31, align 1, !tbaa !40
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = load i8, ptr %30, align 1, !tbaa !40
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or disjoint i32 %39, %35
  %41 = getelementptr inbounds i8, ptr %29, i64 1
  %42 = load i8, ptr %29, align 1, !tbaa !40
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or disjoint i32 %40, %44
  %46 = getelementptr inbounds i8, ptr %28, i64 1
  %47 = load i8, ptr %28, align 1, !tbaa !40
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = or disjoint i32 %45, %49
  %51 = getelementptr inbounds i32, ptr %32, i64 1
  store i32 %50, ptr %32, align 4, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %31, i64 2
  %53 = load i8, ptr %33, align 1, !tbaa !40
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8, ptr %30, i64 2
  %56 = load i8, ptr %36, align 1, !tbaa !40
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or disjoint i32 %58, %54
  %60 = getelementptr inbounds i8, ptr %29, i64 2
  %61 = load i8, ptr %41, align 1, !tbaa !40
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or disjoint i32 %59, %63
  %65 = getelementptr inbounds i8, ptr %28, i64 2
  %66 = load i8, ptr %46, align 1, !tbaa !40
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 %67, 24
  %69 = or disjoint i32 %64, %68
  %70 = getelementptr inbounds i32, ptr %32, i64 2
  store i32 %69, ptr %51, align 4, !tbaa !42
  %71 = getelementptr inbounds i8, ptr %31, i64 3
  %72 = load i8, ptr %52, align 1, !tbaa !40
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds i8, ptr %30, i64 3
  %75 = load i8, ptr %55, align 1, !tbaa !40
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or disjoint i32 %77, %73
  %79 = getelementptr inbounds i8, ptr %29, i64 3
  %80 = load i8, ptr %60, align 1, !tbaa !40
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or disjoint i32 %78, %82
  %84 = getelementptr inbounds i8, ptr %28, i64 3
  %85 = load i8, ptr %65, align 1, !tbaa !40
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = or disjoint i32 %83, %87
  %89 = getelementptr inbounds i32, ptr %32, i64 3
  store i32 %88, ptr %70, align 4, !tbaa !42
  %90 = getelementptr inbounds i8, ptr %31, i64 4
  %91 = load i8, ptr %71, align 1, !tbaa !40
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds i8, ptr %30, i64 4
  %94 = load i8, ptr %74, align 1, !tbaa !40
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or disjoint i32 %96, %92
  %98 = getelementptr inbounds i8, ptr %29, i64 4
  %99 = load i8, ptr %79, align 1, !tbaa !40
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %97, %101
  %103 = getelementptr inbounds i8, ptr %28, i64 4
  %104 = load i8, ptr %84, align 1, !tbaa !40
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 %105, 24
  %107 = or disjoint i32 %102, %106
  %108 = getelementptr inbounds i32, ptr %32, i64 4
  store i32 %107, ptr %89, align 4, !tbaa !42
  %109 = getelementptr inbounds i8, ptr %31, i64 5
  %110 = load i8, ptr %90, align 1, !tbaa !40
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds i8, ptr %30, i64 5
  %113 = load i8, ptr %93, align 1, !tbaa !40
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or disjoint i32 %115, %111
  %117 = getelementptr inbounds i8, ptr %29, i64 5
  %118 = load i8, ptr %98, align 1, !tbaa !40
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  %121 = or disjoint i32 %116, %120
  %122 = getelementptr inbounds i8, ptr %28, i64 5
  %123 = load i8, ptr %103, align 1, !tbaa !40
  %124 = zext i8 %123 to i32
  %125 = shl nuw i32 %124, 24
  %126 = or disjoint i32 %121, %125
  %127 = getelementptr inbounds i32, ptr %32, i64 5
  store i32 %126, ptr %108, align 4, !tbaa !42
  %128 = getelementptr inbounds i8, ptr %31, i64 6
  %129 = load i8, ptr %109, align 1, !tbaa !40
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds i8, ptr %30, i64 6
  %132 = load i8, ptr %112, align 1, !tbaa !40
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or disjoint i32 %134, %130
  %136 = getelementptr inbounds i8, ptr %29, i64 6
  %137 = load i8, ptr %117, align 1, !tbaa !40
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 16
  %140 = or disjoint i32 %135, %139
  %141 = getelementptr inbounds i8, ptr %28, i64 6
  %142 = load i8, ptr %122, align 1, !tbaa !40
  %143 = zext i8 %142 to i32
  %144 = shl nuw i32 %143, 24
  %145 = or disjoint i32 %140, %144
  %146 = getelementptr inbounds i32, ptr %32, i64 6
  store i32 %145, ptr %127, align 4, !tbaa !42
  %147 = getelementptr inbounds i8, ptr %31, i64 7
  %148 = load i8, ptr %128, align 1, !tbaa !40
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %30, i64 7
  %151 = load i8, ptr %131, align 1, !tbaa !40
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 8
  %154 = or disjoint i32 %153, %149
  %155 = getelementptr inbounds i8, ptr %29, i64 7
  %156 = load i8, ptr %136, align 1, !tbaa !40
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 16
  %159 = or disjoint i32 %154, %158
  %160 = getelementptr inbounds i8, ptr %28, i64 7
  %161 = load i8, ptr %141, align 1, !tbaa !40
  %162 = zext i8 %161 to i32
  %163 = shl nuw i32 %162, 24
  %164 = or disjoint i32 %159, %163
  %165 = getelementptr inbounds i32, ptr %32, i64 7
  store i32 %164, ptr %146, align 4, !tbaa !42
  %166 = getelementptr inbounds i8, ptr %31, i64 8
  %167 = load i8, ptr %147, align 1, !tbaa !40
  %168 = zext i8 %167 to i32
  %169 = getelementptr inbounds i8, ptr %30, i64 8
  %170 = load i8, ptr %150, align 1, !tbaa !40
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 8
  %173 = or disjoint i32 %172, %168
  %174 = getelementptr inbounds i8, ptr %29, i64 8
  %175 = load i8, ptr %155, align 1, !tbaa !40
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 16
  %178 = or disjoint i32 %173, %177
  %179 = getelementptr inbounds i8, ptr %28, i64 8
  %180 = load i8, ptr %160, align 1, !tbaa !40
  %181 = zext i8 %180 to i32
  %182 = shl nuw i32 %181, 24
  %183 = or disjoint i32 %178, %182
  %184 = getelementptr inbounds i32, ptr %32, i64 8
  store i32 %183, ptr %165, align 4, !tbaa !42
  %185 = add i32 %27, -8
  %186 = icmp ugt i32 %185, 7
  br i1 %186, label %26, label %187, !llvm.loop !115

187:                                              ; preds = %26, %18
  %188 = phi ptr [ %24, %18 ], [ %184, %26 ]
  %189 = phi ptr [ %23, %18 ], [ %166, %26 ]
  %190 = phi ptr [ %22, %18 ], [ %169, %26 ]
  %191 = phi ptr [ %21, %18 ], [ %174, %26 ]
  %192 = phi ptr [ %20, %18 ], [ %179, %26 ]
  %193 = phi i32 [ %4, %18 ], [ %185, %26 ]
  switch i32 %193, label %364 [
    i32 0, label %365
    i32 7, label %194
    i32 6, label %214
    i32 5, label %239
    i32 4, label %264
    i32 3, label %289
    i32 2, label %314
    i32 1, label %339
  ]

194:                                              ; preds = %187
  %195 = getelementptr inbounds i8, ptr %189, i64 1
  %196 = load i8, ptr %189, align 1, !tbaa !40
  %197 = zext i8 %196 to i32
  %198 = getelementptr inbounds i8, ptr %190, i64 1
  %199 = load i8, ptr %190, align 1, !tbaa !40
  %200 = zext i8 %199 to i32
  %201 = shl nuw nsw i32 %200, 8
  %202 = or disjoint i32 %201, %197
  %203 = getelementptr inbounds i8, ptr %191, i64 1
  %204 = load i8, ptr %191, align 1, !tbaa !40
  %205 = zext i8 %204 to i32
  %206 = shl nuw nsw i32 %205, 16
  %207 = or disjoint i32 %202, %206
  %208 = getelementptr inbounds i8, ptr %192, i64 1
  %209 = load i8, ptr %192, align 1, !tbaa !40
  %210 = zext i8 %209 to i32
  %211 = shl nuw i32 %210, 24
  %212 = or disjoint i32 %207, %211
  %213 = getelementptr inbounds i32, ptr %188, i64 1
  store i32 %212, ptr %188, align 4, !tbaa !42
  br label %214

214:                                              ; preds = %187, %194
  %215 = phi ptr [ %213, %194 ], [ %188, %187 ]
  %216 = phi ptr [ %195, %194 ], [ %189, %187 ]
  %217 = phi ptr [ %198, %194 ], [ %190, %187 ]
  %218 = phi ptr [ %203, %194 ], [ %191, %187 ]
  %219 = phi ptr [ %208, %194 ], [ %192, %187 ]
  %220 = getelementptr inbounds i8, ptr %216, i64 1
  %221 = load i8, ptr %216, align 1, !tbaa !40
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds i8, ptr %217, i64 1
  %224 = load i8, ptr %217, align 1, !tbaa !40
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 8
  %227 = or disjoint i32 %226, %222
  %228 = getelementptr inbounds i8, ptr %218, i64 1
  %229 = load i8, ptr %218, align 1, !tbaa !40
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 16
  %232 = or disjoint i32 %227, %231
  %233 = getelementptr inbounds i8, ptr %219, i64 1
  %234 = load i8, ptr %219, align 1, !tbaa !40
  %235 = zext i8 %234 to i32
  %236 = shl nuw i32 %235, 24
  %237 = or disjoint i32 %232, %236
  %238 = getelementptr inbounds i32, ptr %215, i64 1
  store i32 %237, ptr %215, align 4, !tbaa !42
  br label %239

239:                                              ; preds = %187, %214
  %240 = phi ptr [ %238, %214 ], [ %188, %187 ]
  %241 = phi ptr [ %220, %214 ], [ %189, %187 ]
  %242 = phi ptr [ %223, %214 ], [ %190, %187 ]
  %243 = phi ptr [ %228, %214 ], [ %191, %187 ]
  %244 = phi ptr [ %233, %214 ], [ %192, %187 ]
  %245 = getelementptr inbounds i8, ptr %241, i64 1
  %246 = load i8, ptr %241, align 1, !tbaa !40
  %247 = zext i8 %246 to i32
  %248 = getelementptr inbounds i8, ptr %242, i64 1
  %249 = load i8, ptr %242, align 1, !tbaa !40
  %250 = zext i8 %249 to i32
  %251 = shl nuw nsw i32 %250, 8
  %252 = or disjoint i32 %251, %247
  %253 = getelementptr inbounds i8, ptr %243, i64 1
  %254 = load i8, ptr %243, align 1, !tbaa !40
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 16
  %257 = or disjoint i32 %252, %256
  %258 = getelementptr inbounds i8, ptr %244, i64 1
  %259 = load i8, ptr %244, align 1, !tbaa !40
  %260 = zext i8 %259 to i32
  %261 = shl nuw i32 %260, 24
  %262 = or disjoint i32 %257, %261
  %263 = getelementptr inbounds i32, ptr %240, i64 1
  store i32 %262, ptr %240, align 4, !tbaa !42
  br label %264

264:                                              ; preds = %187, %239
  %265 = phi ptr [ %263, %239 ], [ %188, %187 ]
  %266 = phi ptr [ %245, %239 ], [ %189, %187 ]
  %267 = phi ptr [ %248, %239 ], [ %190, %187 ]
  %268 = phi ptr [ %253, %239 ], [ %191, %187 ]
  %269 = phi ptr [ %258, %239 ], [ %192, %187 ]
  %270 = getelementptr inbounds i8, ptr %266, i64 1
  %271 = load i8, ptr %266, align 1, !tbaa !40
  %272 = zext i8 %271 to i32
  %273 = getelementptr inbounds i8, ptr %267, i64 1
  %274 = load i8, ptr %267, align 1, !tbaa !40
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = or disjoint i32 %276, %272
  %278 = getelementptr inbounds i8, ptr %268, i64 1
  %279 = load i8, ptr %268, align 1, !tbaa !40
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 16
  %282 = or disjoint i32 %277, %281
  %283 = getelementptr inbounds i8, ptr %269, i64 1
  %284 = load i8, ptr %269, align 1, !tbaa !40
  %285 = zext i8 %284 to i32
  %286 = shl nuw i32 %285, 24
  %287 = or disjoint i32 %282, %286
  %288 = getelementptr inbounds i32, ptr %265, i64 1
  store i32 %287, ptr %265, align 4, !tbaa !42
  br label %289

289:                                              ; preds = %187, %264
  %290 = phi ptr [ %288, %264 ], [ %188, %187 ]
  %291 = phi ptr [ %270, %264 ], [ %189, %187 ]
  %292 = phi ptr [ %273, %264 ], [ %190, %187 ]
  %293 = phi ptr [ %278, %264 ], [ %191, %187 ]
  %294 = phi ptr [ %283, %264 ], [ %192, %187 ]
  %295 = getelementptr inbounds i8, ptr %291, i64 1
  %296 = load i8, ptr %291, align 1, !tbaa !40
  %297 = zext i8 %296 to i32
  %298 = getelementptr inbounds i8, ptr %292, i64 1
  %299 = load i8, ptr %292, align 1, !tbaa !40
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 8
  %302 = or disjoint i32 %301, %297
  %303 = getelementptr inbounds i8, ptr %293, i64 1
  %304 = load i8, ptr %293, align 1, !tbaa !40
  %305 = zext i8 %304 to i32
  %306 = shl nuw nsw i32 %305, 16
  %307 = or disjoint i32 %302, %306
  %308 = getelementptr inbounds i8, ptr %294, i64 1
  %309 = load i8, ptr %294, align 1, !tbaa !40
  %310 = zext i8 %309 to i32
  %311 = shl nuw i32 %310, 24
  %312 = or disjoint i32 %307, %311
  %313 = getelementptr inbounds i32, ptr %290, i64 1
  store i32 %312, ptr %290, align 4, !tbaa !42
  br label %314

314:                                              ; preds = %187, %289
  %315 = phi ptr [ %313, %289 ], [ %188, %187 ]
  %316 = phi ptr [ %295, %289 ], [ %189, %187 ]
  %317 = phi ptr [ %298, %289 ], [ %190, %187 ]
  %318 = phi ptr [ %303, %289 ], [ %191, %187 ]
  %319 = phi ptr [ %308, %289 ], [ %192, %187 ]
  %320 = getelementptr inbounds i8, ptr %316, i64 1
  %321 = load i8, ptr %316, align 1, !tbaa !40
  %322 = zext i8 %321 to i32
  %323 = getelementptr inbounds i8, ptr %317, i64 1
  %324 = load i8, ptr %317, align 1, !tbaa !40
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, 8
  %327 = or disjoint i32 %326, %322
  %328 = getelementptr inbounds i8, ptr %318, i64 1
  %329 = load i8, ptr %318, align 1, !tbaa !40
  %330 = zext i8 %329 to i32
  %331 = shl nuw nsw i32 %330, 16
  %332 = or disjoint i32 %327, %331
  %333 = getelementptr inbounds i8, ptr %319, i64 1
  %334 = load i8, ptr %319, align 1, !tbaa !40
  %335 = zext i8 %334 to i32
  %336 = shl nuw i32 %335, 24
  %337 = or disjoint i32 %332, %336
  %338 = getelementptr inbounds i32, ptr %315, i64 1
  store i32 %337, ptr %315, align 4, !tbaa !42
  br label %339

339:                                              ; preds = %187, %314
  %340 = phi ptr [ %338, %314 ], [ %188, %187 ]
  %341 = phi ptr [ %320, %314 ], [ %189, %187 ]
  %342 = phi ptr [ %323, %314 ], [ %190, %187 ]
  %343 = phi ptr [ %328, %314 ], [ %191, %187 ]
  %344 = phi ptr [ %333, %314 ], [ %192, %187 ]
  %345 = getelementptr inbounds i8, ptr %341, i64 1
  %346 = load i8, ptr %341, align 1, !tbaa !40
  %347 = zext i8 %346 to i32
  %348 = getelementptr inbounds i8, ptr %342, i64 1
  %349 = load i8, ptr %342, align 1, !tbaa !40
  %350 = zext i8 %349 to i32
  %351 = shl nuw nsw i32 %350, 8
  %352 = or disjoint i32 %351, %347
  %353 = getelementptr inbounds i8, ptr %343, i64 1
  %354 = load i8, ptr %343, align 1, !tbaa !40
  %355 = zext i8 %354 to i32
  %356 = shl nuw nsw i32 %355, 16
  %357 = or disjoint i32 %352, %356
  %358 = getelementptr inbounds i8, ptr %344, i64 1
  %359 = load i8, ptr %344, align 1, !tbaa !40
  %360 = zext i8 %359 to i32
  %361 = shl nuw i32 %360, 24
  %362 = or disjoint i32 %357, %361
  %363 = getelementptr inbounds i32, ptr %340, i64 1
  store i32 %362, ptr %340, align 4, !tbaa !42
  br label %365

364:                                              ; preds = %187
  unreachable

365:                                              ; preds = %187, %339
  %366 = phi ptr [ %363, %339 ], [ %188, %187 ]
  %367 = phi ptr [ %345, %339 ], [ %189, %187 ]
  %368 = phi ptr [ %348, %339 ], [ %190, %187 ]
  %369 = phi ptr [ %353, %339 ], [ %191, %187 ]
  %370 = phi ptr [ %358, %339 ], [ %192, %187 ]
  %371 = getelementptr inbounds i8, ptr %367, i64 %16
  %372 = getelementptr inbounds i8, ptr %368, i64 %16
  %373 = getelementptr inbounds i8, ptr %369, i64 %16
  %374 = getelementptr inbounds i8, ptr %370, i64 %16
  %375 = getelementptr inbounds i32, ptr %366, i64 %17
  %376 = icmp eq i32 %25, 0
  br i1 %376, label %377, label %18, !llvm.loop !116

377:                                              ; preds = %365, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBUAseparate8bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %72, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %60
  %19 = phi i32 [ %5, %14 ], [ %25, %60 ]
  %20 = phi ptr [ %1, %14 ], [ %70, %60 ]
  %21 = phi ptr [ %8, %14 ], [ %66, %60 ]
  %22 = phi ptr [ %11, %14 ], [ %69, %60 ]
  %23 = phi ptr [ %10, %14 ], [ %68, %60 ]
  %24 = phi ptr [ %9, %14 ], [ %67, %60 ]
  %25 = add i32 %19, -1
  br i1 %15, label %60, label %26

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %58, %26 ], [ %20, %18 ]
  %28 = phi i32 [ %33, %26 ], [ %4, %18 ]
  %29 = phi ptr [ %37, %26 ], [ %21, %18 ]
  %30 = phi ptr [ %34, %26 ], [ %22, %18 ]
  %31 = phi ptr [ %47, %26 ], [ %23, %18 ]
  %32 = phi ptr [ %42, %26 ], [ %24, %18 ]
  %33 = add i32 %28, -1
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %30, align 1, !tbaa !40
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %29, i64 1
  %38 = load i8, ptr %29, align 1, !tbaa !40
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, %36
  %41 = udiv i32 %40, 255
  %42 = getelementptr inbounds i8, ptr %32, i64 1
  %43 = load i8, ptr %32, align 1, !tbaa !40
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, %36
  %46 = udiv i32 %45, 255
  %47 = getelementptr inbounds i8, ptr %31, i64 1
  %48 = load i8, ptr %31, align 1, !tbaa !40
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, %36
  %51 = udiv i32 %50, 255
  %52 = shl nuw nsw i32 %46, 8
  %53 = shl nuw nsw i32 %51, 16
  %54 = shl nuw i32 %36, 24
  %55 = or disjoint i32 %41, %54
  %56 = or i32 %55, %52
  %57 = or i32 %56, %53
  %58 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %57, ptr %27, align 4, !tbaa !42
  %59 = icmp eq i32 %33, 0
  br i1 %59, label %60, label %26, !llvm.loop !117

60:                                               ; preds = %26, %18
  %61 = phi ptr [ %24, %18 ], [ %42, %26 ]
  %62 = phi ptr [ %23, %18 ], [ %47, %26 ]
  %63 = phi ptr [ %22, %18 ], [ %34, %26 ]
  %64 = phi ptr [ %21, %18 ], [ %37, %26 ]
  %65 = phi ptr [ %20, %18 ], [ %58, %26 ]
  %66 = getelementptr inbounds i8, ptr %64, i64 %16
  %67 = getelementptr inbounds i8, ptr %61, i64 %16
  %68 = getelementptr inbounds i8, ptr %62, i64 %16
  %69 = getelementptr inbounds i8, ptr %63, i64 %16
  %70 = getelementptr inbounds i32, ptr %65, i64 %17
  %71 = icmp eq i32 %25, 0
  br i1 %71, label %72, label %18, !llvm.loop !118

72:                                               ; preds = %60, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBseparate8bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture readnone %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %306, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i32 %4, 7
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %296
  %19 = phi i32 [ %5, %14 ], [ %24, %296 ]
  %20 = phi ptr [ %1, %14 ], [ %304, %296 ]
  %21 = phi ptr [ %10, %14 ], [ %303, %296 ]
  %22 = phi ptr [ %9, %14 ], [ %302, %296 ]
  %23 = phi ptr [ %8, %14 ], [ %301, %296 ]
  %24 = add i32 %19, -1
  br i1 %15, label %25, label %153

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %151, %25 ], [ %4, %18 ]
  %27 = phi ptr [ %150, %25 ], [ %20, %18 ]
  %28 = phi ptr [ %143, %25 ], [ %21, %18 ]
  %29 = phi ptr [ %139, %25 ], [ %22, %18 ]
  %30 = phi ptr [ %136, %25 ], [ %23, %18 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !40
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds i8, ptr %29, i64 1
  %35 = load i8, ptr %29, align 1, !tbaa !40
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = getelementptr inbounds i8, ptr %28, i64 1
  %39 = load i8, ptr %28, align 1, !tbaa !40
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %37, %33
  %43 = or disjoint i32 %42, %41
  %44 = or disjoint i32 %43, -16777216
  %45 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %44, ptr %27, align 4, !tbaa !42
  %46 = getelementptr inbounds i8, ptr %30, i64 2
  %47 = load i8, ptr %31, align 1, !tbaa !40
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %29, i64 2
  %50 = load i8, ptr %34, align 1, !tbaa !40
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = getelementptr inbounds i8, ptr %28, i64 2
  %54 = load i8, ptr %38, align 1, !tbaa !40
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or disjoint i32 %52, %48
  %58 = or disjoint i32 %57, %56
  %59 = or disjoint i32 %58, -16777216
  %60 = getelementptr inbounds i32, ptr %27, i64 2
  store i32 %59, ptr %45, align 4, !tbaa !42
  %61 = getelementptr inbounds i8, ptr %30, i64 3
  %62 = load i8, ptr %46, align 1, !tbaa !40
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds i8, ptr %29, i64 3
  %65 = load i8, ptr %49, align 1, !tbaa !40
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = getelementptr inbounds i8, ptr %28, i64 3
  %69 = load i8, ptr %53, align 1, !tbaa !40
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 16
  %72 = or disjoint i32 %67, %63
  %73 = or disjoint i32 %72, %71
  %74 = or disjoint i32 %73, -16777216
  %75 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %74, ptr %60, align 4, !tbaa !42
  %76 = getelementptr inbounds i8, ptr %30, i64 4
  %77 = load i8, ptr %61, align 1, !tbaa !40
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds i8, ptr %29, i64 4
  %80 = load i8, ptr %64, align 1, !tbaa !40
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = getelementptr inbounds i8, ptr %28, i64 4
  %84 = load i8, ptr %68, align 1, !tbaa !40
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 16
  %87 = or disjoint i32 %82, %78
  %88 = or disjoint i32 %87, %86
  %89 = or disjoint i32 %88, -16777216
  %90 = getelementptr inbounds i32, ptr %27, i64 4
  store i32 %89, ptr %75, align 4, !tbaa !42
  %91 = getelementptr inbounds i8, ptr %30, i64 5
  %92 = load i8, ptr %76, align 1, !tbaa !40
  %93 = zext i8 %92 to i32
  %94 = getelementptr inbounds i8, ptr %29, i64 5
  %95 = load i8, ptr %79, align 1, !tbaa !40
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = getelementptr inbounds i8, ptr %28, i64 5
  %99 = load i8, ptr %83, align 1, !tbaa !40
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %97, %93
  %103 = or disjoint i32 %102, %101
  %104 = or disjoint i32 %103, -16777216
  %105 = getelementptr inbounds i32, ptr %27, i64 5
  store i32 %104, ptr %90, align 4, !tbaa !42
  %106 = getelementptr inbounds i8, ptr %30, i64 6
  %107 = load i8, ptr %91, align 1, !tbaa !40
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds i8, ptr %29, i64 6
  %110 = load i8, ptr %94, align 1, !tbaa !40
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = getelementptr inbounds i8, ptr %28, i64 6
  %114 = load i8, ptr %98, align 1, !tbaa !40
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = or disjoint i32 %112, %108
  %118 = or disjoint i32 %117, %116
  %119 = or disjoint i32 %118, -16777216
  %120 = getelementptr inbounds i32, ptr %27, i64 6
  store i32 %119, ptr %105, align 4, !tbaa !42
  %121 = getelementptr inbounds i8, ptr %30, i64 7
  %122 = load i8, ptr %106, align 1, !tbaa !40
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds i8, ptr %29, i64 7
  %125 = load i8, ptr %109, align 1, !tbaa !40
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 8
  %128 = getelementptr inbounds i8, ptr %28, i64 7
  %129 = load i8, ptr %113, align 1, !tbaa !40
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 16
  %132 = or disjoint i32 %127, %123
  %133 = or disjoint i32 %132, %131
  %134 = or disjoint i32 %133, -16777216
  %135 = getelementptr inbounds i32, ptr %27, i64 7
  store i32 %134, ptr %120, align 4, !tbaa !42
  %136 = getelementptr inbounds i8, ptr %30, i64 8
  %137 = load i8, ptr %121, align 1, !tbaa !40
  %138 = zext i8 %137 to i32
  %139 = getelementptr inbounds i8, ptr %29, i64 8
  %140 = load i8, ptr %124, align 1, !tbaa !40
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = getelementptr inbounds i8, ptr %28, i64 8
  %144 = load i8, ptr %128, align 1, !tbaa !40
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 16
  %147 = or disjoint i32 %142, %138
  %148 = or disjoint i32 %147, %146
  %149 = or disjoint i32 %148, -16777216
  %150 = getelementptr inbounds i32, ptr %27, i64 8
  store i32 %149, ptr %135, align 4, !tbaa !42
  %151 = add i32 %26, -8
  %152 = icmp ugt i32 %151, 7
  br i1 %152, label %25, label %153, !llvm.loop !119

153:                                              ; preds = %25, %18
  %154 = phi ptr [ %23, %18 ], [ %136, %25 ]
  %155 = phi ptr [ %22, %18 ], [ %139, %25 ]
  %156 = phi ptr [ %21, %18 ], [ %143, %25 ]
  %157 = phi ptr [ %20, %18 ], [ %150, %25 ]
  %158 = phi i32 [ %4, %18 ], [ %151, %25 ]
  switch i32 %158, label %295 [
    i32 0, label %296
    i32 7, label %159
    i32 6, label %175
    i32 5, label %195
    i32 4, label %215
    i32 3, label %235
    i32 2, label %255
    i32 1, label %275
  ]

159:                                              ; preds = %153
  %160 = getelementptr inbounds i8, ptr %154, i64 1
  %161 = load i8, ptr %154, align 1, !tbaa !40
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds i8, ptr %155, i64 1
  %164 = load i8, ptr %155, align 1, !tbaa !40
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 8
  %167 = getelementptr inbounds i8, ptr %156, i64 1
  %168 = load i8, ptr %156, align 1, !tbaa !40
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 16
  %171 = or disjoint i32 %166, %162
  %172 = or disjoint i32 %171, %170
  %173 = or disjoint i32 %172, -16777216
  %174 = getelementptr inbounds i32, ptr %157, i64 1
  store i32 %173, ptr %157, align 4, !tbaa !42
  br label %175

175:                                              ; preds = %153, %159
  %176 = phi ptr [ %160, %159 ], [ %154, %153 ]
  %177 = phi ptr [ %163, %159 ], [ %155, %153 ]
  %178 = phi ptr [ %167, %159 ], [ %156, %153 ]
  %179 = phi ptr [ %174, %159 ], [ %157, %153 ]
  %180 = getelementptr inbounds i8, ptr %176, i64 1
  %181 = load i8, ptr %176, align 1, !tbaa !40
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds i8, ptr %177, i64 1
  %184 = load i8, ptr %177, align 1, !tbaa !40
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = getelementptr inbounds i8, ptr %178, i64 1
  %188 = load i8, ptr %178, align 1, !tbaa !40
  %189 = zext i8 %188 to i32
  %190 = shl nuw nsw i32 %189, 16
  %191 = or disjoint i32 %186, %182
  %192 = or disjoint i32 %191, %190
  %193 = or disjoint i32 %192, -16777216
  %194 = getelementptr inbounds i32, ptr %179, i64 1
  store i32 %193, ptr %179, align 4, !tbaa !42
  br label %195

195:                                              ; preds = %153, %175
  %196 = phi ptr [ %180, %175 ], [ %154, %153 ]
  %197 = phi ptr [ %183, %175 ], [ %155, %153 ]
  %198 = phi ptr [ %187, %175 ], [ %156, %153 ]
  %199 = phi ptr [ %194, %175 ], [ %157, %153 ]
  %200 = getelementptr inbounds i8, ptr %196, i64 1
  %201 = load i8, ptr %196, align 1, !tbaa !40
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds i8, ptr %197, i64 1
  %204 = load i8, ptr %197, align 1, !tbaa !40
  %205 = zext i8 %204 to i32
  %206 = shl nuw nsw i32 %205, 8
  %207 = getelementptr inbounds i8, ptr %198, i64 1
  %208 = load i8, ptr %198, align 1, !tbaa !40
  %209 = zext i8 %208 to i32
  %210 = shl nuw nsw i32 %209, 16
  %211 = or disjoint i32 %206, %202
  %212 = or disjoint i32 %211, %210
  %213 = or disjoint i32 %212, -16777216
  %214 = getelementptr inbounds i32, ptr %199, i64 1
  store i32 %213, ptr %199, align 4, !tbaa !42
  br label %215

215:                                              ; preds = %153, %195
  %216 = phi ptr [ %200, %195 ], [ %154, %153 ]
  %217 = phi ptr [ %203, %195 ], [ %155, %153 ]
  %218 = phi ptr [ %207, %195 ], [ %156, %153 ]
  %219 = phi ptr [ %214, %195 ], [ %157, %153 ]
  %220 = getelementptr inbounds i8, ptr %216, i64 1
  %221 = load i8, ptr %216, align 1, !tbaa !40
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds i8, ptr %217, i64 1
  %224 = load i8, ptr %217, align 1, !tbaa !40
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 8
  %227 = getelementptr inbounds i8, ptr %218, i64 1
  %228 = load i8, ptr %218, align 1, !tbaa !40
  %229 = zext i8 %228 to i32
  %230 = shl nuw nsw i32 %229, 16
  %231 = or disjoint i32 %226, %222
  %232 = or disjoint i32 %231, %230
  %233 = or disjoint i32 %232, -16777216
  %234 = getelementptr inbounds i32, ptr %219, i64 1
  store i32 %233, ptr %219, align 4, !tbaa !42
  br label %235

235:                                              ; preds = %153, %215
  %236 = phi ptr [ %220, %215 ], [ %154, %153 ]
  %237 = phi ptr [ %223, %215 ], [ %155, %153 ]
  %238 = phi ptr [ %227, %215 ], [ %156, %153 ]
  %239 = phi ptr [ %234, %215 ], [ %157, %153 ]
  %240 = getelementptr inbounds i8, ptr %236, i64 1
  %241 = load i8, ptr %236, align 1, !tbaa !40
  %242 = zext i8 %241 to i32
  %243 = getelementptr inbounds i8, ptr %237, i64 1
  %244 = load i8, ptr %237, align 1, !tbaa !40
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 8
  %247 = getelementptr inbounds i8, ptr %238, i64 1
  %248 = load i8, ptr %238, align 1, !tbaa !40
  %249 = zext i8 %248 to i32
  %250 = shl nuw nsw i32 %249, 16
  %251 = or disjoint i32 %246, %242
  %252 = or disjoint i32 %251, %250
  %253 = or disjoint i32 %252, -16777216
  %254 = getelementptr inbounds i32, ptr %239, i64 1
  store i32 %253, ptr %239, align 4, !tbaa !42
  br label %255

255:                                              ; preds = %153, %235
  %256 = phi ptr [ %240, %235 ], [ %154, %153 ]
  %257 = phi ptr [ %243, %235 ], [ %155, %153 ]
  %258 = phi ptr [ %247, %235 ], [ %156, %153 ]
  %259 = phi ptr [ %254, %235 ], [ %157, %153 ]
  %260 = getelementptr inbounds i8, ptr %256, i64 1
  %261 = load i8, ptr %256, align 1, !tbaa !40
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds i8, ptr %257, i64 1
  %264 = load i8, ptr %257, align 1, !tbaa !40
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 8
  %267 = getelementptr inbounds i8, ptr %258, i64 1
  %268 = load i8, ptr %258, align 1, !tbaa !40
  %269 = zext i8 %268 to i32
  %270 = shl nuw nsw i32 %269, 16
  %271 = or disjoint i32 %266, %262
  %272 = or disjoint i32 %271, %270
  %273 = or disjoint i32 %272, -16777216
  %274 = getelementptr inbounds i32, ptr %259, i64 1
  store i32 %273, ptr %259, align 4, !tbaa !42
  br label %275

275:                                              ; preds = %153, %255
  %276 = phi ptr [ %260, %255 ], [ %154, %153 ]
  %277 = phi ptr [ %263, %255 ], [ %155, %153 ]
  %278 = phi ptr [ %267, %255 ], [ %156, %153 ]
  %279 = phi ptr [ %274, %255 ], [ %157, %153 ]
  %280 = getelementptr inbounds i8, ptr %276, i64 1
  %281 = load i8, ptr %276, align 1, !tbaa !40
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds i8, ptr %277, i64 1
  %284 = load i8, ptr %277, align 1, !tbaa !40
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 8
  %287 = getelementptr inbounds i8, ptr %278, i64 1
  %288 = load i8, ptr %278, align 1, !tbaa !40
  %289 = zext i8 %288 to i32
  %290 = shl nuw nsw i32 %289, 16
  %291 = or disjoint i32 %286, %282
  %292 = or disjoint i32 %291, %290
  %293 = or disjoint i32 %292, -16777216
  %294 = getelementptr inbounds i32, ptr %279, i64 1
  store i32 %293, ptr %279, align 4, !tbaa !42
  br label %296

295:                                              ; preds = %153
  unreachable

296:                                              ; preds = %153, %275
  %297 = phi ptr [ %280, %275 ], [ %154, %153 ]
  %298 = phi ptr [ %283, %275 ], [ %155, %153 ]
  %299 = phi ptr [ %287, %275 ], [ %156, %153 ]
  %300 = phi ptr [ %294, %275 ], [ %157, %153 ]
  %301 = getelementptr inbounds i8, ptr %297, i64 %16
  %302 = getelementptr inbounds i8, ptr %298, i64 %16
  %303 = getelementptr inbounds i8, ptr %299, i64 %16
  %304 = getelementptr inbounds i32, ptr %300, i64 %17
  %305 = icmp eq i32 %24, 0
  br i1 %305, label %306, label %18, !llvm.loop !120

306:                                              ; preds = %296, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBseparate8bitMaptile(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture readnone %11) #6 {
  %13 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %69, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %4, 0
  %18 = sext i32 %6 to i64
  %19 = sext i32 %7 to i64
  br label %20

20:                                               ; preds = %16, %59
  %21 = phi i32 [ %5, %16 ], [ %26, %59 ]
  %22 = phi ptr [ %1, %16 ], [ %67, %59 ]
  %23 = phi ptr [ %10, %16 ], [ %66, %59 ]
  %24 = phi ptr [ %9, %16 ], [ %65, %59 ]
  %25 = phi ptr [ %8, %16 ], [ %64, %59 ]
  %26 = add i32 %21, -1
  br i1 %17, label %59, label %27

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %56, %27 ], [ %22, %20 ]
  %29 = phi i32 [ %57, %27 ], [ %4, %20 ]
  %30 = phi ptr [ %46, %27 ], [ %23, %20 ]
  %31 = phi ptr [ %39, %27 ], [ %24, %20 ]
  %32 = phi ptr [ %33, %27 ], [ %25, %20 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !40
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, ptr %14, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !40
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %31, i64 1
  %40 = load i8, ptr %31, align 1, !tbaa !40
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, ptr %14, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !40
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = getelementptr inbounds i8, ptr %30, i64 1
  %47 = load i8, ptr %30, align 1, !tbaa !40
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, ptr %14, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !40
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or disjoint i32 %45, %38
  %54 = or disjoint i32 %53, %52
  %55 = or disjoint i32 %54, -16777216
  %56 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %55, ptr %28, align 4, !tbaa !42
  %57 = add i32 %29, -1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %27, !llvm.loop !121

59:                                               ; preds = %27, %20
  %60 = phi ptr [ %25, %20 ], [ %33, %27 ]
  %61 = phi ptr [ %24, %20 ], [ %39, %27 ]
  %62 = phi ptr [ %23, %20 ], [ %46, %27 ]
  %63 = phi ptr [ %22, %20 ], [ %56, %27 ]
  %64 = getelementptr inbounds i8, ptr %60, i64 %18
  %65 = getelementptr inbounds i8, ptr %61, i64 %18
  %66 = getelementptr inbounds i8, ptr %62, i64 %18
  %67 = getelementptr inbounds i32, ptr %63, i64 %19
  %68 = icmp eq i32 %26, 0
  br i1 %68, label %69, label %20, !llvm.loop !122

69:                                               ; preds = %59, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBseparate16bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture readnone %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %49
  %19 = phi i32 [ %5, %14 ], [ %24, %49 ]
  %20 = phi ptr [ %10, %14 ], [ %56, %49 ]
  %21 = phi ptr [ %9, %14 ], [ %55, %49 ]
  %22 = phi ptr [ %8, %14 ], [ %54, %49 ]
  %23 = phi ptr [ %1, %14 ], [ %57, %49 ]
  %24 = add i32 %19, -1
  br i1 %15, label %49, label %25

25:                                               ; preds = %18, %25
  %26 = phi ptr [ %39, %25 ], [ %20, %18 ]
  %27 = phi ptr [ %34, %25 ], [ %21, %18 ]
  %28 = phi ptr [ %31, %25 ], [ %22, %18 ]
  %29 = phi ptr [ %46, %25 ], [ %23, %18 ]
  %30 = phi i32 [ %47, %25 ], [ 0, %18 ]
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  %32 = load i16, ptr %28, align 2, !tbaa !16
  %33 = lshr i16 %32, 8
  %34 = getelementptr inbounds i16, ptr %27, i64 1
  %35 = load i16, ptr %27, align 2, !tbaa !16
  %36 = and i16 %35, -256
  %37 = or disjoint i16 %36, %33
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %26, i64 1
  %40 = load i16, ptr %26, align 2, !tbaa !16
  %41 = lshr i16 %40, 8
  %42 = zext nneg i16 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or disjoint i32 %43, %38
  %45 = or disjoint i32 %44, -16777216
  %46 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %45, ptr %29, align 4, !tbaa !42
  %47 = add nuw i32 %30, 1
  %48 = icmp eq i32 %47, %4
  br i1 %48, label %49, label %25, !llvm.loop !123

49:                                               ; preds = %25, %18
  %50 = phi ptr [ %23, %18 ], [ %46, %25 ]
  %51 = phi ptr [ %22, %18 ], [ %31, %25 ]
  %52 = phi ptr [ %21, %18 ], [ %34, %25 ]
  %53 = phi ptr [ %20, %18 ], [ %39, %25 ]
  %54 = getelementptr inbounds i16, ptr %51, i64 %16
  %55 = getelementptr inbounds i16, ptr %52, i64 %16
  %56 = getelementptr inbounds i16, ptr %53, i64 %16
  %57 = getelementptr inbounds i32, ptr %50, i64 %17
  %58 = icmp eq i32 %24, 0
  br i1 %58, label %59, label %18, !llvm.loop !124

59:                                               ; preds = %49, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBAAseparate16bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %68, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %56
  %19 = phi i32 [ %5, %14 ], [ %25, %56 ]
  %20 = phi ptr [ %11, %14 ], [ %65, %56 ]
  %21 = phi ptr [ %10, %14 ], [ %64, %56 ]
  %22 = phi ptr [ %9, %14 ], [ %63, %56 ]
  %23 = phi ptr [ %8, %14 ], [ %62, %56 ]
  %24 = phi ptr [ %1, %14 ], [ %66, %56 ]
  %25 = add i32 %19, -1
  br i1 %15, label %56, label %26

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %47, %26 ], [ %20, %18 ]
  %28 = phi ptr [ %41, %26 ], [ %21, %18 ]
  %29 = phi ptr [ %36, %26 ], [ %22, %18 ]
  %30 = phi ptr [ %33, %26 ], [ %23, %18 ]
  %31 = phi ptr [ %53, %26 ], [ %24, %18 ]
  %32 = phi i32 [ %54, %26 ], [ 0, %18 ]
  %33 = getelementptr inbounds i16, ptr %30, i64 1
  %34 = load i16, ptr %30, align 2, !tbaa !16
  %35 = lshr i16 %34, 8
  %36 = getelementptr inbounds i16, ptr %29, i64 1
  %37 = load i16, ptr %29, align 2, !tbaa !16
  %38 = and i16 %37, -256
  %39 = or disjoint i16 %38, %35
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i16, ptr %28, i64 1
  %42 = load i16, ptr %28, align 2, !tbaa !16
  %43 = lshr i16 %42, 8
  %44 = zext nneg i16 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = or disjoint i32 %45, %40
  %47 = getelementptr inbounds i16, ptr %27, i64 1
  %48 = load i16, ptr %27, align 2, !tbaa !16
  %49 = lshr i16 %48, 8
  %50 = zext nneg i16 %49 to i32
  %51 = shl nuw i32 %50, 24
  %52 = or disjoint i32 %46, %51
  %53 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %52, ptr %31, align 4, !tbaa !42
  %54 = add nuw i32 %32, 1
  %55 = icmp eq i32 %54, %4
  br i1 %55, label %56, label %26, !llvm.loop !125

56:                                               ; preds = %26, %18
  %57 = phi ptr [ %24, %18 ], [ %53, %26 ]
  %58 = phi ptr [ %23, %18 ], [ %33, %26 ]
  %59 = phi ptr [ %22, %18 ], [ %36, %26 ]
  %60 = phi ptr [ %21, %18 ], [ %41, %26 ]
  %61 = phi ptr [ %20, %18 ], [ %47, %26 ]
  %62 = getelementptr inbounds i16, ptr %58, i64 %16
  %63 = getelementptr inbounds i16, ptr %59, i64 %16
  %64 = getelementptr inbounds i16, ptr %60, i64 %16
  %65 = getelementptr inbounds i16, ptr %61, i64 %16
  %66 = getelementptr inbounds i32, ptr %57, i64 %17
  %67 = icmp eq i32 %25, 0
  br i1 %67, label %68, label %18, !llvm.loop !126

68:                                               ; preds = %56, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putRGBUAseparate16bittile(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11) #6 {
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  %16 = sext i32 %6 to i64
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %14, %61
  %19 = phi i32 [ %5, %14 ], [ %25, %61 ]
  %20 = phi ptr [ %1, %14 ], [ %71, %61 ]
  %21 = phi ptr [ %8, %14 ], [ %67, %61 ]
  %22 = phi ptr [ %11, %14 ], [ %70, %61 ]
  %23 = phi ptr [ %10, %14 ], [ %69, %61 ]
  %24 = phi ptr [ %9, %14 ], [ %68, %61 ]
  %25 = add i32 %19, -1
  br i1 %15, label %61, label %26

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %59, %26 ], [ %20, %18 ]
  %28 = phi i32 [ %33, %26 ], [ %4, %18 ]
  %29 = phi ptr [ %38, %26 ], [ %21, %18 ]
  %30 = phi ptr [ %34, %26 ], [ %22, %18 ]
  %31 = phi ptr [ %48, %26 ], [ %23, %18 ]
  %32 = phi ptr [ %43, %26 ], [ %24, %18 ]
  %33 = add i32 %28, -1
  %34 = getelementptr inbounds i16, ptr %30, i64 1
  %35 = load i16, ptr %30, align 2, !tbaa !16
  %36 = lshr i16 %35, 4
  %37 = zext nneg i16 %36 to i32
  %38 = getelementptr inbounds i16, ptr %29, i64 1
  %39 = load i16, ptr %29, align 2, !tbaa !16
  %40 = zext i16 %39 to i32
  %41 = mul nuw nsw i32 %40, %37
  %42 = udiv i32 %41, 69375
  %43 = getelementptr inbounds i16, ptr %32, i64 1
  %44 = load i16, ptr %32, align 2, !tbaa !16
  %45 = zext i16 %44 to i32
  %46 = mul nuw nsw i32 %45, %37
  %47 = udiv i32 %46, 69375
  %48 = getelementptr inbounds i16, ptr %31, i64 1
  %49 = load i16, ptr %31, align 2, !tbaa !16
  %50 = zext i16 %49 to i32
  %51 = mul nuw nsw i32 %50, %37
  %52 = udiv i32 %51, 69375
  %53 = shl nuw nsw i32 %47, 8
  %54 = shl nuw nsw i32 %52, 16
  %55 = shl i32 %37, 24
  %56 = or disjoint i32 %42, %55
  %57 = or i32 %56, %53
  %58 = or i32 %57, %54
  %59 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %58, ptr %27, align 4, !tbaa !42
  %60 = icmp eq i32 %33, 0
  br i1 %60, label %61, label %26, !llvm.loop !127

61:                                               ; preds = %26, %18
  %62 = phi ptr [ %24, %18 ], [ %43, %26 ]
  %63 = phi ptr [ %23, %18 ], [ %48, %26 ]
  %64 = phi ptr [ %22, %18 ], [ %34, %26 ]
  %65 = phi ptr [ %21, %18 ], [ %38, %26 ]
  %66 = phi ptr [ %20, %18 ], [ %59, %26 ]
  %67 = getelementptr inbounds i16, ptr %65, i64 %16
  %68 = getelementptr inbounds i16, ptr %62, i64 %16
  %69 = getelementptr inbounds i16, ptr %63, i64 %16
  %70 = getelementptr inbounds i16, ptr %64, i64 %16
  %71 = getelementptr inbounds i32, ptr %66, i64 %17
  %72 = icmp eq i32 %25, 0
  br i1 %72, label %73, label %18, !llvm.loop !128

73:                                               ; preds = %61, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 52}
!6 = !{!"", !7, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52, !10, i64 54, !10, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !9, i64 68, !10, i64 72, !10, i64 74, !11, i64 80, !11, i64 88, !12, i64 96, !12, i64 100, !10, i64 104, !10, i64 106, !12, i64 108, !12, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !10, i64 148, !13, i64 152, !11, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !9, i64 240, !9, i64 244, !13, i64 248, !13, i64 256, !10, i64 264, !13, i64 272, !13, i64 280, !7, i64 288, !10, i64 292, !13, i64 296, !13, i64 304, !13, i64 312, !7, i64 320, !10, i64 344, !10, i64 346, !7, i64 348, !9, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !13, i64 384, !9, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !9, i64 428, !13, i64 432, !13, i64 440, !12, i64 448, !13, i64 456, !13, i64 464}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!6, !10, i64 66}
!15 = !{!6, !10, i64 148}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !10, i64 106}
!18 = !{!6, !10, i64 344}
!19 = !{!6, !10, i64 56}
!20 = !{!21, !13, i64 80}
!21 = !{!"_TIFFRGBAImage", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !9, i64 112, !9, i64 116}
!22 = !{!21, !13, i64 88}
!23 = !{!21, !13, i64 96}
!24 = !{!21, !13, i64 104}
!25 = !{!21, !13, i64 40}
!26 = !{!21, !13, i64 48}
!27 = !{!21, !13, i64 56}
!28 = !{!21, !9, i64 112}
!29 = !{!21, !9, i64 116}
!30 = !{!21, !13, i64 0}
!31 = !{!21, !9, i64 8}
!32 = !{!21, !10, i64 28}
!33 = !{!21, !9, i64 16}
!34 = !{!13, !13, i64 0}
!35 = !{!21, !10, i64 30}
!36 = !{!21, !10, i64 34}
!37 = !{!21, !9, i64 12}
!38 = !{!21, !13, i64 64}
!39 = !{i32 0, i32 2}
!40 = !{!7, !7, i64 0}
!41 = !{!21, !10, i64 32}
!42 = !{!9, !9, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !44}
!46 = !{!21, !9, i64 20}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !44}
!49 = distinct !{!49, !44}
!50 = distinct !{!50, !44}
!51 = !{!21, !9, i64 24}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !44}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = distinct !{!61, !44}
!62 = distinct !{!62, !44}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = !{!95, !13, i64 0}
!95 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40}
!96 = distinct !{!96, !44}
!97 = !{!12, !12, i64 0}
!98 = !{!95, !13, i64 8}
!99 = !{!95, !13, i64 16}
!100 = !{!95, !13, i64 24}
!101 = !{!95, !13, i64 32}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !44}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !44}
