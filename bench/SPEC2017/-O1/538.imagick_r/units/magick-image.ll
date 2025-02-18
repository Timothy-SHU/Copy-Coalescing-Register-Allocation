; ModuleID = 'magick/image.c'
source_filename = "magick/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }

@BackgroundColor = dso_local constant [8 x i8] c"#ffffff\00", align 1
@BorderColor = dso_local constant [8 x i8] c"#dfdfdf\00", align 1
@DefaultTileFrame = dso_local local_unnamed_addr constant [10 x i8] c"15x15+3+3\00", align 1
@DefaultTileGeometry = dso_local local_unnamed_addr constant [13 x i8] c"120x120+4+3>\00", align 1
@DefaultTileLabel = dso_local local_unnamed_addr constant [9 x i8] c"%f\0A%G\0A%b\00", align 1
@ForegroundColor = dso_local local_unnamed_addr constant [5 x i8] c"#000\00", align 1
@LoadImageTag = dso_local local_unnamed_addr constant [11 x i8] c"Load/Image\00", align 1
@LoadImagesTag = dso_local local_unnamed_addr constant [12 x i8] c"Load/Images\00", align 1
@MatteColor = dso_local constant [8 x i8] c"#bdbdbd\00", align 1
@PSDensityGeometry = dso_local local_unnamed_addr constant [10 x i8] c"72.0x72.0\00", align 1
@PSPageGeometry = dso_local local_unnamed_addr constant [8 x i8] c"612x792\00", align 1
@SaveImageTag = dso_local local_unnamed_addr constant [11 x i8] c"Save/Image\00", align 1
@SaveImagesTag = dso_local local_unnamed_addr constant [12 x i8] c"Save/Images\00", align 1
@TransparentColor = dso_local constant [10 x i8] c"#00000000\00", align 1
@DefaultResolution = dso_local local_unnamed_addr constant double 7.200000e+01, align 8
@.str = private unnamed_addr constant [15 x i8] c"magick/image.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dispose\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Append/Image\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"8BIM:1999,2998:%s\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"NoClipPathDefined\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"8BIM:1999,2998:%s\0APS\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"filename:\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@SetImageInfo.format_type_formats = internal unnamed_addr constant [18 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null], align 16
@.str.18 = private unnamed_addr constant [10 x i8] c"AUTOTRACE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"BROWSE\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"DCRAW\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"EPHEMERAL\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"LAUNCH\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"MPEG:DECODE\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MPEG:ENCODE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"PS:ALPHA\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"PS:CMYK\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"PS:COLOR\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"PS:GRAY\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"PS:MONO\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"WIN\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Smush/Image\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"date:create\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"date:modify\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"png:exclude-chunk\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"EXIF,iCCP,iTXt,sRGB,tEXt,zCCP,zTXt,date\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"black-point-compensation\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"blue-primary\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"bordercolor\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"fuzz\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"green-primary\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"interlace\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"mattecolor\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"orient\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"red-primary\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"tile-offset\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"transparent-color\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"white-point\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2) #18
  %7 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @GetExceptionInfo(ptr noundef nonnull %2) #18
  %10 = tail call ptr @__errno_location() #20
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = call ptr @GetExceptionMessage(i32 noundef %11) #18
  %13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %12) #18
  %14 = call ptr @DestroyString(ptr noundef %12) #18
  call void @CatchException(ptr noundef nonnull %2) #18
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #21
  unreachable

16:                                               ; preds = %1
  %17 = tail call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef 13240) #18
  %18 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 55
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, i64 noundef 4096) #18
  store i32 1, ptr %7, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 9
  store i64 16, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 1
  store i32 13, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 17
  store i32 2, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 15
  store double 0x3FDD1745C0000000, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16
  store double 0x3FE47AE140000000, ptr %24, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 0, i32 1
  store double 0x3FD51EB860000000, ptr %25, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 0, i32 2
  store double 0x3F9EB851E0000000, ptr %26, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1
  store double 0x3FD3333340000000, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1, i32 1
  store double 0x3FE3333340000000, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1, i32 2
  store double 0x3FB99999A0000000, ptr %29, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 2
  store double 0x3FC3333340000000, ptr %30, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 2, i32 1
  store double 0x3FAEB851E0000000, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 2, i32 2
  store double 0x3FE947AE20000000, ptr %32, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3
  store double 0x3FD40346E0000000, ptr %33, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3, i32 1
  store double 0x3FD50E5600000000, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3, i32 2
  store double 0x3FD6EE6320000000, ptr %35, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 33
  store i32 1, ptr %36, align 4, !tbaa !70
  %37 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 41
  store i64 100, ptr %37, align 8, !tbaa !71
  %38 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 36
  store i32 40, ptr %38, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 30
  store double 1.000000e+00, ptr %39, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %40) #18
  %41 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 12
  %42 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %41, ptr noundef nonnull %40) #18
  %43 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 13
  %44 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %43, ptr noundef nonnull %40) #18
  %45 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 14
  %46 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %45, ptr noundef nonnull %40) #18
  %47 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 72
  %48 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %47, ptr noundef nonnull %40) #18
  %49 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %49) #18
  %50 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 80
  store i32 0, ptr %50, align 8, !tbaa !74
  %51 = tail call ptr @AcquirePixelCache(i64 noundef 0) #18
  %52 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 49
  store ptr %51, ptr %52, align 8, !tbaa !75
  %53 = tail call ptr @CloneBlobInfo(ptr noundef null) #18
  %54 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 52
  store ptr %53, ptr %54, align 8, !tbaa !76
  %55 = tail call i64 @time(ptr noundef null) #18
  %56 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 82
  store i64 %55, ptr %56, align 8, !tbaa !77
  %57 = tail call i32 @IsEventLogging() #18
  %58 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 59
  store i32 %57, ptr %58, align 8, !tbaa !78
  %59 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 60
  store volatile i64 1, ptr %59, align 8, !tbaa !79
  %60 = tail call ptr @AllocateSemaphoreInfo() #18
  %61 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 61
  store ptr %60, ptr %61, align 8, !tbaa !80
  %62 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 66
  store i64 2880220587, ptr %62, align 8, !tbaa !81
  %63 = icmp eq ptr %0, null
  br i1 %63, label %235, label %64

64:                                               ; preds = %16
  %65 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %66 = load ptr, ptr %65, align 8, !tbaa !82
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i32
  tail call void @SetBlobExempt(ptr noundef nonnull %7, i32 noundef %68) #18
  %69 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %70 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %71 = tail call i64 @CopyMagickString(ptr noundef nonnull %69, ptr noundef nonnull %70, i64 noundef 4096) #18
  %72 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 54
  %73 = tail call i64 @CopyMagickString(ptr noundef nonnull %72, ptr noundef nonnull %70, i64 noundef 4096) #18
  %74 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %75 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %74, i64 noundef 4096) #18
  %76 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !84
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  %81 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %77, ptr noundef nonnull %80) #18
  %82 = load i64, ptr %80, align 8, !tbaa !85
  %83 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  store i64 %82, ptr %83, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !87
  %86 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 8
  store i64 %85, ptr %86, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !89
  %89 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 23
  store i64 %88, ptr %89, align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, i8 0, i64 16, i1 false)
  br label %90

90:                                               ; preds = %79, %64
  %91 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !91
  %93 = icmp eq ptr %92, null
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %95 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %92, ptr noundef nonnull %3) #18
  %96 = and i32 %95, 3
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !92
  %100 = load i64, ptr %99, align 8, !tbaa !85
  %101 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  %102 = load i64, ptr %101, align 8, !tbaa !86
  %103 = xor i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !86
  store i64 %102, ptr %99, align 8, !tbaa !85
  store i64 %100, ptr %101, align 8, !tbaa !86
  %104 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !88
  %108 = xor i64 %107, %105
  store i64 %108, ptr %106, align 8, !tbaa !88
  store i64 %107, ptr %104, align 8, !tbaa !87
  store i64 %105, ptr %106, align 8, !tbaa !88
  br label %109

109:                                              ; preds = %94, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, ptr %0, align 8, !tbaa !94
  %112 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 2
  store i32 %111, ptr %112, align 8, !tbaa !95
  %113 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %114 = load i64, ptr %113, align 8, !tbaa !96
  %115 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 3
  store i64 %114, ptr %115, align 8, !tbaa !97
  %116 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %117 = load i32, ptr %116, align 4, !tbaa !98
  %118 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 34
  store i32 %117, ptr %118, align 8, !tbaa !99
  %119 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %120 = load i32, ptr %119, align 8, !tbaa !100
  store i32 %120, ptr %36, align 4, !tbaa !70
  %121 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %122 = load i32, ptr %121, align 8, !tbaa !101
  %123 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 19
  store i32 %122, ptr %123, align 8, !tbaa !102
  %124 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %125 = load ptr, ptr %124, align 8, !tbaa !103
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  %128 = call i32 @ParseGeometry(ptr noundef nonnull %125, ptr noundef nonnull %4) #18
  %129 = load double, ptr %4, align 8, !tbaa !104
  %130 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 24
  store double %129, ptr %130, align 8, !tbaa !106
  %131 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !107
  %133 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 25
  %134 = and i32 %128, 8
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, double %129, double %132
  store double %136, ptr %133, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  br label %137

137:                                              ; preds = %127, %110
  %138 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !108
  %140 = icmp eq ptr %139, null
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 26
  %143 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(32) %143, i64 32, i1 false), !tbaa.struct !92
  %144 = load ptr, ptr %138, align 8, !tbaa !108
  %145 = call ptr @GetPageGeometry(ptr noundef %144) #18
  %146 = call i32 @ParseAbsoluteGeometry(ptr noundef %145, ptr noundef nonnull %142) #18
  %147 = call ptr @DestroyString(ptr noundef %145) #18
  br label %148

148:                                              ; preds = %141, %137
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %150 = load i64, ptr %149, align 8, !tbaa !109
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  store i64 %150, ptr %20, align 8, !tbaa !54
  br label %153

153:                                              ; preds = %152, %148
  %154 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %155 = load i32, ptr %154, align 8, !tbaa !110
  %156 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 78
  store i32 %155, ptr %156, align 4, !tbaa !111
  %157 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %158 = load i64, ptr %157, align 8
  store i64 %158, ptr %41, align 8
  %159 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %160 = load i64, ptr %159, align 8
  store i64 %160, ptr %43, align 8
  %161 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %162 = load i64, ptr %161, align 8
  store i64 %162, ptr %45, align 8
  %163 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %164 = load i64, ptr %163, align 4
  store i64 %164, ptr %47, align 8
  %165 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 34
  %166 = load i32, ptr %165, align 8, !tbaa !112
  store i32 %166, ptr %50, align 8, !tbaa !74
  %167 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %168 = load ptr, ptr %167, align 8, !tbaa !113
  %169 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 47
  store ptr %168, ptr %169, align 8, !tbaa !114
  %170 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 42
  %171 = load ptr, ptr %170, align 8, !tbaa !115
  %172 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 48
  store ptr %171, ptr %172, align 8, !tbaa !116
  %173 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %174 = load ptr, ptr %173, align 8, !tbaa !117
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %153
  %177 = load ptr, ptr %52, align 8, !tbaa !75
  call void @ClonePixelCacheMethods(ptr noundef %177, ptr noundef nonnull %174) #18
  br label %178

178:                                              ; preds = %176, %153
  %179 = call i32 @SyncImageSettings(ptr noundef nonnull %0, ptr noundef nonnull %7)
  %180 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #18
  %181 = icmp eq ptr %180, null
  br i1 %181, label %228, label %182

182:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  %183 = call i32 @ParseGeometry(ptr noundef nonnull %180, ptr noundef nonnull %5) #18
  %184 = and i32 %183, 32768
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %188 = load i64, ptr %187, align 8, !tbaa !118
  %189 = load double, ptr %5, align 8, !tbaa !104
  %190 = fadd double %189, 5.000000e-01
  %191 = call double @llvm.floor.f64(double %190)
  %192 = fptoui double %191 to i64
  %193 = icmp ugt i64 %188, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %186
  store i64 %192, ptr %187, align 8, !tbaa !118
  br label %218

195:                                              ; preds = %182
  %196 = and i32 %183, 16384
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %200 = load i64, ptr %199, align 8, !tbaa !118
  %201 = load double, ptr %5, align 8, !tbaa !104
  %202 = fadd double %201, 5.000000e-01
  %203 = call double @llvm.floor.f64(double %202)
  %204 = fptoui double %203 to i64
  %205 = icmp ult i64 %200, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %208 = load double, ptr %207, align 8, !tbaa !107
  %209 = fadd double %208, 5.000000e-01
  %210 = call double @llvm.floor.f64(double %209)
  %211 = fptosi double %210 to i64
  store i64 %211, ptr %37, align 8, !tbaa !71
  br label %218

212:                                              ; preds = %195
  %213 = load double, ptr %5, align 8, !tbaa !104
  %214 = fadd double %213, 5.000000e-01
  %215 = call double @llvm.floor.f64(double %214)
  %216 = fptoui double %215 to i64
  %217 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  store i64 %216, ptr %217, align 8, !tbaa !118
  br label %218

218:                                              ; preds = %212, %206, %198, %186, %194
  %219 = and i32 %183, 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %223 = load double, ptr %222, align 8, !tbaa !107
  %224 = fadd double %223, 5.000000e-01
  %225 = call double @llvm.floor.f64(double %224)
  %226 = fptosi double %225 to i64
  store i64 %226, ptr %37, align 8, !tbaa !71
  br label %227

227:                                              ; preds = %221, %218
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  br label %228

228:                                              ; preds = %227, %178
  %229 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #18
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %229) #18
  %233 = trunc i64 %232 to i32
  %234 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 37
  store i32 %233, ptr %234, align 4, !tbaa !119
  br label %235

235:                                              ; preds = %228, %231, %16
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetTimerInfo(ptr noundef) local_unnamed_addr #2

declare ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #2

declare ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

declare i32 @IsEventLogging() local_unnamed_addr #2

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

declare void @SetBlobExempt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #2

declare void @ClonePixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SyncImageSettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3549, ptr noundef nonnull @.str.8, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %2
  %15 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.44) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 12
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %20 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef nonnull %19) #18
  br label %21

21:                                               ; preds = %17, %14
  %22 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.45) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %25 = call double @InterpretLocaleValue(ptr noundef nonnull %22, ptr noundef nonnull %4) #18
  %26 = load ptr, ptr %4, align 8, !tbaa !120
  %27 = load i8, ptr %26, align 1, !tbaa !121
  %28 = icmp eq i8 %27, 37
  %29 = fmul double %25, 6.553600e+02
  %30 = select i1 %28, double %29, double %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %31 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 29
  store double %30, ptr %31, align 8, !tbaa !122
  br label %32

32:                                               ; preds = %24, %21
  %33 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.46) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %33) #18
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 71
  store i32 %37, ptr %38, align 4, !tbaa !123
  br label %39

39:                                               ; preds = %35, %32
  %40 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.47) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = call i32 @ParseGeometry(ptr noundef nonnull %40, ptr noundef nonnull %6) #18
  %44 = load double, ptr %6, align 8, !tbaa !104
  %45 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2
  store double %44, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %47 = load double, ptr %46, align 8, !tbaa !107
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2, i32 1
  %49 = and i32 %43, 8
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, double %44, double %47
  store double %51, ptr %48, align 8
  br label %52

52:                                               ; preds = %42, %39
  %53 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.48) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 13
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %58 = call i32 @QueryColorDatabase(ptr noundef nonnull %53, ptr noundef nonnull %56, ptr noundef nonnull %57) #18
  br label %59

59:                                               ; preds = %55, %52
  %60 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.49) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i64 @strtoul(ptr nocapture noundef nonnull %60, ptr noundef null, i32 noundef 10) #18
  %64 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  store i64 %63, ptr %64, align 8, !tbaa !124
  br label %65

65:                                               ; preds = %62, %59
  %66 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.50) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %66) #18
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 36
  store i32 %70, ptr %71, align 8, !tbaa !72
  br label %72

72:                                               ; preds = %68, %65
  %73 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.51) #18
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef nonnull %73) #18
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  store i32 %77, ptr %78, align 8, !tbaa !95
  br label %79

79:                                               ; preds = %75, %72
  %80 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.52) #18
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %80) #18
  %84 = trunc i64 %83 to i32
  store i32 %84, ptr %8, align 8, !tbaa !78
  br label %85

85:                                               ; preds = %82, %79
  %86 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.53) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  %89 = call i32 @ParseGeometry(ptr noundef nonnull %86, ptr noundef nonnull %7) #18
  %90 = load double, ptr %7, align 8, !tbaa !104
  %91 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  store double %90, ptr %91, align 8, !tbaa !106
  %92 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %93 = load double, ptr %92, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %95 = and i32 %89, 8
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, double %90, double %93
  store double %97, ptr %94, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %98

98:                                               ; preds = %88, %85
  %99 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.54) #18
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = call i64 @strtoul(ptr nocapture noundef nonnull %99, ptr noundef null, i32 noundef 10) #18
  %103 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  store i64 %102, ptr %103, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %101, %98
  %105 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.55) #18
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 0, ptr noundef nonnull %105) #18
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  store i32 %109, ptr %110, align 8, !tbaa !99
  br label %111

111:                                              ; preds = %107, %104
  %112 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.56) #18
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %112) #18
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  store i32 %116, ptr %117, align 8, !tbaa !125
  br label %118

118:                                              ; preds = %114, %111
  %119 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.57) #18
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %122 = call double @InterpretLocaleValue(ptr noundef nonnull %119, ptr noundef nonnull %3) #18
  %123 = load ptr, ptr %3, align 8, !tbaa !120
  %124 = load i8, ptr %123, align 1, !tbaa !121
  %125 = icmp eq i8 %124, 37
  %126 = fmul double %122, 6.553600e+02
  %127 = select i1 %125, double %126, double %122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %128 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  store double %127, ptr %128, align 8, !tbaa !126
  br label %129

129:                                              ; preds = %121, %118
  %130 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.58) #18
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %130) #18
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  store i32 %134, ptr %135, align 4, !tbaa !127
  br label %136

136:                                              ; preds = %132, %129
  %137 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.59) #18
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %136
  %140 = call i32 @ParseGeometry(ptr noundef nonnull %137, ptr noundef nonnull %6) #18
  %141 = load double, ptr %6, align 8, !tbaa !104
  %142 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1
  store double %141, ptr %142, align 8, !tbaa !61
  %143 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %144 = load double, ptr %143, align 8, !tbaa !107
  %145 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1, i32 1
  %146 = and i32 %140, 8
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, double %141, double %144
  store double %148, ptr %145, align 8
  br label %149

149:                                              ; preds = %139, %136
  %150 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.60) #18
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef nonnull %150) #18
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 83
  store i32 %154, ptr %155, align 8, !tbaa !128
  br label %156

156:                                              ; preds = %152, %149
  %157 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.61) #18
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %157) #18
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 17
  store i32 %161, ptr %162, align 8, !tbaa !56
  br label %163

163:                                              ; preds = %159, %156
  %164 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.62) #18
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = call i64 @ParseCommandOption(i32 noundef 32, i32 noundef 0, ptr noundef nonnull %164) #18
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 33
  store i32 %168, ptr %169, align 4, !tbaa !70
  br label %170

170:                                              ; preds = %166, %163
  %171 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.63) #18
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %171) #18
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 70
  store i32 %175, ptr %176, align 8, !tbaa !129
  br label %177

177:                                              ; preds = %173, %170
  %178 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.64) #18
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = call i64 @strtoul(ptr nocapture noundef nonnull %178, ptr noundef null, i32 noundef 10) #18
  %182 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 42
  store i64 %181, ptr %182, align 8, !tbaa !130
  br label %183

183:                                              ; preds = %180, %177
  %184 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.65) #18
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 14
  %188 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %189 = call i32 @QueryColorDatabase(ptr noundef nonnull %184, ptr noundef nonnull %187, ptr noundef nonnull %188) #18
  br label %190

190:                                              ; preds = %186, %183
  %191 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.66) #18
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = call i64 @ParseCommandOption(i32 noundef 50, i32 noundef 0, ptr noundef nonnull %191) #18
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  store i32 %195, ptr %196, align 8, !tbaa !131
  br label %197

197:                                              ; preds = %193, %190
  %198 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.43) #18
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = call ptr @GetPageGeometry(ptr noundef nonnull %198) #18
  %202 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %203 = call i32 @ParseAbsoluteGeometry(ptr noundef %201, ptr noundef nonnull %202) #18
  %204 = call ptr @DestroyString(ptr noundef %201) #18
  br label %205

205:                                              ; preds = %200, %197
  %206 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.67) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i64 @strtoul(ptr nocapture noundef nonnull %206, ptr noundef null, i32 noundef 10) #18
  %210 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %209, ptr %210, align 8, !tbaa !97
  br label %211

211:                                              ; preds = %208, %205
  %212 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.68) #18
  %213 = icmp eq ptr %212, null
  br i1 %213, label %224, label %214

214:                                              ; preds = %211
  %215 = call i32 @ParseGeometry(ptr noundef nonnull %212, ptr noundef nonnull %6) #18
  %216 = load double, ptr %6, align 8, !tbaa !104
  %217 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16
  store double %216, ptr %217, align 8, !tbaa !58
  %218 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %219 = load double, ptr %218, align 8, !tbaa !107
  %220 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 0, i32 1
  %221 = and i32 %215, 8
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, double %216, double %219
  store double %223, ptr %220, align 8
  br label %224

224:                                              ; preds = %214, %211
  %225 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %226 = load i64, ptr %225, align 8, !tbaa !96
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %226, ptr %229, align 8, !tbaa !97
  br label %230

230:                                              ; preds = %228, %224
  %231 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.69) #18
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = call i64 @strtoul(ptr nocapture noundef nonnull %231, ptr noundef null, i32 noundef 10) #18
  %235 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  store i64 %234, ptr %235, align 8, !tbaa !132
  br label %236

236:                                              ; preds = %233, %230
  %237 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.70) #18
  %238 = icmp eq ptr %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %237) #18
  %241 = trunc i64 %240 to i32
  %242 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 5
  store i32 %241, ptr %242, align 4, !tbaa !133
  br label %243

243:                                              ; preds = %239, %236
  %244 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.71) #18
  %245 = icmp eq ptr %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %243
  %247 = call ptr @GetPageGeometry(ptr noundef nonnull %244) #18
  %248 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 74
  %249 = call i32 @ParseAbsoluteGeometry(ptr noundef %247, ptr noundef nonnull %248) #18
  %250 = call ptr @DestroyString(ptr noundef %247) #18
  br label %251

251:                                              ; preds = %246, %243
  %252 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.72) #18
  %253 = icmp eq ptr %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 72
  %256 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %257 = call i32 @QueryColorDatabase(ptr noundef nonnull %252, ptr noundef nonnull %255, ptr noundef nonnull %256) #18
  br label %258

258:                                              ; preds = %254, %251
  %259 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.73) #18
  %260 = icmp eq ptr %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = call i64 @ParseCommandOption(i32 noundef 66, i32 noundef 0, ptr noundef nonnull %259) #18
  %263 = trunc i64 %262 to i32
  %264 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 77
  store i32 %263, ptr %264, align 8, !tbaa !134
  br label %265

265:                                              ; preds = %261, %258
  %266 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.74) #18
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef nonnull %266) #18
  %270 = trunc i64 %269 to i32
  br label %274

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %273 = load i32, ptr %272, align 8, !tbaa !101
  br label %274

274:                                              ; preds = %271, %268
  %275 = phi i32 [ %270, %268 ], [ %273, %271 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %307, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %279 = load i32, ptr %278, align 8, !tbaa !102
  %280 = icmp eq i32 %279, %275
  br i1 %280, label %306, label %281

281:                                              ; preds = %277
  switch i32 %279, label %306 [
    i32 1, label %282
    i32 2, label %291
  ]

282:                                              ; preds = %281
  %283 = icmp eq i32 %275, 2
  br i1 %283, label %284, label %306

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %286 = load double, ptr %285, align 8, !tbaa !106
  %287 = fdiv double %286, 2.540000e+00
  store double %287, ptr %285, align 8, !tbaa !106
  %288 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %289 = load double, ptr %288, align 8, !tbaa !135
  %290 = fdiv double %289, 2.540000e+00
  store double %290, ptr %288, align 8, !tbaa !135
  br label %306

291:                                              ; preds = %281
  %292 = icmp eq i32 %275, 1
  br i1 %292, label %293, label %306

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %295 = load double, ptr %294, align 8, !tbaa !106
  %296 = call double @llvm.fmuladd.f64(double %295, double 2.540000e+02, double 5.000000e-01)
  %297 = fptoui double %296 to i64
  %298 = uitofp i64 %297 to double
  %299 = fdiv double %298, 1.000000e+02
  store double %299, ptr %294, align 8, !tbaa !106
  %300 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %301 = load double, ptr %300, align 8, !tbaa !135
  %302 = call double @llvm.fmuladd.f64(double %301, double 2.540000e+02, double 5.000000e-01)
  %303 = fptoui double %302 to i64
  %304 = uitofp i64 %303 to double
  %305 = fdiv double %304, 1.000000e+02
  store double %305, ptr %300, align 8, !tbaa !135
  br label %306

306:                                              ; preds = %284, %282, %293, %291, %281, %277
  store i32 %275, ptr %278, align 8, !tbaa !102
  br label %307

307:                                              ; preds = %306, %274
  %308 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.75) #18
  %309 = icmp eq ptr %308, null
  br i1 %309, label %320, label %310

310:                                              ; preds = %307
  %311 = call i32 @ParseGeometry(ptr noundef nonnull %308, ptr noundef nonnull %6) #18
  %312 = load double, ptr %6, align 8, !tbaa !104
  %313 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3
  store double %312, ptr %313, align 8, !tbaa !67
  %314 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %315 = load double, ptr %314, align 8, !tbaa !107
  %316 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3, i32 1
  %317 = and i32 %311, 8
  %318 = icmp eq i32 %317, 0
  %319 = select i1 %318, double %312, double %315
  store double %319, ptr %316, align 8
  br label %320

320:                                              ; preds = %310, %307
  call void @ResetImageOptionIterator(ptr noundef %0) #18
  %321 = call ptr @GetNextImageOption(ptr noundef %0) #18
  %322 = icmp eq ptr %321, null
  br i1 %322, label %333, label %323

323:                                              ; preds = %320, %330
  %324 = phi ptr [ %331, %330 ], [ %321, %320 ]
  %325 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull %324) #18
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %324) #18
  %329 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %325) #18
  br label %330

330:                                              ; preds = %327, %323
  %331 = call ptr @GetNextImageOption(ptr noundef %0) #18
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %323, !llvm.loop !136

333:                                              ; preds = %330, %320
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  ret i32 1
}

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireImageInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(16792) ptr @AcquireMagickMemory(i64 noundef 16792) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #18
  call void @GetExceptionInfo(ptr noundef nonnull %1) #18
  %5 = tail call ptr @__errno_location() #20
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #18
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 336, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7) #18
  %9 = call ptr @DestroyString(ptr noundef %7) #18
  call void @CatchException(ptr noundef nonnull %1) #18
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #21
  unreachable

11:                                               ; preds = %0
  tail call void @GetImageInfo(ptr noundef nonnull %2)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @GetImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1280, ptr noundef nonnull @.str.2) #18
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 16792) #18
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !139
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  store i32 1, ptr %5, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  store i32 134217719, ptr %6, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  store i64 0, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !141
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  store i32 1, ptr %9, align 8, !tbaa !110
  %10 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @IsStringTrue(ptr noundef nonnull %10) #18
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 61
  store i32 %13, ptr %14, align 8, !tbaa !142
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %10) #18
  br label %16

16:                                               ; preds = %12, %1
  %17 = tail call ptr @AcquireExceptionInfo() #18
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %19 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %18, ptr noundef %17) #18
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %21 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %20, ptr noundef %17) #18
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %23 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %22, ptr noundef %17) #18
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %25 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %24, ptr noundef %17) #18
  %26 = tail call ptr @DestroyExceptionInfo(ptr noundef %17) #18
  %27 = tail call i32 @IsEventLogging() #18
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  store i32 %27, ptr %28, align 8, !tbaa !143
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 2880220587, ptr %29, align 8, !tbaa !144
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AcquireNextImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @AcquireImage(ptr noundef %0)
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69
  store ptr %10, ptr %11, align 8, !tbaa !145
  %12 = tail call ptr @GetNextImageInList(ptr noundef %1) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @GetNextImageInList(ptr noundef %1) #18
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 53
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %18 = tail call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef 4096) #18
  %19 = icmp eq ptr %0, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @GetNextImageInList(ptr noundef %1) #18
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %24 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef 4096) #18
  br label %25

25:                                               ; preds = %20, %14
  %26 = tail call ptr @GetNextImageInList(ptr noundef %1) #18
  tail call void @DestroyBlob(ptr noundef %26) #18
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = tail call ptr @ReferenceBlob(ptr noundef %28) #18
  %30 = load ptr, ptr %11, align 8, !tbaa !145
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 52
  store ptr %29, ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !99
  %34 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 34
  store i32 %33, ptr %34, align 8, !tbaa !99
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %36 = load i64, ptr %35, align 8, !tbaa !132
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 39
  store i64 %37, ptr %38, align 8, !tbaa !132
  %39 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  store ptr %1, ptr %39, align 8, !tbaa !146
  br label %40

40:                                               ; preds = %9, %25
  ret void
}

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

declare ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AppendImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !88
  %19 = tail call ptr @GetNextImageInList(ptr noundef %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %12
  %22 = icmp eq i32 %1, 0
  br label %23

23:                                               ; preds = %21, %44
  %24 = phi i32 [ %14, %21 ], [ %32, %44 ]
  %25 = phi i64 [ %16, %21 ], [ %46, %44 ]
  %26 = phi i64 [ 1, %21 ], [ %33, %44 ]
  %27 = phi i64 [ %18, %21 ], [ %45, %44 ]
  %28 = phi ptr [ %19, %21 ], [ %47, %44 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !147
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %24, i32 1
  %33 = add i64 %26, 1
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !86
  %36 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !88
  br i1 %22, label %41, label %38

38:                                               ; preds = %23
  %39 = tail call i64 @llvm.umax.i64(i64 %35, i64 %25)
  %40 = add i64 %37, %27
  br label %44

41:                                               ; preds = %23
  %42 = add i64 %35, %25
  %43 = tail call i64 @llvm.umax.i64(i64 %37, i64 %27)
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i64 [ %40, %38 ], [ %43, %41 ]
  %46 = phi i64 [ %39, %38 ], [ %42, %41 ]
  %47 = tail call ptr @GetNextImageInList(ptr noundef nonnull %28) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %23, !llvm.loop !148

49:                                               ; preds = %44, %12
  %50 = phi i64 [ %18, %12 ], [ %45, %44 ]
  %51 = phi i64 [ 1, %12 ], [ %33, %44 ]
  %52 = phi i64 [ %16, %12 ], [ %46, %44 ]
  %53 = phi i32 [ %14, %12 ], [ %32, %44 ]
  %54 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %52, i64 noundef %50, i32 noundef 1, ptr noundef %2)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %213, label %56

56:                                               ; preds = %49
  store i32 1, ptr %54, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 58
  %58 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %54, ptr noundef nonnull %57) #18
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %57) #18
  %61 = tail call ptr @DestroyImage(ptr noundef nonnull %54)
  br label %213

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 6
  store i32 %53, ptr %63, align 8, !tbaa !147
  %64 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %54), !range !149
  %65 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %54, ptr noundef %2) #18
  %66 = icmp sgt i64 %51, 0
  br i1 %66, label %67, label %211

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 1
  %69 = icmp eq i32 %1, 0
  %70 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %72 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 47
  %73 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 53
  %74 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 48
  br label %75

75:                                               ; preds = %197, %67
  %76 = phi i64 [ 0, %67 ], [ %201, %197 ]
  %77 = phi i64 [ 0, %67 ], [ %200, %197 ]
  %78 = phi ptr [ %0, %67 ], [ %199, %197 ]
  %79 = phi i64 [ 0, %67 ], [ %203, %197 ]
  %80 = phi i32 [ 1, %67 ], [ %198, %197 ]
  %81 = call ptr @CloneImage(ptr noundef %78, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %197, label %83

83:                                               ; preds = %75
  %84 = load i32, ptr %68, align 4, !tbaa !55
  %85 = call i32 @TransformImageColorspace(ptr noundef nonnull %81, i32 noundef %84) #18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %197, label %87

87:                                               ; preds = %83
  call void @SetGeometry(ptr noundef nonnull %54, ptr noundef nonnull %5) #18
  %88 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !86
  %90 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !88
  %92 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 35
  %93 = load i32, ptr %92, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %89, i64 noundef %91, i32 noundef %93, ptr noundef nonnull %5) #18
  %94 = load i64, ptr %70, align 8
  %95 = load i64, ptr %71, align 8
  %96 = select i1 %69, i64 0, i64 %94
  %97 = sub nsw i64 %77, %96
  %98 = select i1 %69, i64 %95, i64 0
  %99 = sub nsw i64 %76, %98
  %100 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %81, ptr noundef %2) #18
  %101 = load i64, ptr %90, align 8, !tbaa !88
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %172

103:                                              ; preds = %87
  %104 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 6
  %105 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 1
  br label %106

106:                                              ; preds = %103, %167
  %107 = phi i64 [ 0, %103 ], [ %169, %167 ]
  %108 = phi i32 [ %85, %103 ], [ %168, %167 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %167, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %88, align 8, !tbaa !86
  %112 = call ptr @GetCacheViewVirtualPixels(ptr noundef %100, i64 noundef 0, i64 noundef %107, i64 noundef %111, i64 noundef 1, ptr noundef %2) #22
  %113 = add nsw i64 %107, %99
  %114 = load i64, ptr %88, align 8, !tbaa !86
  %115 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %65, i64 noundef %97, i64 noundef %113, i64 noundef %114, i64 noundef 1, ptr noundef %2) #22
  %116 = icmp eq ptr %112, null
  %117 = icmp eq ptr %115, null
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %167, label %119

119:                                              ; preds = %110
  %120 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %100) #18
  %121 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #18
  %122 = load i64, ptr %88, align 8, !tbaa !86
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %119
  %125 = load i32, ptr %104, align 8, !tbaa !147
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %105, align 4, !tbaa !55
  %128 = icmp eq i32 %127, 12
  %129 = icmp eq ptr %121, null
  %130 = icmp eq ptr %120, null
  br label %131

131:                                              ; preds = %124, %158
  %132 = phi i64 [ 0, %124 ], [ %161, %158 ]
  %133 = phi ptr [ %115, %124 ], [ %160, %158 ]
  %134 = phi ptr [ %112, %124 ], [ %159, %158 ]
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 2
  %136 = load i16, ptr %135, align 2, !tbaa !150
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 2
  store i16 %136, ptr %137, align 2, !tbaa !150
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 1
  %139 = load i16, ptr %138, align 2, !tbaa !151
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 1
  store i16 %139, ptr %140, align 2, !tbaa !151
  %141 = load i16, ptr %134, align 2, !tbaa !152
  store i16 %141, ptr %133, align 2, !tbaa !152
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 3
  store i16 0, ptr %142, align 2, !tbaa !153
  br i1 %126, label %146, label %143

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 3
  %145 = load i16, ptr %144, align 2, !tbaa !153
  store i16 %145, ptr %142, align 2, !tbaa !153
  br label %146

146:                                              ; preds = %143, %131
  br i1 %128, label %147, label %158

147:                                              ; preds = %146
  %148 = load i32, ptr %68, align 4, !tbaa !55
  %149 = icmp eq i32 %148, 12
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = getelementptr inbounds i16, ptr %121, i64 %132
  br i1 %129, label %158, label %152

152:                                              ; preds = %150
  br i1 %130, label %156, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds i16, ptr %120, i64 %132
  %155 = load i16, ptr %154, align 2, !tbaa !154
  br label %156

156:                                              ; preds = %152, %153
  %157 = phi i16 [ %155, %153 ], [ 0, %152 ]
  store i16 %157, ptr %151, align 2, !tbaa !154
  br label %158

158:                                              ; preds = %150, %156, %147, %146
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 1
  %161 = add nuw nsw i64 %132, 1
  %162 = icmp eq i64 %161, %122
  br i1 %162, label %163, label %131, !llvm.loop !155

163:                                              ; preds = %158, %119
  %164 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef %2) #22
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i32 0, i32 %108
  br label %167

167:                                              ; preds = %110, %106, %163
  %168 = phi i32 [ %166, %163 ], [ 0, %106 ], [ 0, %110 ]
  %169 = add nuw nsw i64 %107, 1
  %170 = load i64, ptr %90, align 8, !tbaa !88
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %106, label %172, !llvm.loop !156

172:                                              ; preds = %167, %87
  %173 = phi i32 [ %85, %87 ], [ %168, %167 ]
  %174 = call ptr @DestroyCacheView(ptr noundef %100) #18
  br i1 %69, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, ptr %88, align 8, !tbaa !86
  %177 = add nsw i64 %176, %97
  br label %181

178:                                              ; preds = %172
  %179 = load i64, ptr %90, align 8, !tbaa !88
  %180 = add nsw i64 %179, %99
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i64 [ %177, %175 ], [ 0, %178 ]
  %183 = phi i64 [ 0, %175 ], [ %180, %178 ]
  %184 = call ptr @DestroyImage(ptr noundef nonnull %81)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %185 = load ptr, ptr %72, align 8, !tbaa !114
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %181
  %188 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.9, ptr noundef nonnull %73) #18
  %189 = load ptr, ptr %72, align 8, !tbaa !114
  %190 = load ptr, ptr %74, align 8, !tbaa !116
  %191 = call i32 %189(ptr noundef nonnull %4, i64 noundef %79, i64 noundef %51, ptr noundef %190) #18
  br label %192

192:                                              ; preds = %181, %187
  %193 = phi i32 [ %191, %187 ], [ 1, %181 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = call ptr @GetNextImageInList(ptr noundef %78) #18
  br label %197

197:                                              ; preds = %192, %83, %75, %195
  %198 = phi i32 [ %173, %195 ], [ %80, %75 ], [ 0, %83 ], [ %173, %192 ]
  %199 = phi ptr [ %196, %195 ], [ %78, %75 ], [ %78, %83 ], [ %78, %192 ]
  %200 = phi i64 [ %182, %195 ], [ %77, %75 ], [ %77, %83 ], [ %182, %192 ]
  %201 = phi i64 [ %183, %195 ], [ %76, %75 ], [ %76, %83 ], [ %183, %192 ]
  %202 = phi i1 [ false, %195 ], [ true, %75 ], [ true, %83 ], [ true, %192 ]
  %203 = add nuw nsw i64 %79, 1
  %204 = icmp eq i64 %203, %51
  %205 = select i1 %202, i1 true, i1 %204
  br i1 %205, label %206, label %75, !llvm.loop !157

206:                                              ; preds = %197
  %207 = icmp eq i32 %198, 0
  %208 = call ptr @DestroyCacheView(ptr noundef %65) #18
  br i1 %207, label %209, label %213

209:                                              ; preds = %206
  %210 = call ptr @DestroyImage(ptr noundef nonnull %54)
  br label %213

211:                                              ; preds = %62
  %212 = tail call ptr @DestroyCacheView(ptr noundef %65) #18
  br label %213

213:                                              ; preds = %211, %206, %209, %49, %60
  %214 = phi ptr [ null, %60 ], [ null, %49 ], [ %210, %209 ], [ %54, %206 ], [ %54, %211 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret ptr %214
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 806, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #18
  br label %232

18:                                               ; preds = %12
  %19 = tail call ptr @ResetMagickMemory(ptr noundef %13, i32 noundef 0, i64 noundef 13240) #18
  %20 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 66
  store i64 2880220587, ptr %20, align 8, !tbaa !81
  %21 = load i32, ptr %0, align 8, !tbaa !38
  store i32 %21, ptr %13, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %23 = load i64, ptr %22, align 8, !tbaa !158
  %24 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 81
  store i64 %23, ptr %24, align 8, !tbaa !158
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !55
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !147
  %30 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 6
  store i32 %29, ptr %30, align 8, !tbaa !147
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !86
  %33 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  store i64 %32, ptr %33, align 8, !tbaa !86
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !88
  %36 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  store i64 %35, ptr %36, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %38 = load i32, ptr %37, align 4, !tbaa !111
  %39 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 78
  store i32 %38, ptr %39, align 4, !tbaa !111
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %45 = load i64, ptr %44, align 8, !tbaa !124
  %46 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 10
  store i64 %45, ptr %46, align 8, !tbaa !124
  %47 = load i64, ptr %44, align 8, !tbaa !124
  %48 = tail call ptr @AcquireQuantumMemory(i64 noundef %47, i64 noundef 8) #23
  %49 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 11
  store ptr %48, ptr %49, align 8, !tbaa !159
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %53 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 826, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %52) #18
  br label %232

54:                                               ; preds = %43
  %55 = load ptr, ptr %40, align 8, !tbaa !159
  %56 = shl i64 %47, 3
  %57 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %48, ptr noundef %55, i64 noundef %56) #18
  br label %58

58:                                               ; preds = %54, %18
  %59 = tail call i32 @CloneImageProfiles(ptr noundef nonnull %13, ptr noundef nonnull %0) #18
  %60 = tail call i32 @CloneImageProperties(ptr noundef nonnull %13, ptr noundef nonnull %0) #18
  %61 = tail call i32 @CloneImageArtifacts(ptr noundef nonnull %13, ptr noundef nonnull %0) #18
  %62 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %62) #18
  %63 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %63) #18
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef nonnull %63, ptr noundef nonnull %64) #18
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %66 = load ptr, ptr %65, align 8, !tbaa !160
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  tail call void @Ascii85Initialize(ptr noundef nonnull %13) #18
  br label %69

69:                                               ; preds = %68, %58
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %71 = load i64, ptr %70, align 8, !tbaa !161
  %72 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 56
  store i64 %71, ptr %72, align 8, !tbaa !161
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %74 = load i64, ptr %73, align 8, !tbaa !162
  %75 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 57
  store i64 %74, ptr %75, align 8, !tbaa !162
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %77 = load i32, ptr %76, align 8, !tbaa !134
  %78 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 77
  store i32 %77, ptr %78, align 8, !tbaa !134
  %79 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 54
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %81 = tail call i64 @CopyMagickString(ptr noundef nonnull %79, ptr noundef nonnull %80, i64 noundef 4096) #18
  %82 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 55
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %84 = tail call i64 @CopyMagickString(ptr noundef nonnull %82, ptr noundef nonnull %83, i64 noundef 4096) #18
  %85 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 53
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %87 = tail call i64 @CopyMagickString(ptr noundef nonnull %85, ptr noundef nonnull %86, i64 noundef 4096) #18
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %89 = load ptr, ptr %88, align 8, !tbaa !114
  %90 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 47
  store ptr %89, ptr %90, align 8, !tbaa !114
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %92 = load ptr, ptr %91, align 8, !tbaa !116
  %93 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 48
  store ptr %92, ptr %93, align 8, !tbaa !116
  %94 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 60
  store volatile i64 1, ptr %94, align 8, !tbaa !79
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %96 = load ptr, ptr %95, align 8, !tbaa !145
  %97 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  store ptr %96, ptr %97, align 8, !tbaa !145
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %99 = load ptr, ptr %98, align 8, !tbaa !146
  %100 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %99, ptr %100, align 8, !tbaa !146
  %101 = tail call ptr @NewImageList() #18
  %102 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 68
  store ptr %101, ptr %102, align 8, !tbaa !163
  %103 = tail call ptr @NewImageList() #18
  %104 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 38
  store ptr %103, ptr %104, align 8, !tbaa !164
  %105 = tail call ptr @NewImageList() #18
  %106 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 73
  store ptr %105, ptr %106, align 8, !tbaa !165
  %107 = icmp eq i32 %3, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %69
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  %111 = tail call ptr @ReferenceBlob(ptr noundef %110) #18
  br label %116

112:                                              ; preds = %69
  %113 = tail call ptr @NewImageList() #18
  store ptr %113, ptr %97, align 8, !tbaa !145
  %114 = tail call ptr @NewImageList() #18
  store ptr %114, ptr %100, align 8, !tbaa !146
  %115 = tail call ptr @CloneBlobInfo(ptr noundef null) #18
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi ptr [ %115, %112 ], [ %111, %108 ]
  %118 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 52
  store ptr %117, ptr %118, align 8, !tbaa !76
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %120 = load i32, ptr %119, align 8, !tbaa !74
  %121 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 80
  store i32 %120, ptr %121, align 8, !tbaa !74
  %122 = tail call i32 @IsEventLogging() #18
  %123 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 59
  store i32 %122, ptr %123, align 8, !tbaa !78
  %124 = tail call ptr @AllocateSemaphoreInfo() #18
  %125 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 61
  store ptr %124, ptr %125, align 8, !tbaa !80
  %126 = or i64 %2, %1
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %130 = load ptr, ptr %129, align 8, !tbaa !166
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 20
  %134 = tail call ptr @CloneString(ptr noundef nonnull %133, ptr noundef nonnull %130) #18
  br label %135

135:                                              ; preds = %132, %128
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %137 = load ptr, ptr %136, align 8, !tbaa !167
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 21
  %141 = tail call ptr @CloneString(ptr noundef nonnull %140, ptr noundef nonnull %137) #18
  br label %142

142:                                              ; preds = %139, %135
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %144 = load ptr, ptr %143, align 8, !tbaa !164
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = tail call ptr @CloneImage(ptr noundef nonnull %144, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4)
  store ptr %147, ptr %104, align 8, !tbaa !164
  br label %148

148:                                              ; preds = %146, %142
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %150 = load ptr, ptr %149, align 8, !tbaa !165
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = tail call ptr @CloneImage(ptr noundef nonnull %150, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4)
  store ptr %153, ptr %106, align 8, !tbaa !165
  br label %154

154:                                              ; preds = %152, %148
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %156 = load ptr, ptr %155, align 8, !tbaa !75
  %157 = tail call ptr @ReferencePixelCache(ptr noundef %156) #18
  %158 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %157, ptr %158, align 8, !tbaa !75
  br label %232

159:                                              ; preds = %116
  %160 = load i64, ptr %31, align 8, !tbaa !86
  %161 = icmp eq i64 %160, %1
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load i64, ptr %34, align 8, !tbaa !88
  %164 = icmp eq i64 %163, %2
  br i1 %164, label %165, label %177

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %167 = load ptr, ptr %166, align 8, !tbaa !164
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = tail call ptr @CloneImage(ptr noundef nonnull %167, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4)
  store ptr %170, ptr %104, align 8, !tbaa !164
  br label %171

171:                                              ; preds = %169, %165
  %172 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %173 = load ptr, ptr %172, align 8, !tbaa !165
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = tail call ptr @CloneImage(ptr noundef nonnull %173, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4)
  store ptr %176, ptr %106, align 8, !tbaa !165
  br label %177

177:                                              ; preds = %171, %175, %162, %159
  %178 = uitofp i64 %1 to double
  %179 = load i64, ptr %31, align 8, !tbaa !86
  %180 = uitofp i64 %179 to double
  %181 = fdiv double %178, %180
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %183 = load i64, ptr %182, align 8, !tbaa !168
  %184 = uitofp i64 %183 to double
  %185 = tail call double @llvm.fmuladd.f64(double %181, double %184, double 5.000000e-01)
  %186 = tail call double @llvm.floor.f64(double %185)
  %187 = fptoui double %186 to i64
  %188 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26
  store i64 %187, ptr %188, align 8, !tbaa !168
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !169
  %191 = sitofp i64 %190 to double
  %192 = tail call double @llvm.fmuladd.f64(double %181, double %191, double -5.000000e-01)
  %193 = tail call double @llvm.ceil.f64(double %192)
  %194 = fptosi double %193 to i64
  %195 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 2
  store i64 %194, ptr %195, align 8, !tbaa !169
  %196 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 2
  %197 = load i64, ptr %196, align 8, !tbaa !170
  %198 = sitofp i64 %197 to double
  %199 = tail call double @llvm.fmuladd.f64(double %181, double %198, double -5.000000e-01)
  %200 = tail call double @llvm.ceil.f64(double %199)
  %201 = fptosi double %200 to i64
  %202 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 2
  store i64 %201, ptr %202, align 8, !tbaa !170
  %203 = uitofp i64 %2 to double
  %204 = load i64, ptr %34, align 8, !tbaa !88
  %205 = uitofp i64 %204 to double
  %206 = fdiv double %203, %205
  %207 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !171
  %209 = uitofp i64 %208 to double
  %210 = tail call double @llvm.fmuladd.f64(double %206, double %209, double 5.000000e-01)
  %211 = tail call double @llvm.floor.f64(double %210)
  %212 = fptoui double %211 to i64
  %213 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 1
  store i64 %212, ptr %213, align 8, !tbaa !171
  %214 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %215 = load i64, ptr %214, align 8, !tbaa !172
  %216 = sitofp i64 %215 to double
  %217 = tail call double @llvm.fmuladd.f64(double %206, double %216, double -5.000000e-01)
  %218 = tail call double @llvm.ceil.f64(double %217)
  %219 = fptosi double %218 to i64
  %220 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 3
  store i64 %219, ptr %220, align 8, !tbaa !172
  %221 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 3
  %222 = load i64, ptr %221, align 8, !tbaa !173
  %223 = sitofp i64 %222 to double
  %224 = tail call double @llvm.fmuladd.f64(double %206, double %223, double -5.000000e-01)
  %225 = tail call double @llvm.ceil.f64(double %224)
  %226 = fptosi double %225 to i64
  %227 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 3
  store i64 %226, ptr %227, align 8, !tbaa !173
  store i64 %1, ptr %33, align 8, !tbaa !86
  store i64 %2, ptr %36, align 8, !tbaa !88
  %228 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %229 = load ptr, ptr %228, align 8, !tbaa !75
  %230 = tail call ptr @ClonePixelCache(ptr noundef %229) #18
  %231 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %230, ptr %231, align 8, !tbaa !75
  br label %232

232:                                              ; preds = %177, %154, %51, %15
  %233 = phi ptr [ null, %15 ], [ null, %51 ], [ %13, %154 ], [ %13, %177 ]
  ret ptr %233
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageStorageClass(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %3) #18
  ret i32 %4
}

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1031, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  tail call void @LockSemaphoreInfo(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !79
  %13 = add nsw i64 %12, -1
  store volatile i64 %13, ptr %11, align 8, !tbaa !79
  %14 = load volatile i64, ptr %11, align 8, !tbaa !79
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !80
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #18
  br i1 %15, label %17, label %68

17:                                               ; preds = %8
  tail call void @DestroyImagePixels(ptr noundef %0) #18
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %19)
  store ptr %22, ptr %18, align 8, !tbaa !164
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %25)
  store ptr %28, ptr %24, align 8, !tbaa !165
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !166
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @DestroyString(ptr noundef nonnull %31) #18
  store ptr %34, ptr %30, align 8, !tbaa !166
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !167
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @DestroyString(ptr noundef nonnull %37) #18
  store ptr %40, ptr %36, align 8, !tbaa !167
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #18
  store ptr %46, ptr %42, align 8, !tbaa !159
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !174
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyString(ptr noundef nonnull %49) #18
  store ptr %52, ptr %48, align 8, !tbaa !174
  br label %53

53:                                               ; preds = %51, %47
  tail call void @DestroyImageProfiles(ptr noundef %0) #18
  tail call void @DestroyImageProperties(ptr noundef %0) #18
  tail call void @DestroyImageArtifacts(ptr noundef %0) #18
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %55 = load ptr, ptr %54, align 8, !tbaa !160
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %55) #18
  store ptr %58, ptr %54, align 8, !tbaa !160
  br label %59

59:                                               ; preds = %57, %53
  tail call void @DestroyBlob(ptr noundef %0) #18
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %60) #18
  %62 = load ptr, ptr %9, align 8, !tbaa !80
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %9) #18
  br label %65

65:                                               ; preds = %64, %59
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 66
  store i64 -2880220588, ptr %66, align 8, !tbaa !81
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #18
  br label %68

68:                                               ; preds = %8, %65
  %69 = phi ptr [ %67, %65 ], [ null, %8 ]
  ret ptr %69
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageBackgroundColor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2151, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %1
  store i32 1, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %245, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %15 = load i16, ptr %14, align 2, !tbaa !150
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !151
  %19 = uitofp i16 %18 to float
  %20 = fsub float %16, %19
  %21 = fcmp olt float %20, 0.000000e+00
  %22 = fneg float %20
  %23 = select i1 %21, float %22, float %20
  %24 = fpext float %23 to double
  %25 = fcmp olt double %24, 1.000000e-15
  br i1 %25, label %26, label %35

26:                                               ; preds = %12
  %27 = load i16, ptr %13, align 2, !tbaa !152
  %28 = uitofp i16 %27 to float
  %29 = fsub float %19, %28
  %30 = fcmp olt float %29, 0.000000e+00
  %31 = fneg float %29
  %32 = select i1 %30, float %31, float %29
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %40, label %35

35:                                               ; preds = %26, %12
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !55
  switch i32 %37, label %40 [
    i32 19, label %38
    i32 17, label %38
    i32 2, label %38
  ]

38:                                               ; preds = %35, %35, %35
  %39 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %40

40:                                               ; preds = %35, %26, %38
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !175
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !147
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %50

50:                                               ; preds = %48, %44, %40
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %2) #18
  %51 = load i16, ptr %14, align 2, !tbaa !150
  %52 = uitofp i16 %51 to float
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %52, ptr %53, align 8, !tbaa !176
  %54 = load i16, ptr %17, align 2, !tbaa !151
  %55 = uitofp i16 %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %55, ptr %56, align 4, !tbaa !179
  %57 = load i16, ptr %13, align 2, !tbaa !152
  %58 = uitofp i16 %57 to float
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %58, ptr %59, align 8, !tbaa !180
  %60 = load i16, ptr %41, align 2, !tbaa !153
  %61 = uitofp i16 %60 to float
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %61, ptr %62, align 4, !tbaa !181
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !55
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %130

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !182
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = uitofp i16 %51 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fptrunc double %72 to float
  %74 = uitofp i16 %54 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  %77 = uitofp i16 %57 to double
  %78 = fmul double %77, 0x3EF0001000100010
  %79 = fptrunc double %78 to float
  br label %86

80:                                               ; preds = %66
  %81 = call float @DecodePixelGamma(float noundef %52) #22
  %82 = load float, ptr %56, align 4, !tbaa !179
  %83 = call float @DecodePixelGamma(float noundef %82) #22
  %84 = load float, ptr %59, align 8, !tbaa !180
  %85 = call float @DecodePixelGamma(float noundef %84) #22
  br label %86

86:                                               ; preds = %80, %70
  %87 = phi float [ %79, %70 ], [ %85, %80 ]
  %88 = phi float [ %76, %70 ], [ %83, %80 ]
  %89 = phi float [ %73, %70 ], [ %81, %80 ]
  %90 = call float @llvm.fabs.f32(float %89)
  %91 = fpext float %90 to double
  %92 = fcmp olt double %91, 1.000000e-15
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = call float @llvm.fabs.f32(float %88)
  %95 = fpext float %94 to double
  %96 = fcmp olt double %95, 1.000000e-15
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call float @llvm.fabs.f32(float %87)
  %99 = fpext float %98 to double
  %100 = fcmp olt double %99, 1.000000e-15
  br i1 %100, label %127, label %101

101:                                              ; preds = %97, %93, %86
  %102 = fsub float 1.000000e+00, %89
  %103 = fsub float 1.000000e+00, %88
  %104 = fsub float 1.000000e+00, %87
  %105 = fcmp olt float %103, %102
  %106 = select i1 %105, float %103, float %102
  %107 = fcmp olt float %104, %106
  %108 = select i1 %107, float %104, float %106
  %109 = fsub float %102, %108
  %110 = fpext float %109 to double
  %111 = fpext float %108 to double
  %112 = fsub double 1.000000e+00, %111
  %113 = fdiv double %110, %112
  %114 = fptrunc double %113 to float
  %115 = fsub float %103, %108
  %116 = fpext float %115 to double
  %117 = fdiv double %116, %112
  %118 = fptrunc double %117 to float
  %119 = fsub float %104, %108
  %120 = fpext float %119 to double
  %121 = fdiv double %120, %112
  %122 = fptrunc double %121 to float
  store i32 12, ptr %67, align 4, !tbaa !182
  %123 = fmul float %114, 6.553500e+04
  store float %123, ptr %53, align 8, !tbaa !176
  %124 = fmul float %118, 6.553500e+04
  store float %124, ptr %56, align 4, !tbaa !179
  %125 = fmul float %122, 6.553500e+04
  store float %125, ptr %59, align 8, !tbaa !180
  %126 = fmul float %108, 6.553500e+04
  br label %127

127:                                              ; preds = %97, %101
  %128 = phi float [ %126, %101 ], [ 6.553500e+04, %97 ]
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %128, ptr %129, align 8, !tbaa !183
  br label %130

130:                                              ; preds = %127, %50
  %131 = load float, ptr %53, align 8, !tbaa !176
  %132 = fcmp ugt float %131, 0.000000e+00
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = fcmp ult float %131, 6.553500e+04
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = fadd float %131, 5.000000e-01
  %137 = fptoui float %136 to i16
  %138 = zext i16 %137 to i64
  %139 = shl nuw nsw i64 %138, 32
  br label %140

140:                                              ; preds = %135, %133, %130
  %141 = phi i64 [ %139, %135 ], [ 0, %130 ], [ 281470681743360, %133 ]
  %142 = load float, ptr %56, align 4, !tbaa !179
  %143 = fcmp ugt float %142, 0.000000e+00
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = fcmp ult float %142, 6.553500e+04
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = fadd float %142, 5.000000e-01
  %148 = fptoui float %147 to i16
  %149 = zext i16 %148 to i64
  %150 = shl nuw nsw i64 %149, 16
  br label %151

151:                                              ; preds = %146, %144, %140
  %152 = phi i64 [ %150, %146 ], [ 0, %140 ], [ 4294901760, %144 ]
  %153 = load float, ptr %59, align 8, !tbaa !180
  %154 = fcmp ugt float %153, 0.000000e+00
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = fcmp ult float %153, 6.553500e+04
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  %158 = fadd float %153, 5.000000e-01
  %159 = fptoui float %158 to i16
  %160 = zext i16 %159 to i64
  br label %161

161:                                              ; preds = %157, %155, %151
  %162 = phi i64 [ %160, %157 ], [ 0, %151 ], [ 65535, %155 ]
  %163 = load float, ptr %62, align 4, !tbaa !181
  %164 = fcmp ugt float %163, 0.000000e+00
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = fcmp ult float %163, 6.553500e+04
  br i1 %166, label %167, label %172

167:                                              ; preds = %165
  %168 = fadd float %163, 5.000000e-01
  %169 = fptoui float %168 to i16
  %170 = zext i16 %169 to i64
  %171 = shl nuw i64 %170, 48
  br label %172

172:                                              ; preds = %167, %165, %161
  %173 = phi i64 [ %171, %167 ], [ 0, %161 ], [ -281474976710656, %165 ]
  %174 = load i32, ptr %63, align 4, !tbaa !55
  %175 = icmp eq i32 %174, 12
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = load i32, ptr %0, align 8, !tbaa !38
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %188

179:                                              ; preds = %172, %176
  %180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %181 = load float, ptr %180, align 8, !tbaa !183
  %182 = fcmp ugt float %181, 0.000000e+00
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = fcmp ult float %181, 6.553500e+04
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = fadd float %181, 5.000000e-01
  %187 = fptoui float %186 to i16
  br label %188

188:                                              ; preds = %179, %183, %185, %176
  %189 = phi i16 [ 0, %176 ], [ %187, %185 ], [ 0, %179 ], [ -1, %183 ]
  %190 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  %191 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %192 = load i64, ptr %191, align 8, !tbaa !88
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %242

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %196 = or i64 %152, %141
  %197 = or disjoint i64 %196, %162
  %198 = or i64 %197, %173
  br label %199

199:                                              ; preds = %194, %237
  %200 = phi i64 [ 0, %194 ], [ %239, %237 ]
  %201 = phi i32 [ 1, %194 ], [ %238, %237 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %237, label %203

203:                                              ; preds = %199
  %204 = load i64, ptr %195, align 8, !tbaa !86
  %205 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %190, i64 noundef 0, i64 noundef %200, i64 noundef %204, i64 noundef 1, ptr noundef nonnull %9) #22
  %206 = icmp eq ptr %205, null
  br i1 %206, label %237, label %207

207:                                              ; preds = %203
  %208 = load i64, ptr %195, align 8, !tbaa !86
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207, %210
  %211 = phi i64 [ %214, %210 ], [ 0, %207 ]
  %212 = phi ptr [ %213, %210 ], [ %205, %207 ]
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %212, i64 1
  store i64 %198, ptr %212, align 2
  %214 = add nuw nsw i64 %211, 1
  %215 = load i64, ptr %195, align 8, !tbaa !86
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %210, label %217, !llvm.loop !184

217:                                              ; preds = %210, %207
  %218 = load i32, ptr %63, align 4, !tbaa !55
  %219 = icmp eq i32 %218, 12
  br i1 %219, label %220, label %233

220:                                              ; preds = %217
  %221 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %190) #18
  %222 = load i64, ptr %195, align 8, !tbaa !86
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %220
  %225 = icmp eq ptr %221, null
  br label %226

226:                                              ; preds = %224, %230
  %227 = phi i64 [ 0, %224 ], [ %231, %230 ]
  br i1 %225, label %230, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds i16, ptr %221, i64 %227
  store i16 %189, ptr %229, align 2, !tbaa !154
  br label %230

230:                                              ; preds = %226, %228
  %231 = add nuw nsw i64 %227, 1
  %232 = icmp eq i64 %231, %222
  br i1 %232, label %233, label %226, !llvm.loop !185

233:                                              ; preds = %230, %220, %217
  %234 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %190, ptr noundef nonnull %9) #22
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i32
  br label %237

237:                                              ; preds = %203, %199, %233
  %238 = phi i32 [ %236, %233 ], [ 0, %199 ], [ 0, %203 ]
  %239 = add nuw nsw i64 %200, 1
  %240 = load i64, ptr %191, align 8, !tbaa !88
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %199, label %242, !llvm.loop !186

242:                                              ; preds = %237, %188
  %243 = phi i32 [ 1, %188 ], [ %238, %237 ]
  %244 = call ptr @DestroyCacheView(ptr noundef %190) #18
  br label %245

245:                                              ; preds = %8, %242
  %246 = phi i32 [ %243, %242 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #18
  ret i32 %246
}

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GravityAdjustGeometry(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @CatchImageException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @AcquireExceptionInfo() #18
  %10 = load i32, ptr %2, align 8, !tbaa !78
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %13) #18
  br label %15

15:                                               ; preds = %12, %8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %15, %27
  %18 = phi ptr [ %28, %27 ], [ %0, %15 ]
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  %20 = load i32, ptr %19, align 8, !tbaa !187
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %9, align 8, !tbaa !188
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @InheritException(ptr noundef nonnull %9, ptr noundef nonnull %19) #18
  br label %26

26:                                               ; preds = %25, %22
  store i32 0, ptr %19, align 8, !tbaa !187
  br label %27

27:                                               ; preds = %26, %17
  %28 = tail call ptr @GetNextImageInList(ptr noundef nonnull %18) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !189

30:                                               ; preds = %27, %15
  tail call void @CatchException(ptr noundef %9) #18
  %31 = load i32, ptr %9, align 8, !tbaa !188
  %32 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #18
  ret i32 %31
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GetImageException(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %0, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %9, %21
  %12 = phi ptr [ %22, %21 ], [ %0, %9 ]
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58
  %14 = load i32, ptr %13, align 8, !tbaa !187
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 8, !tbaa !188
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @InheritException(ptr noundef nonnull %1, ptr noundef nonnull %13) #18
  br label %20

20:                                               ; preds = %19, %16
  store i32 0, ptr %13, align 8, !tbaa !187
  br label %21

21:                                               ; preds = %11, %20
  %22 = tail call ptr @GetNextImageInList(ptr noundef nonnull %12) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !189

24:                                               ; preds = %21, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ClipImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClipImagePath(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1), !range !149
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 709, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @AcquireString(ptr noundef %1) #18
  %12 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %11, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %1) #18
  %13 = tail call ptr @GetImageProperty(ptr noundef %0, ptr noundef %11) #18
  %14 = tail call ptr @DestroyString(ptr noundef %11) #18
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call ptr @__errno_location() #20
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = tail call ptr @GetExceptionMessage(i32 noundef %18) #18
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, i32 noundef 410, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %21, ptr noundef %19) #18
  %23 = tail call ptr @DestroyString(ptr noundef %19) #18
  br label %52

24:                                               ; preds = %10
  %25 = tail call ptr @AcquireImageInfo()
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %25, i64 0, i32 51
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 4096) #18
  %29 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %26, ptr noundef %1, i64 noundef 4096) #18
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = tail call ptr @BlobToImage(ptr noundef %25, ptr noundef nonnull %13, i64 noundef %30, ptr noundef nonnull %31) #18
  %33 = tail call ptr @DestroyImageInfo(ptr noundef %25)
  %34 = icmp eq ptr %32, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %32, align 8, !tbaa !38
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = tail call i32 @SyncImage(ptr noundef nonnull %32), !range !149
  store i32 1, ptr %32, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  %41 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %32, ptr noundef nonnull %40) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38, %35
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = tail call i32 @NegateImage(ptr noundef nonnull %32, i32 noundef 0) #18
  br label %47

47:                                               ; preds = %45, %43
  %48 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 54
  %49 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %48, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %1) #18
  %50 = tail call i32 @SetImageClipMask(ptr noundef %0, ptr noundef nonnull %32), !range !149
  %51 = tail call ptr @DestroyImage(ptr noundef nonnull %32)
  br label %52

52:                                               ; preds = %38, %24, %47, %16
  %53 = phi i32 [ 0, %16 ], [ 1, %47 ], [ 0, %24 ], [ 0, %38 ]
  ret i32 %53
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !143
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #18
  store ptr %13, ptr %9, align 8, !tbaa !84
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyString(ptr noundef nonnull %16) #18
  store ptr %19, ptr %15, align 8, !tbaa !91
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @DestroyString(ptr noundef nonnull %22) #18
  store ptr %25, ptr %21, align 8, !tbaa !190
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyString(ptr noundef nonnull %28) #18
  store ptr %31, ptr %27, align 8, !tbaa !108
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !191
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @DestroyString(ptr noundef nonnull %34) #18
  store ptr %37, ptr %33, align 8, !tbaa !191
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !192
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @DestroyString(ptr noundef nonnull %40) #18
  store ptr %43, ptr %39, align 8, !tbaa !192
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @DestroyString(ptr noundef nonnull %46) #18
  store ptr %49, ptr %45, align 8, !tbaa !193
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !194
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @DestroyString(ptr noundef nonnull %52) #18
  store ptr %55, ptr %51, align 8, !tbaa !194
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @DestroyString(ptr noundef nonnull %58) #18
  store ptr %61, ptr %57, align 8, !tbaa !103
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %64 = load ptr, ptr %63, align 8, !tbaa !195
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @DestroyString(ptr noundef nonnull %64) #18
  store ptr %67, ptr %63, align 8, !tbaa !195
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @DestroyString(ptr noundef nonnull %70) #18
  store ptr %73, ptr %69, align 8, !tbaa !196
  br label %74

74:                                               ; preds = %72, %68
  tail call void @DestroyImageOptions(ptr noundef %0) #18
  %75 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %76 = load ptr, ptr %75, align 8, !tbaa !117
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %76) #18
  store ptr %79, ptr %75, align 8, !tbaa !117
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %82 = load ptr, ptr %81, align 8, !tbaa !197
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %82) #18
  store ptr %85, ptr %81, align 8, !tbaa !197
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 -2880220588, ptr %87, align 8, !tbaa !144
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #18
  ret ptr %88
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3420, ptr noundef nonnull @.str.2) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, ptr %0, align 8, !tbaa !38
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %102, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #18
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !88
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %22

22:                                               ; preds = %16, %83
  %23 = phi i64 [ 0, %16 ], [ %86, %83 ]
  %24 = phi i32 [ 1, %16 ], [ %85, %83 ]
  %25 = phi i32 [ 0, %16 ], [ %84, %83 ]
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %22
  %28 = load i64, ptr %17, align 8, !tbaa !86
  %29 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %12, i64 noundef 0, i64 noundef %23, i64 noundef %28, i64 noundef 1, ptr noundef nonnull %11) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %83, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %12) #18
  %33 = load i64, ptr %17, align 8, !tbaa !86
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %31
  %36 = icmp eq ptr %32, null
  %37 = load i64, ptr %18, align 8, !tbaa !124
  %38 = load i32, ptr %19, align 8, !tbaa !147
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %35, %74
  %41 = phi i64 [ 0, %35 ], [ %76, %74 ]
  %42 = phi ptr [ %29, %35 ], [ %75, %74 ]
  %43 = phi i32 [ %25, %35 ], [ %51, %74 ]
  br i1 %36, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i16, ptr %32, i64 %41
  %46 = load i16, ptr %45, align 2, !tbaa !154
  %47 = zext i16 %46 to i64
  br label %48

48:                                               ; preds = %40, %44
  %49 = phi i64 [ %47, %44 ], [ 0, %40 ]
  %50 = icmp ugt i64 %37, %49
  %51 = select i1 %50, i32 %43, i32 1
  %52 = select i1 %50, i64 %49, i64 0
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 2
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 1
  br i1 %39, label %55, label %63

55:                                               ; preds = %48
  %56 = load ptr, ptr %21, align 8, !tbaa !159
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %52, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !150
  store i16 %58, ptr %53, align 2, !tbaa !150
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %52, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !151
  store i16 %60, ptr %54, align 2, !tbaa !151
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %52
  %62 = load i16, ptr %61, align 2, !tbaa !152
  store i16 %62, ptr %42, align 2, !tbaa !152
  br label %74

63:                                               ; preds = %48
  %64 = load ptr, ptr %20, align 8, !tbaa !159
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %52, i32 2
  %66 = load i16, ptr %65, align 2, !tbaa !150
  store i16 %66, ptr %53, align 2, !tbaa !150
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %52, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !151
  store i16 %68, ptr %54, align 2, !tbaa !151
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %52
  %70 = load i16, ptr %69, align 2, !tbaa !152
  store i16 %70, ptr %42, align 2, !tbaa !152
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %52, i32 3
  %72 = load i16, ptr %71, align 2, !tbaa !153
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 3
  store i16 %72, ptr %73, align 2, !tbaa !153
  br label %74

74:                                               ; preds = %63, %55
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 1
  %76 = add nuw nsw i64 %41, 1
  %77 = icmp eq i64 %76, %33
  br i1 %77, label %78, label %40, !llvm.loop !198

78:                                               ; preds = %74, %31
  %79 = phi i32 [ %25, %31 ], [ %51, %74 ]
  %80 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %12, ptr noundef nonnull %11) #22
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %27, %22, %78
  %84 = phi i32 [ %25, %22 ], [ %25, %27 ], [ %79, %78 ]
  %85 = phi i32 [ 0, %22 ], [ 0, %27 ], [ %82, %78 ]
  %86 = add nuw nsw i64 %23, 1
  %87 = load i64, ptr %13, align 8, !tbaa !88
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %22, label %89, !llvm.loop !199

89:                                               ; preds = %83
  %90 = icmp ne i32 %84, 0
  br label %91

91:                                               ; preds = %89, %10
  %92 = phi i1 [ false, %10 ], [ %90, %89 ]
  %93 = phi i32 [ 1, %10 ], [ %85, %89 ]
  %94 = tail call ptr @DestroyCacheView(ptr noundef %12) #18
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %96 = load i32, ptr %95, align 8, !tbaa !74
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i1 %92, i1 false
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %101 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3470, i32 noundef 425, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, ptr noundef nonnull %100) #18
  br label %102

102:                                              ; preds = %91, %99, %7
  %103 = phi i32 [ 0, %7 ], [ %93, %99 ], [ %93, %91 ]
  ret i32 %103
}

declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetImageClipMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2393, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !86
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !88
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16, %10
  %23 = icmp eq ptr %0, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2398, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #18
  br label %44

28:                                               ; preds = %16, %8
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !164
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %30)
  store ptr %33, ptr %29, align 8, !tbaa !164
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call ptr @NewImageList() #18
  store ptr %35, ptr %29, align 8, !tbaa !164
  br i1 %9, label %44, label %36

36:                                               ; preds = %34
  store i32 1, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %38 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %37) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %37)
  store ptr %41, ptr %29, align 8, !tbaa !164
  %42 = icmp ne ptr %41, null
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %40, %36, %34, %22, %24
  %45 = phi i32 [ 0, %24 ], [ 0, %22 ], [ 1, %34 ], [ 0, %36 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Ascii85Initialize(ptr noundef) local_unnamed_addr #2

declare ptr @NewImageList() local_unnamed_addr #2

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ReferencePixelCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

declare ptr @ClonePixelCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireImageInfo()
  %3 = icmp eq ptr %0, null
  br i1 %3, label %204, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !94
  store i32 %5, ptr %2, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !200
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !200
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !139
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !139
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !141
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !141
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !201
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 10
  store i64 %16, ptr %17, align 8, !tbaa !201
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %19 = load i64, ptr %18, align 8, !tbaa !202
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 11
  store i64 %19, ptr %20, align 8, !tbaa !202
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %22 = load i64, ptr %21, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 12
  store i64 %22, ptr %23, align 8, !tbaa !109
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 6
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = tail call ptr @CloneString(ptr noundef nonnull %24, ptr noundef %26) #18
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 7
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = tail call ptr @CloneString(ptr noundef nonnull %28, ptr noundef %30) #18
  %32 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 9
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = tail call ptr @CloneString(ptr noundef nonnull %32, ptr noundef %34) #18
  %36 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 8
  %37 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = tail call ptr @CloneString(ptr noundef nonnull %36, ptr noundef %38) #18
  %40 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 13
  store i32 %41, ptr %42, align 8, !tbaa !100
  %43 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %44 = load i32, ptr %43, align 4, !tbaa !98
  %45 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 14
  store i32 %44, ptr %45, align 4, !tbaa !98
  %46 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !101
  %48 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 15
  store i32 %47, ptr %48, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %50 = load i64, ptr %49, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 16
  store i64 %50, ptr %51, align 8, !tbaa !96
  %52 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 17
  %53 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !191
  %55 = tail call ptr @CloneString(ptr noundef nonnull %52, ptr noundef %54) #18
  %56 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 18
  %57 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !192
  %59 = tail call ptr @CloneString(ptr noundef nonnull %56, ptr noundef %58) #18
  %60 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 19
  %61 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !193
  %63 = tail call ptr @CloneString(ptr noundef nonnull %60, ptr noundef %62) #18
  %64 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 20
  %65 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = tail call ptr @CloneString(ptr noundef nonnull %64, ptr noundef %66) #18
  %68 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 21
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %70 = load ptr, ptr %69, align 8, !tbaa !103
  %71 = tail call ptr @CloneString(ptr noundef nonnull %68, ptr noundef %70) #18
  %72 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 22
  %73 = load double, ptr %72, align 8, !tbaa !203
  %74 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 22
  store double %73, ptr %74, align 8, !tbaa !203
  %75 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 23
  %76 = load double, ptr %75, align 8, !tbaa !204
  %77 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 23
  store double %76, ptr %77, align 8, !tbaa !204
  %78 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 56
  %79 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 56
  %80 = load i64, ptr %79, align 8
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 24
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %83 = load i64, ptr %82, align 8
  store i64 %83, ptr %81, align 8
  %84 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 25
  %85 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %86 = load i64, ptr %85, align 8
  store i64 %86, ptr %84, align 8
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 26
  %88 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %89 = load i64, ptr %88, align 8
  store i64 %89, ptr %87, align 8
  %90 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 59
  %91 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %92 = load i64, ptr %91, align 4
  store i64 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %94 = load i32, ptr %93, align 8, !tbaa !110
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 27
  store i32 %94, ptr %95, align 8, !tbaa !110
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 28
  %97 = load i32, ptr %96, align 4, !tbaa !205
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 28
  store i32 %97, ptr %98, align 4, !tbaa !205
  %99 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 29
  %100 = load i64, ptr %99, align 8, !tbaa !206
  %101 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 29
  store i64 %100, ptr %101, align 8, !tbaa !206
  %102 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 30
  %103 = load i32, ptr %102, align 8, !tbaa !207
  %104 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 30
  store i32 %103, ptr %104, align 8, !tbaa !207
  %105 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 31
  %106 = load i32, ptr %105, align 4, !tbaa !208
  %107 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 31
  store i32 %106, ptr %107, align 4, !tbaa !208
  %108 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !209
  %110 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 1
  store i32 %109, ptr %110, align 4, !tbaa !209
  %111 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 32
  %112 = load i32, ptr %111, align 8, !tbaa !210
  %113 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 32
  store i32 %112, ptr %113, align 8, !tbaa !210
  %114 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 33
  %115 = load i64, ptr %114, align 8, !tbaa !211
  %116 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 33
  store i64 %115, ptr %116, align 8, !tbaa !211
  %117 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 34
  %118 = load i32, ptr %117, align 8, !tbaa !112
  %119 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 34
  store i32 %118, ptr %119, align 8, !tbaa !112
  %120 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 35
  %121 = load i32, ptr %120, align 4, !tbaa !212
  %122 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 35
  store i32 %121, ptr %122, align 4, !tbaa !212
  %123 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 36
  %124 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %125 = load ptr, ptr %124, align 8, !tbaa !195
  %126 = tail call ptr @CloneString(ptr noundef nonnull %123, ptr noundef %125) #18
  %127 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 37
  %128 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %129 = load ptr, ptr %128, align 8, !tbaa !196
  %130 = tail call ptr @CloneString(ptr noundef nonnull %127, ptr noundef %129) #18
  %131 = tail call i32 @CloneImageOptions(ptr noundef nonnull %2, ptr noundef nonnull %0) #18
  %132 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %133 = load ptr, ptr %132, align 8, !tbaa !113
  %134 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 41
  store ptr %133, ptr %134, align 8, !tbaa !113
  %135 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 42
  %136 = load ptr, ptr %135, align 8, !tbaa !115
  %137 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 42
  store ptr %136, ptr %137, align 8, !tbaa !115
  %138 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %139 = load ptr, ptr %138, align 8, !tbaa !117
  %140 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 43
  store ptr %139, ptr %140, align 8, !tbaa !117
  %141 = load ptr, ptr %138, align 8, !tbaa !117
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %4
  %144 = tail call ptr @ReferencePixelCache(ptr noundef nonnull %141) #18
  store ptr %144, ptr %140, align 8, !tbaa !117
  br label %145

145:                                              ; preds = %143, %4
  %146 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %147 = load ptr, ptr %146, align 8, !tbaa !197
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = tail call ptr @CloneStringInfo(ptr noundef nonnull %147) #18
  %151 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 60
  store ptr %150, ptr %151, align 8, !tbaa !197
  br label %152

152:                                              ; preds = %149, %145
  %153 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %154 = load ptr, ptr %153, align 8, !tbaa !82
  %155 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 52
  %156 = load i32, ptr %155, align 8, !tbaa !143
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 51
  %160 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %159) #18
  br label %161

161:                                              ; preds = %152, %158
  %162 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 45
  store ptr %154, ptr %162, align 8, !tbaa !82
  %163 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  %164 = load ptr, ptr %163, align 8, !tbaa !213
  %165 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  %166 = load i64, ptr %165, align 8, !tbaa !214
  %167 = load i32, ptr %155, align 8, !tbaa !143
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 51
  %171 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %170) #18
  br label %172

172:                                              ; preds = %161, %169
  %173 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 46
  store ptr %164, ptr %173, align 8, !tbaa !213
  %174 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 47
  store i64 %166, ptr %174, align 8, !tbaa !214
  %175 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %176 = load ptr, ptr %175, align 8, !tbaa !215
  %177 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 44
  store ptr %176, ptr %177, align 8, !tbaa !215
  %178 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 58
  %179 = load i32, ptr %178, align 8, !tbaa !216
  %180 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 58
  store i32 %179, ptr %180, align 8, !tbaa !216
  %181 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 48
  %182 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %183 = tail call i64 @CopyMagickString(ptr noundef nonnull %181, ptr noundef nonnull %182, i64 noundef 4096) #18
  %184 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 49
  %185 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  %186 = tail call i64 @CopyMagickString(ptr noundef nonnull %184, ptr noundef nonnull %185, i64 noundef 4096) #18
  %187 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 50
  %188 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  %189 = tail call i64 @CopyMagickString(ptr noundef nonnull %187, ptr noundef nonnull %188, i64 noundef 4096) #18
  %190 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 51
  %191 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %192 = tail call i64 @CopyMagickString(ptr noundef nonnull %190, ptr noundef nonnull %191, i64 noundef 4096) #18
  %193 = load i64, ptr %15, align 8, !tbaa !201
  %194 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 54
  store i64 %193, ptr %194, align 8, !tbaa !217
  %195 = load i64, ptr %18, align 8, !tbaa !202
  %196 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 55
  store i64 %195, ptr %196, align 8, !tbaa !218
  %197 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %198 = load i32, ptr %197, align 8, !tbaa !140
  %199 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 38
  store i32 %198, ptr %199, align 8, !tbaa !140
  %200 = tail call i32 @IsEventLogging() #18
  store i32 %200, ptr %155, align 8, !tbaa !143
  %201 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  %202 = load i64, ptr %201, align 8, !tbaa !144
  %203 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 57
  store i64 %202, ptr %203, align 8, !tbaa !144
  br label %204

204:                                              ; preds = %1, %172
  ret ptr %2
}

declare i32 @CloneImageOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CloneStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SetImageInfoFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !143
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetImageInfoBlob(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  store ptr %1, ptr %11, align 8, !tbaa !213
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  store i64 %2, ptr %12, align 8, !tbaa !214
  ret void
}

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroyImagePixels(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare void @DestroyImageProfiles(ptr noundef) local_unnamed_addr #2

declare void @DestroyImageProperties(ptr noundef) local_unnamed_addr #2

declare void @DestroyImageArtifacts(ptr noundef) local_unnamed_addr #2

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroyImageOptions(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyPixelCache(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DisassociateImageStream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = tail call ptr @DetachBlob(ptr noundef %10) #18
  ret void
}

declare ptr @DetachBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetImageClipMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1)
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetImageInfoFile(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetImageMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1360, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1)
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageChannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1395, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %10 = load i64, ptr %9, align 8, !tbaa !158
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageReferenceCount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  tail call void @LockSemaphoreInfo(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !79
  %13 = load ptr, ptr %9, align 8, !tbaa !80
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #18
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageVirtualPixelMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1465, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef %0) #18
  ret i32 %9
}

declare i32 @GetPixelCacheVirtualMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @InterpretImageFilename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %8 = tail call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #18
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = icmp ne ptr %1, null
  %13 = icmp ne ptr %0, null
  %14 = ptrtoint ptr %2 to i64
  %15 = ptrtoint ptr %2 to i64
  br label %20

16:                                               ; preds = %114, %5
  %17 = phi i32 [ 0, %5 ], [ %115, %114 ]
  %18 = ptrtoint ptr %4 to i64
  %19 = add i64 %18, 4096
  br label %121

20:                                               ; preds = %11, %114
  %21 = phi i64 [ 0, %11 ], [ %117, %114 ]
  %22 = phi ptr [ %9, %11 ], [ %119, %114 ]
  %23 = phi i32 [ 0, %11 ], [ %115, %114 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %24, ptr %6, align 8, !tbaa !120
  %25 = load i8, ptr %24, align 1, !tbaa !121
  switch i8 %25, label %30 [
    i8 37, label %26
    i8 48, label %28
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %22, i64 2
  br label %114

28:                                               ; preds = %20
  %29 = call i64 @strtol(ptr noundef nonnull %24, ptr noundef nonnull %6, i32 noundef 10) #18
  br label %30

30:                                               ; preds = %20, %28
  %31 = load ptr, ptr %6, align 8, !tbaa !120
  %32 = load i8, ptr %31, align 1, !tbaa !121
  switch i8 %32, label %114 [
    i8 100, label %33
    i8 111, label %33
    i8 120, label %33
    i8 91, label %45
  ]

33:                                               ; preds = %30, %30, %30
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %34, ptr %6, align 8, !tbaa !120
  %35 = load i8, ptr %34, align 1, !tbaa !121
  store i8 0, ptr %34, align 1, !tbaa !121
  %36 = ptrtoint ptr %22 to i64
  %37 = sub i64 %36, %15
  %38 = getelementptr inbounds i8, ptr %4, i64 %37
  %39 = sub nsw i64 4096, %37
  %40 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %38, i64 noundef %39, ptr noundef nonnull %22, i32 noundef %3) #18
  store i8 %35, ptr %34, align 1, !tbaa !121
  %41 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %34, i64 noundef 4096) #18
  %42 = load i8, ptr %31, align 1, !tbaa !121
  %43 = icmp eq i8 %42, 37
  %44 = select i1 %43, ptr %24, ptr %22
  br label %114

45:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  %46 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %22, i32 noundef 93) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %110, label %48

48:                                               ; preds = %45, %62
  %49 = phi i64 [ %60, %62 ], [ 1, %45 ]
  %50 = phi i64 [ %64, %62 ], [ 0, %45 ]
  %51 = phi ptr [ %52, %62 ], [ %31, %45 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !121
  switch i8 %53, label %56 [
    i8 0, label %66
    i8 91, label %54
  ]

54:                                               ; preds = %48
  %55 = add nsw i64 %49, 1
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi i64 [ %55, %54 ], [ %49, %48 ]
  %58 = icmp eq i8 %53, 93
  %59 = sext i1 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = icmp slt i64 %60, 1
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %50
  store i8 %53, ptr %63, align 1, !tbaa !121
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, 4095
  br i1 %65, label %66, label %48, !llvm.loop !219

66:                                               ; preds = %48, %62, %56
  %67 = phi ptr [ %51, %48 ], [ %52, %62 ], [ %51, %56 ]
  %68 = phi i64 [ %50, %48 ], [ 4095, %62 ], [ %50, %56 ]
  %69 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !121
  %70 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i64 noundef 9) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  br i1 %12, label %73, label %75

73:                                               ; preds = %72
  %74 = call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull %7) #18
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi ptr [ %74, %73 ], [ null, %72 ]
  %77 = icmp eq ptr %76, null
  %78 = and i1 %12, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %7) #18
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ %76, %75 ]
  %83 = icmp eq ptr %82, null
  %84 = and i1 %13, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %7) #18
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ %82, %81 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %110, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %31, i64 -1
  store ptr %91, ptr %6, align 8, !tbaa !120
  %92 = load i8, ptr %91, align 1, !tbaa !121
  store i8 0, ptr %91, align 1, !tbaa !121
  %93 = ptrtoint ptr %22 to i64
  %94 = add i64 %21, %14
  %95 = sub i64 %93, %94
  %96 = getelementptr inbounds i8, ptr %4, i64 %95
  %97 = sub i64 4096, %95
  %98 = call i64 @CopyMagickString(ptr noundef %96, ptr noundef nonnull %88, i64 noundef %97) #18
  %99 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #24
  %100 = add i64 %21, -1
  %101 = add i64 %100, %99
  %102 = load ptr, ptr %6, align 8, !tbaa !120
  store i8 %92, ptr %102, align 1, !tbaa !121
  %103 = getelementptr inbounds i8, ptr %67, i64 2
  %104 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %103, i64 noundef 4096) #18
  %105 = load ptr, ptr %6, align 8, !tbaa !120
  %106 = getelementptr inbounds i8, ptr %105, i64 -1
  %107 = load i8, ptr %106, align 1, !tbaa !121
  %108 = icmp eq i8 %107, 37
  %109 = select i1 %108, ptr %24, ptr %22
  br label %110

110:                                              ; preds = %90, %87, %66, %45
  %111 = phi i32 [ %23, %45 ], [ %23, %66 ], [ %23, %87 ], [ 1, %90 ]
  %112 = phi ptr [ %22, %45 ], [ %22, %66 ], [ %22, %87 ], [ %109, %90 ]
  %113 = phi i64 [ %21, %45 ], [ %21, %66 ], [ %21, %87 ], [ %101, %90 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  br label %114

114:                                              ; preds = %33, %110, %30, %26
  %115 = phi i32 [ %23, %26 ], [ %23, %30 ], [ %111, %110 ], [ 1, %33 ]
  %116 = phi ptr [ %27, %26 ], [ %22, %30 ], [ %112, %110 ], [ %44, %33 ]
  %117 = phi i64 [ %21, %26 ], [ %21, %30 ], [ %113, %110 ], [ %21, %33 ]
  %118 = getelementptr inbounds i8, ptr %116, i64 1
  %119 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %118, i32 noundef 37) #24
  %120 = icmp eq ptr %119, null
  br i1 %120, label %16, label %20, !llvm.loop !220

121:                                              ; preds = %16, %133
  %122 = phi ptr [ %136, %133 ], [ %4, %16 ]
  %123 = phi i32 [ %134, %133 ], [ %17, %16 ]
  store ptr %122, ptr %6, align 8, !tbaa !120
  %124 = load i8, ptr %122, align 1, !tbaa !121
  switch i8 %124, label %133 [
    i8 0, label %137
    i8 37, label %125
  ]

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %122, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !121
  %128 = icmp eq i8 %127, 37
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = ptrtoint ptr %122 to i64
  %131 = sub i64 %19, %130
  %132 = call i64 @CopyMagickString(ptr noundef nonnull %122, ptr noundef nonnull %126, i64 noundef %131) #18
  br label %133

133:                                              ; preds = %121, %125, %129
  %134 = phi i32 [ 1, %129 ], [ %123, %125 ], [ %123, %121 ]
  %135 = load ptr, ptr %6, align 8, !tbaa !120
  %136 = getelementptr inbounds i8, ptr %135, i64 1
  br label %121, !llvm.loop !221

137:                                              ; preds = %121
  %138 = icmp eq i32 %123, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  %140 = call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #18
  br label %141

141:                                              ; preds = %139, %137
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i64 %142
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @IsHighDynamicRangeImage(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #14 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsImageObject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %7, %14
  %10 = phi ptr [ %15, %14 ], [ %0, %7 ]
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 66
  %12 = load i64, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i64 %12, 2880220587
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call ptr @GetNextImageInList(ptr noundef nonnull %10) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !222

17:                                               ; preds = %9, %14, %7
  %18 = phi i32 [ 1, %7 ], [ 0, %9 ], [ 1, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsTaintImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, ptr noundef nonnull @.str.2) #18
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %11 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #18
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 4096) #18
  %14 = icmp eq ptr %0, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %9, %28
  %16 = phi ptr [ %29, %28 ], [ %0, %9 ]
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !133
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 55
  %22 = call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef nonnull %2) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 53
  %26 = call i32 @LocaleCompare(ptr noundef nonnull %25, ptr noundef nonnull %3) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call ptr @GetNextImageInList(ptr noundef nonnull %16) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !223

31:                                               ; preds = %15, %20, %24, %28, %9
  %32 = phi i32 [ 0, %9 ], [ 1, %15 ], [ 1, %20 ], [ 1, %24 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #18
  ret i32 %32
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ModifyImage(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1884, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %0, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !78
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %16) #18
  br label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 61
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  tail call void @LockSemaphoreInfo(ptr noundef %20) #18
  %21 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 60
  %22 = load volatile i64, ptr %21, align 8, !tbaa !79
  %23 = load ptr, ptr %19, align 8, !tbaa !80
  tail call void @UnlockSemaphoreInfo(ptr noundef %23) #18
  %24 = icmp slt i64 %22, 2
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %0, align 8, !tbaa !120
  %27 = tail call ptr @CloneImage(ptr noundef %26, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1)
  %28 = load ptr, ptr %0, align 8, !tbaa !120
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 61
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  tail call void @LockSemaphoreInfo(ptr noundef %30) #18
  %31 = load ptr, ptr %0, align 8, !tbaa !120
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 60
  %33 = load volatile i64, ptr %32, align 8, !tbaa !79
  %34 = add nsw i64 %33, -1
  store volatile i64 %34, ptr %32, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 61
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  tail call void @UnlockSemaphoreInfo(ptr noundef %36) #18
  store ptr %27, ptr %0, align 8, !tbaa !120
  br label %37

37:                                               ; preds = %18, %25
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NewMagickImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, ptr noundef nonnull @.str.2) #18
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call ptr @AcquireImage(ptr noundef %0)
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 7
  store i64 %1, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 8
  store i64 %2, ptr %13, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !182
  %16 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !224
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 6
  store i32 %18, ptr %19, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 31
  store double %21, ptr %22, align 8, !tbaa !126
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !226
  %25 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 9
  store i64 %24, ptr %25, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %11, ptr noundef nonnull %26) #18
  %28 = load i64, ptr %13, align 8, !tbaa !88
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %129

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  br label %36

36:                                               ; preds = %30, %119
  %37 = phi i32 [ 1, %30 ], [ %120, %119 ]
  %38 = phi i64 [ 0, %30 ], [ %121, %119 ]
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %119, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %12, align 8, !tbaa !86
  %42 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %38, i64 noundef %41, i64 noundef 1, ptr noundef nonnull %26) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %119, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #18
  %46 = load i64, ptr %12, align 8, !tbaa !86
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %115

48:                                               ; preds = %44
  %49 = load float, ptr %31, align 8, !tbaa !176
  %50 = fcmp ole float %49, 0.000000e+00
  %51 = fcmp oge float %49, 6.553500e+04
  %52 = fadd float %49, 5.000000e-01
  %53 = fptoui float %52 to i16
  %54 = load float, ptr %32, align 4, !tbaa !179
  %55 = fcmp ole float %54, 0.000000e+00
  %56 = fcmp oge float %54, 6.553500e+04
  %57 = fadd float %54, 5.000000e-01
  %58 = fptoui float %57 to i16
  %59 = load float, ptr %33, align 8, !tbaa !180
  %60 = fcmp ole float %59, 0.000000e+00
  %61 = fcmp oge float %59, 6.553500e+04
  %62 = fadd float %59, 5.000000e-01
  %63 = fptoui float %62 to i16
  %64 = load float, ptr %34, align 4, !tbaa !181
  %65 = fcmp ole float %64, 0.000000e+00
  %66 = fcmp oge float %64, 6.553500e+04
  %67 = fadd float %64, 5.000000e-01
  %68 = fptoui float %67 to i16
  %69 = load i32, ptr %16, align 4, !tbaa !55
  %70 = icmp eq i32 %69, 12
  %71 = icmp ne ptr %45, null
  %72 = icmp eq ptr %45, null
  %73 = or i1 %50, %51
  %74 = xor i1 %50, true
  %75 = sext i1 %74 to i16
  %76 = select i1 %73, i16 %75, i16 %53
  %77 = or i1 %55, %56
  %78 = xor i1 %55, true
  %79 = sext i1 %78 to i16
  %80 = select i1 %77, i16 %79, i16 %58
  %81 = or i1 %60, %61
  %82 = xor i1 %60, true
  %83 = sext i1 %82 to i16
  %84 = select i1 %81, i16 %83, i16 %63
  %85 = or i1 %65, %66
  %86 = xor i1 %65, true
  %87 = sext i1 %86 to i16
  %88 = select i1 %85, i16 %87, i16 %68
  br label %89

89:                                               ; preds = %48, %111
  %90 = phi i64 [ 0, %48 ], [ %113, %111 ]
  %91 = phi ptr [ %42, %48 ], [ %112, %111 ]
  %92 = getelementptr inbounds i16, ptr %45, i64 %90
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  store i16 %76, ptr %93, align 2, !tbaa !150
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  store i16 %80, ptr %94, align 2, !tbaa !151
  store i16 %84, ptr %91, align 2, !tbaa !152
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  store i16 %88, ptr %95, align 2, !tbaa !153
  br i1 %70, label %100, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %11, align 8, !tbaa !38
  %98 = icmp eq i32 %97, 2
  %99 = and i1 %71, %98
  br i1 %99, label %101, label %111

100:                                              ; preds = %89
  br i1 %72, label %111, label %101

101:                                              ; preds = %100, %96
  %102 = load float, ptr %35, align 8, !tbaa !183
  %103 = fcmp ugt float %102, 0.000000e+00
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = fcmp ult float %102, 6.553500e+04
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = fadd float %102, 5.000000e-01
  %108 = fptoui float %107 to i16
  br label %109

109:                                              ; preds = %106, %104, %101
  %110 = phi i16 [ %108, %106 ], [ 0, %101 ], [ -1, %104 ]
  store i16 %110, ptr %92, align 2, !tbaa !154
  br label %111

111:                                              ; preds = %96, %100, %109
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %113 = add nuw nsw i64 %90, 1
  %114 = icmp eq i64 %113, %46
  br i1 %114, label %115, label %89, !llvm.loop !227

115:                                              ; preds = %111, %44
  %116 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef nonnull %26) #22
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  br label %119

119:                                              ; preds = %40, %36, %115
  %120 = phi i32 [ %118, %115 ], [ 0, %36 ], [ 0, %40 ]
  %121 = add nuw nsw i64 %38, 1
  %122 = load i64, ptr %13, align 8, !tbaa !88
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %36, label %124, !llvm.loop !228

124:                                              ; preds = %119
  %125 = icmp eq i32 %120, 0
  %126 = tail call ptr @DestroyCacheView(ptr noundef %27) #18
  br i1 %125, label %127, label %131

127:                                              ; preds = %124
  %128 = tail call ptr @DestroyImage(ptr noundef %11)
  br label %131

129:                                              ; preds = %10
  %130 = tail call ptr @DestroyCacheView(ptr noundef %27) #18
  br label %131

131:                                              ; preds = %129, %127, %124
  %132 = phi ptr [ %128, %127 ], [ %11, %124 ], [ %11, %129 ]
  ret ptr %132
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ReferenceImage(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2025, ptr noundef nonnull @.str.2) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void @LockSemaphoreInfo(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %11 = load volatile i64, ptr %10, align 8, !tbaa !79
  %12 = add nsw i64 %11, 1
  store volatile i64 %12, ptr %10, align 8, !tbaa !79
  %13 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ResetImagePage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2068, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %2
  %11 = call i32 @ParseAbsoluteGeometry(ptr noundef %1, ptr noundef nonnull %3) #18
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = and i32 %11, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, ptr %3, align 8, !tbaa !229
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !230
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, ptr %3, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  store i64 %21, ptr %22, align 8, !tbaa !168
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !230
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !171
  br label %26

26:                                               ; preds = %20, %10
  %27 = and i32 %11, 8192
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %11, 1
  %30 = icmp eq i32 %29, 0
  br i1 %28, label %45, label %31

31:                                               ; preds = %26
  br i1 %30, label %38, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !231
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !169
  %37 = add nsw i64 %36, %34
  store i64 %37, ptr %35, align 8, !tbaa !169
  br label %38

38:                                               ; preds = %32, %31
  %39 = and i32 %11, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !232
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  br label %73

45:                                               ; preds = %26
  br i1 %30, label %59, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  store i64 %48, ptr %50, align 8, !tbaa !169
  %51 = load i64, ptr %49, align 8, !tbaa !168
  %52 = icmp eq i64 %51, 0
  %53 = icmp sgt i64 %48, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !86
  %58 = add i64 %57, %48
  store i64 %58, ptr %49, align 8, !tbaa !168
  br label %59

59:                                               ; preds = %46, %55, %45
  %60 = and i32 %11, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  store i64 %64, ptr %65, align 8, !tbaa !172
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !171
  %68 = icmp eq i64 %67, 0
  %69 = icmp sgt i64 %64, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %73

73:                                               ; preds = %41, %71
  %74 = phi ptr [ %72, %71 ], [ %44, %41 ]
  %75 = phi i64 [ %64, %71 ], [ %43, %41 ]
  %76 = phi ptr [ %66, %71 ], [ %44, %41 ]
  %77 = load i64, ptr %74, align 8, !tbaa !93
  %78 = add i64 %77, %75
  store i64 %78, ptr %76, align 8, !tbaa !93
  br label %79

79:                                               ; preds = %73, %59, %62, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 1
}

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SetImageChannels(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  store i64 %1, ptr %3, align 8, !tbaa !158
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !182
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !55
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !224
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 %13, ptr %14, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  store double %16, ptr %17, align 8, !tbaa !126
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !226
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %19, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %21) #18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !88
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %121

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  br label %33

33:                                               ; preds = %26, %116
  %34 = phi i64 [ 0, %26 ], [ %118, %116 ]
  %35 = phi i32 [ 1, %26 ], [ %117, %116 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %116, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %27, align 8, !tbaa !86
  %39 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %22, i64 noundef 0, i64 noundef %34, i64 noundef %38, i64 noundef 1, ptr noundef nonnull %21) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %116, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %22) #18
  %43 = load i64, ptr %27, align 8, !tbaa !86
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %112

45:                                               ; preds = %41
  %46 = load float, ptr %28, align 8, !tbaa !176
  %47 = fcmp ole float %46, 0.000000e+00
  %48 = fcmp oge float %46, 6.553500e+04
  %49 = fadd float %46, 5.000000e-01
  %50 = fptoui float %49 to i16
  %51 = load float, ptr %29, align 4, !tbaa !179
  %52 = fcmp ole float %51, 0.000000e+00
  %53 = fcmp oge float %51, 6.553500e+04
  %54 = fadd float %51, 5.000000e-01
  %55 = fptoui float %54 to i16
  %56 = load float, ptr %30, align 8, !tbaa !180
  %57 = fcmp ole float %56, 0.000000e+00
  %58 = fcmp oge float %56, 6.553500e+04
  %59 = fadd float %56, 5.000000e-01
  %60 = fptoui float %59 to i16
  %61 = load float, ptr %31, align 4, !tbaa !181
  %62 = fcmp ole float %61, 0.000000e+00
  %63 = fcmp oge float %61, 6.553500e+04
  %64 = fadd float %61, 5.000000e-01
  %65 = fptoui float %64 to i16
  %66 = load i32, ptr %11, align 4, !tbaa !55
  %67 = icmp eq i32 %66, 12
  %68 = icmp ne ptr %42, null
  %69 = icmp eq ptr %42, null
  %70 = or i1 %47, %48
  %71 = xor i1 %47, true
  %72 = sext i1 %71 to i16
  %73 = select i1 %70, i16 %72, i16 %50
  %74 = or i1 %52, %53
  %75 = xor i1 %52, true
  %76 = sext i1 %75 to i16
  %77 = select i1 %74, i16 %76, i16 %55
  %78 = or i1 %57, %58
  %79 = xor i1 %57, true
  %80 = sext i1 %79 to i16
  %81 = select i1 %78, i16 %80, i16 %60
  %82 = or i1 %62, %63
  %83 = xor i1 %62, true
  %84 = sext i1 %83 to i16
  %85 = select i1 %82, i16 %84, i16 %65
  br label %86

86:                                               ; preds = %45, %108
  %87 = phi i64 [ 0, %45 ], [ %110, %108 ]
  %88 = phi ptr [ %39, %45 ], [ %109, %108 ]
  %89 = getelementptr inbounds i16, ptr %42, i64 %87
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 2
  store i16 %73, ptr %90, align 2, !tbaa !150
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 1
  store i16 %77, ptr %91, align 2, !tbaa !151
  store i16 %81, ptr %88, align 2, !tbaa !152
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 3
  store i16 %85, ptr %92, align 2, !tbaa !153
  br i1 %67, label %97, label %93

93:                                               ; preds = %86
  %94 = load i32, ptr %0, align 8, !tbaa !38
  %95 = icmp eq i32 %94, 2
  %96 = and i1 %68, %95
  br i1 %96, label %98, label %108

97:                                               ; preds = %86
  br i1 %69, label %108, label %98

98:                                               ; preds = %97, %93
  %99 = load float, ptr %32, align 8, !tbaa !183
  %100 = fcmp ugt float %99, 0.000000e+00
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = fcmp ult float %99, 6.553500e+04
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = fadd float %99, 5.000000e-01
  %105 = fptoui float %104 to i16
  br label %106

106:                                              ; preds = %103, %101, %98
  %107 = phi i16 [ %105, %103 ], [ 0, %98 ], [ -1, %101 ]
  store i16 %107, ptr %89, align 2, !tbaa !154
  br label %108

108:                                              ; preds = %93, %97, %106
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %110 = add nuw nsw i64 %87, 1
  %111 = icmp eq i64 %110, %43
  br i1 %111, label %112, label %86, !llvm.loop !233

112:                                              ; preds = %108, %41
  %113 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %22, ptr noundef nonnull %21) #22
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  br label %116

116:                                              ; preds = %37, %33, %112
  %117 = phi i32 [ %115, %112 ], [ 0, %33 ], [ 0, %37 ]
  %118 = add nuw nsw i64 %34, 1
  %119 = load i64, ptr %23, align 8, !tbaa !88
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %33, label %121, !llvm.loop !234

121:                                              ; preds = %116, %8
  %122 = phi i32 [ 1, %8 ], [ %117, %116 ]
  %123 = tail call ptr @DestroyCacheView(ptr noundef %22) #18
  ret i32 %122
}

declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageExtent(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  %5 = icmp eq i64 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  store i64 %1, ptr %8, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  store i64 %2, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetImageInfo(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %11 = load i32, ptr %10, align 8, !tbaa !143
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #18
  br label %16

16:                                               ; preds = %13, %3
  store i8 0, ptr %8, align 16, !tbaa !121
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 7, ptr noundef nonnull %8) #18
  %18 = load i8, ptr %8, align 16, !tbaa !121
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %16
  %21 = call i32 @IsSceneGeometry(ptr noundef nonnull %8, i32 noundef 0) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i32 @IsGeometry(ptr noundef nonnull %8) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %96, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %28 = call ptr @CloneString(ptr noundef nonnull %27, ptr noundef nonnull %8) #18
  br label %96

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %31 = call ptr @CloneString(ptr noundef nonnull %30, ptr noundef nonnull %8) #18
  %32 = load ptr, ptr %30, align 8, !tbaa !190
  %33 = call i64 @strtoul(ptr nocapture noundef %32, ptr noundef null, i32 noundef 10) #18
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  store i64 %33, ptr %34, align 8, !tbaa !201
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  store i64 %33, ptr %35, align 8, !tbaa !202
  %36 = load ptr, ptr %30, align 8, !tbaa !190
  store ptr %36, ptr %7, align 8, !tbaa !120
  %37 = load i8, ptr %36, align 1, !tbaa !121
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @__ctype_b_loc() #20
  br label %41

41:                                               ; preds = %39, %84
  %42 = phi ptr [ %36, %39 ], [ %86, %84 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !120
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %54, %44 ], [ %42, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !121
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %43, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !154
  %50 = and i16 %49, 8192
  %51 = icmp ne i16 %50, 0
  %52 = icmp eq i8 %46, 44
  %53 = or i1 %52, %51
  %54 = getelementptr inbounds i8, ptr %45, i64 1
  br i1 %53, label %44, label %55, !llvm.loop !235

55:                                               ; preds = %44
  %56 = call i64 @strtol(ptr noundef nonnull %45, ptr noundef nonnull %7, i32 noundef 10) #18
  %57 = load ptr, ptr %40, align 8, !tbaa !120
  %58 = load ptr, ptr %7, align 8, !tbaa !120
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %67, %59 ], [ %58, %55 ]
  %61 = load i8, ptr %60, align 1, !tbaa !121
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %57, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !154
  %65 = and i16 %64, 8192
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds i8, ptr %60, i64 1
  br i1 %66, label %68, label %59, !llvm.loop !236

68:                                               ; preds = %59
  store ptr %60, ptr %7, align 8, !tbaa !120
  %69 = icmp eq i8 %61, 45
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = getelementptr inbounds i8, ptr %60, i64 1
  %72 = call i64 @strtol(ptr noundef nonnull %71, ptr noundef nonnull %7, i32 noundef 10) #18
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i64 [ %72, %70 ], [ %56, %68 ]
  %75 = call i64 @llvm.umin.i64(i64 %56, i64 %74)
  %76 = call i64 @llvm.umax.i64(i64 %56, i64 %74)
  %77 = load i64, ptr %34, align 8, !tbaa !201
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i64 %75, ptr %34, align 8, !tbaa !201
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i64, ptr %35, align 8, !tbaa !202
  %82 = icmp ugt i64 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 %76, ptr %35, align 8, !tbaa !202
  br label %84

84:                                               ; preds = %83, %80
  %85 = load ptr, ptr %7, align 8, !tbaa !120
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %85, align 1, !tbaa !121
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %41, !llvm.loop !237

89:                                               ; preds = %84, %29
  %90 = load i64, ptr %34, align 8, !tbaa !201
  %91 = load i64, ptr %35, align 8, !tbaa !202
  %92 = sub i64 %91, %90
  %93 = add i64 %92, 1
  store i64 %93, ptr %35, align 8, !tbaa !202
  %94 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 54
  store i64 %90, ptr %94, align 8, !tbaa !217
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 55
  store i64 %93, ptr %95, align 8, !tbaa !218
  br label %96

96:                                               ; preds = %89, %26, %23, %16
  store i8 0, ptr %4, align 16, !tbaa !121
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 6, ptr noundef nonnull %4) #18
  %97 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %97, align 8, !tbaa !238
  %98 = call ptr @AcquireExceptionInfo() #18
  %99 = load i8, ptr %4, align 16, !tbaa !121
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %139, label %101

101:                                              ; preds = %96
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 4096) #18
  call void @LocaleUpper(ptr noundef nonnull %6) #18
  br label %108

103:                                              ; preds = %118
  %104 = add nuw nsw i64 %110, 1
  %105 = getelementptr inbounds [18 x ptr], ptr @SetImageInfo.format_type_formats, i64 0, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !120
  %107 = icmp eq i64 %104, 17
  br i1 %107, label %121, label %108, !llvm.loop !239

108:                                              ; preds = %101, %103
  %109 = phi ptr [ @.str.18, %101 ], [ %106, %103 ]
  %110 = phi i64 [ 0, %101 ], [ %104, %103 ]
  %111 = load i8, ptr %6, align 16, !tbaa !121
  %112 = load i8, ptr %109, align 1, !tbaa !121
  %113 = icmp eq i8 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull %109) #18
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 2, i32 0
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi i32 [ 0, %108 ], [ %117, %114 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %103, label %121, !llvm.loop !239

121:                                              ; preds = %118, %103
  %122 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %98) #18
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._MagickInfo, ptr %122, i64 0, i32 15
  %126 = load i32, ptr %125, align 4, !tbaa !240
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 %119, i32 %126
  br label %129

129:                                              ; preds = %124, %121
  %130 = phi i32 [ %119, %121 ], [ %128, %124 ]
  switch i32 %130, label %135 [
    i32 0, label %132
    i32 2, label %131
  ]

131:                                              ; preds = %129
  store i32 1, ptr %97, align 8, !tbaa !238
  br label %132

132:                                              ; preds = %129, %131
  %133 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %134 = call i64 @CopyMagickString(ptr noundef nonnull %133, ptr noundef nonnull %6, i64 noundef 4096) #18
  br label %135

135:                                              ; preds = %132, %129
  %136 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #18
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, ptr %97, align 8, !tbaa !238
  br label %139

139:                                              ; preds = %135, %138, %96
  store i8 0, ptr %6, align 16, !tbaa !121
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 1, ptr noundef nonnull %6) #18
  %140 = load i8, ptr %6, align 16, !tbaa !121
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %144 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %143, i64 noundef 4096) #18
  br label %156

145:                                              ; preds = %139
  call void @LocaleUpper(ptr noundef nonnull %6) #18
  %146 = call i32 @IsMagickConflict(ptr noundef nonnull %6) #18
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %150 = call i64 @CopyMagickString(ptr noundef nonnull %149, ptr noundef nonnull %6, i64 noundef 4096) #18
  %151 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.22) #18
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store i32 1, ptr %97, align 8, !tbaa !238
  br label %156

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %155, align 8, !tbaa !200
  br label %156

156:                                              ; preds = %145, %154, %153, %142
  %157 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %98) #18
  %158 = call ptr @DestroyExceptionInfo(ptr noundef %98) #18
  %159 = icmp eq ptr %157, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %157) #18
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160, %156
  %164 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %164, align 4, !tbaa !98
  br label %165

165:                                              ; preds = %163, %160
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull %5) #18
  %166 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #18
  %167 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !139
  %169 = icmp ne i32 %168, 0
  %170 = icmp ugt i32 %1, 1
  %171 = and i1 %170, %169
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %174 = load i64, ptr %173, align 8, !tbaa !201
  %175 = trunc i64 %174 to i32
  %176 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %17, i32 noundef %175, ptr noundef nonnull %5)
  %177 = call i32 @LocaleCompare(ptr noundef nonnull %5, ptr noundef nonnull %17) #18
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 37) #24
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 0, ptr %167, align 4, !tbaa !139
  br label %183

183:                                              ; preds = %172, %179, %182, %165
  %184 = load i32, ptr %167, align 4, !tbaa !139
  %185 = icmp ne i32 %184, 0
  %186 = icmp ne i32 %1, 0
  %187 = and i1 %186, %185
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %2) #18
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = call i32 @GetMagickAdjoin(ptr noundef nonnull %189) #18
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 0, ptr %167, align 4, !tbaa !139
  br label %195

195:                                              ; preds = %188, %194, %191, %183
  %196 = load i32, ptr %97, align 8, !tbaa !238
  %197 = or i32 %196, %1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %271

199:                                              ; preds = %195
  %200 = call ptr @AcquireImage(ptr noundef %0)
  %201 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 53
  %202 = call i64 @CopyMagickString(ptr noundef nonnull %201, ptr noundef nonnull %17, i64 noundef 4096) #18
  %203 = call i32 @OpenBlob(ptr noundef %0, ptr noundef %200, i32 noundef 2, ptr noundef %2) #18
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = call ptr @DestroyImage(ptr noundef %200)
  br label %271

207:                                              ; preds = %199
  %208 = call i32 @IsBlobSeekable(ptr noundef %200) #18
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = call i32 @IsBlobExempt(ptr noundef %200) #18
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %234, label %213

213:                                              ; preds = %210, %207
  store i8 0, ptr %5, align 16, !tbaa !121
  %214 = call i32 @ImageToFile(ptr noundef %200, ptr noundef nonnull %5, ptr noundef %2) #18
  %215 = call i32 @CloseBlob(ptr noundef %200) #18
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call ptr @DestroyImage(ptr noundef %200)
  br label %271

219:                                              ; preds = %213
  %220 = load i32, ptr %10, align 8, !tbaa !143
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %17) #18
  br label %224

224:                                              ; preds = %219, %222
  %225 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  store ptr null, ptr %225, align 8, !tbaa !82
  %226 = call i64 @CopyMagickString(ptr noundef nonnull %201, ptr noundef nonnull %5, i64 noundef 4096) #18
  %227 = call i32 @OpenBlob(ptr noundef %0, ptr noundef %200, i32 noundef 2, ptr noundef %2) #18
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = call ptr @DestroyImage(ptr noundef %200)
  br label %271

231:                                              ; preds = %224
  %232 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #18
  %233 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %233, align 8, !tbaa !200
  br label %234

234:                                              ; preds = %231, %210
  %235 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 8192) #18
  %236 = call i64 @ReadBlob(ptr noundef %200, i64 noundef 8192, ptr noundef nonnull %9) #18
  %237 = sub nsw i64 0, %236
  %238 = call i64 @SeekBlob(ptr noundef %200, i64 noundef %237, i32 noundef 1) #18
  %239 = call i32 @CloseBlob(ptr noundef %200) #18
  %240 = call ptr @DestroyImage(ptr noundef %200)
  %241 = call ptr @AcquireExceptionInfo() #18
  %242 = call ptr @GetMagicInfo(ptr noundef nonnull %9, i64 noundef %236, ptr noundef %241) #18
  %243 = icmp eq ptr %242, null
  br i1 %243, label %260, label %244

244:                                              ; preds = %234
  %245 = call ptr @GetMagicName(ptr noundef nonnull %242) #18
  %246 = icmp eq ptr %245, null
  br i1 %246, label %260, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %249 = call ptr @GetMagicName(ptr noundef nonnull %242) #18
  %250 = call i64 @CopyMagickString(ptr noundef nonnull %248, ptr noundef %249, i64 noundef 4096) #18
  %251 = call ptr @GetMagickInfo(ptr noundef nonnull %248, ptr noundef %241) #18
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %247
  %254 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %251) #18
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253, %247
  %257 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %257, align 4, !tbaa !98
  br label %258

258:                                              ; preds = %256, %253
  %259 = call ptr @DestroyExceptionInfo(ptr noundef %241) #18
  br label %271

260:                                              ; preds = %244, %234
  %261 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %262 = call ptr @GetMagickInfo(ptr noundef nonnull %261, ptr noundef %241) #18
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %262) #18
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264, %260
  %268 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %268, align 4, !tbaa !98
  br label %269

269:                                              ; preds = %267, %264
  %270 = call ptr @DestroyExceptionInfo(ptr noundef %241) #18
  br label %271

271:                                              ; preds = %269, %195, %258, %229, %217, %205
  %272 = phi i32 [ 0, %205 ], [ 0, %217 ], [ 0, %229 ], [ 1, %258 ], [ 1, %195 ], [ 1, %269 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  ret i32 %272
}

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IsGeometry(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare void @LocaleUpper(ptr noundef) local_unnamed_addr #2

declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #2

declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #2

declare i32 @IsBlobExempt(ptr noundef) local_unnamed_addr #2

declare i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

declare i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SeekBlob(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GetMagicInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMagicName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetImageMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2889, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !86
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !88
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16, %10
  %23 = icmp eq ptr %0, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2893, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #18
  br label %44

28:                                               ; preds = %16, %8
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %30 = load ptr, ptr %29, align 8, !tbaa !165
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %30)
  store ptr %33, ptr %29, align 8, !tbaa !165
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call ptr @NewImageList() #18
  store ptr %35, ptr %29, align 8, !tbaa !165
  br i1 %9, label %44, label %36

36:                                               ; preds = %34
  store i32 1, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %38 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %37) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %37)
  store ptr %41, ptr %29, align 8, !tbaa !165
  %42 = icmp ne ptr %41, null
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %40, %36, %34, %22, %24
  %45 = phi i32 [ 0, %24 ], [ 0, %22 ], [ 1, %34 ], [ 0, %36 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2949, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %9, align 8, !tbaa !147
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %10) #18
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !88
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %17

17:                                               ; preds = %15, %39
  %18 = phi i64 [ 0, %15 ], [ %41, %39 ]
  %19 = phi i32 [ 1, %15 ], [ %40, %39 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %16, align 8, !tbaa !86
  %23 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %11, i64 noundef 0, i64 noundef %18, i64 noundef %22, i64 noundef 1, ptr noundef nonnull %10) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %16, align 8, !tbaa !86
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %25 ]
  %30 = phi ptr [ %32, %28 ], [ %23, %25 ]
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 3
  store i16 %1, ptr %31, align 2, !tbaa !153
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %35, label %28, !llvm.loop !242

35:                                               ; preds = %28, %25
  %36 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %11, ptr noundef nonnull %10) #22
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %21, %17, %35
  %40 = phi i32 [ %38, %35 ], [ 0, %17 ], [ 0, %21 ]
  %41 = add nuw nsw i64 %18, 1
  %42 = load i64, ptr %12, align 8, !tbaa !88
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %17, label %44, !llvm.loop !243

44:                                               ; preds = %39, %8
  %45 = phi i32 [ 1, %8 ], [ %40, %39 ]
  %46 = tail call ptr @DestroyCacheView(ptr noundef %11) #18
  ret i32 %45
}

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageVirtualPixelMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3020, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call i32 @SetPixelCacheVirtualMethod(ptr noundef %0, i32 noundef %1) #18
  ret i32 %10
}

declare i32 @SetPixelCacheVirtualMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SmushImages(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._RectangleInfo, align 8
  %7 = alloca %struct._RectangleInfo, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !78
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.8, ptr noundef nonnull %15) #18
  br label %17

17:                                               ; preds = %14, %4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !88
  %24 = tail call ptr @GetNextImageInList(ptr noundef %0) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %17
  %27 = icmp eq i32 %1, 0
  br label %28

28:                                               ; preds = %26, %61
  %29 = phi i64 [ %21, %26 ], [ %63, %61 ]
  %30 = phi i64 [ 1, %26 ], [ %38, %61 ]
  %31 = phi i64 [ %23, %26 ], [ %62, %61 ]
  %32 = phi ptr [ %24, %26 ], [ %64, %61 ]
  %33 = phi i32 [ %19, %26 ], [ %37, %61 ]
  %34 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !147
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 %33, i32 1
  %38 = add i64 %30, 1
  %39 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !86
  br i1 %27, label %51, label %41

41:                                               ; preds = %28
  %42 = tail call i64 @llvm.umax.i64(i64 %40, i64 %29)
  %43 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %44 = load i64, ptr %43, align 8, !tbaa !88
  %45 = add i64 %44, %31
  %46 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 67
  %47 = load ptr, ptr %46, align 8, !tbaa !146
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, i64 0, i64 %2
  %50 = add i64 %45, %49
  br label %61

51:                                               ; preds = %28
  %52 = add i64 %40, %29
  %53 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 67
  %54 = load ptr, ptr %53, align 8, !tbaa !146
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, i64 0, i64 %2
  %57 = add i64 %52, %56
  %58 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !88
  %60 = tail call i64 @llvm.umax.i64(i64 %59, i64 %31)
  br label %61

61:                                               ; preds = %51, %41
  %62 = phi i64 [ %50, %41 ], [ %60, %51 ]
  %63 = phi i64 [ %42, %41 ], [ %57, %51 ]
  %64 = tail call ptr @GetNextImageInList(ptr noundef nonnull %32) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %28, !llvm.loop !244

66:                                               ; preds = %61, %17
  %67 = phi i32 [ %19, %17 ], [ %37, %61 ]
  %68 = phi i64 [ %23, %17 ], [ %62, %61 ]
  %69 = phi i64 [ 1, %17 ], [ %38, %61 ]
  %70 = phi i64 [ %21, %17 ], [ %63, %61 ]
  %71 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %70, i64 noundef %68, i32 noundef 1, ptr noundef %3)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %320, label %73

73:                                               ; preds = %66
  store i32 1, ptr %71, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 58
  %75 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %71, ptr noundef nonnull %74) #18
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %74) #18
  %78 = tail call ptr @DestroyImage(ptr noundef nonnull %71)
  br label %320

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 6
  store i32 %67, ptr %80, align 8, !tbaa !147
  %81 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %71), !range !149
  %82 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %71, ptr noundef %3) #18
  %83 = icmp sgt i64 %69, 0
  br i1 %83, label %84, label %307

84:                                               ; preds = %79
  %85 = icmp eq i32 %1, 0
  %86 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 2
  %87 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %88 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %89 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %90 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %91 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 8
  %92 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %93 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 3
  %94 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 8
  %95 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 3
  br label %96

96:                                               ; preds = %84, %297
  %97 = phi i64 [ 0, %84 ], [ %299, %297 ]
  %98 = phi i64 [ 0, %84 ], [ %298, %297 ]
  %99 = phi i64 [ 0, %84 ], [ %301, %297 ]
  %100 = phi ptr [ %0, %84 ], [ %300, %297 ]
  call void @SetGeometry(ptr noundef nonnull %71, ptr noundef nonnull %10) #18
  %101 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 7
  %102 = load i64, ptr %101, align 8, !tbaa !86
  %103 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 8
  %104 = load i64, ptr %103, align 8, !tbaa !88
  %105 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 35
  %106 = load i32, ptr %105, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %102, i64 noundef %104, i32 noundef %106, ptr noundef nonnull %10) #18
  br i1 %85, label %189, label %107

107:                                              ; preds = %96
  %108 = load i64, ptr %86, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %109 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 67
  %110 = load ptr, ptr %109, align 8, !tbaa !146
  %111 = icmp eq ptr %110, null
  br i1 %111, label %187, label %112

112:                                              ; preds = %107
  call void @SetGeometry(ptr noundef nonnull %71, ptr noundef nonnull %8) #18
  %113 = load i64, ptr %101, align 8, !tbaa !86
  %114 = load i64, ptr %103, align 8, !tbaa !88
  %115 = load i32, ptr %105, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %113, i64 noundef %114, i32 noundef %115, ptr noundef nonnull %8) #18
  %116 = load ptr, ptr %109, align 8, !tbaa !146
  call void @SetGeometry(ptr noundef nonnull %71, ptr noundef nonnull %9) #18
  %117 = getelementptr inbounds %struct._Image, ptr %116, i64 0, i32 7
  %118 = load i64, ptr %117, align 8, !tbaa !86
  %119 = getelementptr inbounds %struct._Image, ptr %116, i64 0, i32 8
  %120 = load i64, ptr %119, align 8, !tbaa !88
  %121 = getelementptr inbounds %struct._Image, ptr %116, i64 0, i32 35
  %122 = load i32, ptr %121, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %118, i64 noundef %120, i32 noundef %122, ptr noundef nonnull %9) #18
  %123 = load i64, ptr %103, align 8, !tbaa !88
  %124 = call ptr @AcquireVirtualCacheView(ptr noundef %116, ptr noundef %3) #18
  %125 = call ptr @AcquireVirtualCacheView(ptr noundef %100, ptr noundef %3) #18
  %126 = load i64, ptr %87, align 8, !tbaa !86
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %178

128:                                              ; preds = %112, %171
  %129 = phi i64 [ %174, %171 ], [ %123, %112 ]
  %130 = phi i64 [ %175, %171 ], [ 0, %112 ]
  %131 = load i64, ptr %119, align 8, !tbaa !88
  br label %132

132:                                              ; preds = %145, %128
  %133 = phi i64 [ %131, %128 ], [ %134, %145 ]
  %134 = add nsw i64 %133, -1
  %135 = icmp sgt i64 %133, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i64, ptr %88, align 8, !tbaa !231
  %138 = add nsw i64 %137, %130
  %139 = call ptr @GetCacheViewVirtualPixels(ptr noundef %124, i64 noundef %138, i64 noundef %134, i64 noundef 1, i64 noundef 1, ptr noundef %3) #22
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 3
  %143 = load i16, ptr %142, align 2, !tbaa !153
  %144 = icmp eq i16 %143, -1
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i64, ptr %119, align 8, !tbaa !88
  %147 = sub i64 %146, %133
  %148 = icmp ult i64 %147, %129
  br i1 %148, label %132, label %149, !llvm.loop !245

149:                                              ; preds = %145, %141, %136, %132
  %150 = load i64, ptr %119, align 8, !tbaa !88
  %151 = sub i64 %150, %133
  %152 = load i64, ptr %103, align 8, !tbaa !88
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %149, %167
  %155 = phi i64 [ %168, %167 ], [ 0, %149 ]
  %156 = load i64, ptr %89, align 8, !tbaa !231
  %157 = add nsw i64 %156, %130
  %158 = call ptr @GetCacheViewVirtualPixels(ptr noundef %125, i64 noundef %157, i64 noundef %155, i64 noundef 1, i64 noundef 1, ptr noundef %3) #22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  %162 = load i16, ptr %161, align 2, !tbaa !153
  %163 = icmp eq i16 %162, -1
  %164 = add nsw i64 %155, %151
  %165 = icmp slt i64 %164, %129
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = add nuw nsw i64 %155, 1
  %169 = load i64, ptr %103, align 8, !tbaa !88
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %154, label %171, !llvm.loop !246

171:                                              ; preds = %167, %154, %160, %149
  %172 = phi i64 [ 0, %149 ], [ %168, %167 ], [ %155, %154 ], [ %155, %160 ]
  %173 = add nsw i64 %172, %151
  %174 = call i64 @llvm.smin.i64(i64 %173, i64 %129)
  %175 = add nuw nsw i64 %130, 1
  %176 = load i64, ptr %87, align 8, !tbaa !86
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %128, label %178, !llvm.loop !247

178:                                              ; preds = %171, %112
  %179 = phi i64 [ 0, %112 ], [ %175, %171 ]
  %180 = phi i64 [ %123, %112 ], [ %174, %171 ]
  %181 = call ptr @DestroyCacheView(ptr noundef %125) #18
  %182 = call ptr @DestroyCacheView(ptr noundef %124) #18
  %183 = load i64, ptr %90, align 8, !tbaa !86
  %184 = icmp slt i64 %179, %183
  %185 = sub nsw i64 %180, %2
  %186 = select i1 %184, i64 %2, i64 %185
  br label %187

187:                                              ; preds = %107, %178
  %188 = phi i64 [ 0, %107 ], [ %186, %178 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %271

189:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %190 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 67
  %191 = load ptr, ptr %190, align 8, !tbaa !146
  %192 = icmp eq ptr %191, null
  br i1 %192, label %268, label %193

193:                                              ; preds = %189
  call void @SetGeometry(ptr noundef nonnull %71, ptr noundef nonnull %7) #18
  %194 = load i64, ptr %101, align 8, !tbaa !86
  %195 = load i64, ptr %103, align 8, !tbaa !88
  %196 = load i32, ptr %105, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %194, i64 noundef %195, i32 noundef %196, ptr noundef nonnull %7) #18
  %197 = load ptr, ptr %190, align 8, !tbaa !146
  call void @SetGeometry(ptr noundef nonnull %71, ptr noundef nonnull %6) #18
  %198 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 7
  %199 = load i64, ptr %198, align 8, !tbaa !86
  %200 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 8
  %201 = load i64, ptr %200, align 8, !tbaa !88
  %202 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 35
  %203 = load i32, ptr %202, align 4, !tbaa !127
  call void @GravityAdjustGeometry(i64 noundef %199, i64 noundef %201, i32 noundef %203, ptr noundef nonnull %6) #18
  %204 = load i64, ptr %101, align 8, !tbaa !86
  %205 = call ptr @AcquireVirtualCacheView(ptr noundef %197, ptr noundef %3) #18
  %206 = call ptr @AcquireVirtualCacheView(ptr noundef %100, ptr noundef %3) #18
  %207 = load i64, ptr %91, align 8, !tbaa !88
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %259

209:                                              ; preds = %193, %252
  %210 = phi i64 [ %255, %252 ], [ %204, %193 ]
  %211 = phi i64 [ %256, %252 ], [ 0, %193 ]
  %212 = load i64, ptr %198, align 8, !tbaa !86
  br label %213

213:                                              ; preds = %226, %209
  %214 = phi i64 [ %212, %209 ], [ %215, %226 ]
  %215 = add nsw i64 %214, -1
  %216 = icmp sgt i64 %214, 1
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i64, ptr %92, align 8, !tbaa !232
  %219 = add nsw i64 %218, %211
  %220 = call ptr @GetCacheViewVirtualPixels(ptr noundef %205, i64 noundef %215, i64 noundef %219, i64 noundef 1, i64 noundef 1, ptr noundef %3) #22
  %221 = icmp eq ptr %220, null
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 3
  %224 = load i16, ptr %223, align 2, !tbaa !153
  %225 = icmp eq i16 %224, -1
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load i64, ptr %198, align 8, !tbaa !86
  %228 = sub i64 %227, %214
  %229 = icmp ult i64 %228, %210
  br i1 %229, label %213, label %230, !llvm.loop !248

230:                                              ; preds = %226, %222, %217, %213
  %231 = load i64, ptr %198, align 8, !tbaa !86
  %232 = sub i64 %231, %214
  %233 = load i64, ptr %101, align 8, !tbaa !86
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %230, %248
  %236 = phi i64 [ %249, %248 ], [ 0, %230 ]
  %237 = load i64, ptr %93, align 8, !tbaa !232
  %238 = add nsw i64 %237, %211
  %239 = call ptr @GetCacheViewVirtualPixels(ptr noundef %206, i64 noundef %236, i64 noundef %238, i64 noundef 1, i64 noundef 1, ptr noundef %3) #22
  %240 = icmp eq ptr %239, null
  br i1 %240, label %252, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %239, i64 0, i32 3
  %243 = load i16, ptr %242, align 2, !tbaa !153
  %244 = icmp eq i16 %243, -1
  %245 = add nsw i64 %236, %232
  %246 = icmp slt i64 %245, %210
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = add nuw nsw i64 %236, 1
  %250 = load i64, ptr %101, align 8, !tbaa !86
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %235, label %252, !llvm.loop !249

252:                                              ; preds = %248, %235, %241, %230
  %253 = phi i64 [ 0, %230 ], [ %249, %248 ], [ %236, %235 ], [ %236, %241 ]
  %254 = add nsw i64 %253, %232
  %255 = call i64 @llvm.smin.i64(i64 %254, i64 %210)
  %256 = add nuw nsw i64 %211, 1
  %257 = load i64, ptr %91, align 8, !tbaa !88
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %209, label %259, !llvm.loop !250

259:                                              ; preds = %252, %193
  %260 = phi i64 [ 0, %193 ], [ %256, %252 ]
  %261 = phi i64 [ %204, %193 ], [ %255, %252 ]
  %262 = call ptr @DestroyCacheView(ptr noundef %206) #18
  %263 = call ptr @DestroyCacheView(ptr noundef %205) #18
  %264 = load i64, ptr %94, align 8, !tbaa !88
  %265 = icmp slt i64 %260, %264
  %266 = sub nsw i64 %261, %2
  %267 = select i1 %265, i64 %2, i64 %266
  br label %268

268:                                              ; preds = %189, %259
  %269 = phi i64 [ 0, %189 ], [ %267, %259 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  %270 = load i64, ptr %95, align 8, !tbaa !232
  br label %271

271:                                              ; preds = %268, %187
  %272 = phi i64 [ %108, %187 ], [ %269, %268 ]
  %273 = phi i64 [ %188, %187 ], [ %270, %268 ]
  %274 = sub nsw i64 %97, %273
  %275 = sub nsw i64 %98, %272
  %276 = call i32 @CompositeImage(ptr noundef nonnull %71, i32 noundef 40, ptr noundef %100, i64 noundef %275, i64 noundef %274) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %277 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 47
  %278 = load ptr, ptr %277, align 8, !tbaa !114
  %279 = icmp eq ptr %278, null
  br i1 %279, label %287, label %280

280:                                              ; preds = %271
  %281 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 53
  %282 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.36, ptr noundef nonnull %281) #18
  %283 = load ptr, ptr %277, align 8, !tbaa !114
  %284 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 48
  %285 = load ptr, ptr %284, align 8, !tbaa !116
  %286 = call i32 %283(ptr noundef nonnull %5, i64 noundef %99, i64 noundef %69, ptr noundef %285) #18
  br label %287

287:                                              ; preds = %271, %280
  %288 = phi i32 [ %286, %280 ], [ 1, %271 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %303, label %290

290:                                              ; preds = %287
  br i1 %85, label %291, label %294

291:                                              ; preds = %290
  %292 = load i64, ptr %101, align 8, !tbaa !86
  %293 = add nsw i64 %292, %275
  br label %297

294:                                              ; preds = %290
  %295 = load i64, ptr %103, align 8, !tbaa !88
  %296 = add nsw i64 %295, %274
  br label %297

297:                                              ; preds = %294, %291
  %298 = phi i64 [ %293, %291 ], [ 0, %294 ]
  %299 = phi i64 [ 0, %291 ], [ %296, %294 ]
  %300 = call ptr @GetNextImageInList(ptr noundef %100) #18
  %301 = add nuw nsw i64 %99, 1
  %302 = icmp eq i64 %301, %69
  br i1 %302, label %303, label %96, !llvm.loop !251

303:                                              ; preds = %287, %297
  %304 = phi i64 [ %298, %297 ], [ %275, %287 ]
  %305 = phi i64 [ %299, %297 ], [ %274, %287 ]
  %306 = icmp eq i32 %276, 0
  br label %307

307:                                              ; preds = %303, %79
  %308 = phi i1 [ false, %79 ], [ %306, %303 ]
  %309 = phi i64 [ 0, %79 ], [ %304, %303 ]
  %310 = phi i64 [ 0, %79 ], [ %305, %303 ]
  %311 = icmp eq i32 %1, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  store i64 %309, ptr %313, align 8, !tbaa !86
  br label %316

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 8
  store i64 %310, ptr %315, align 8, !tbaa !88
  br label %316

316:                                              ; preds = %314, %312
  %317 = call ptr @DestroyCacheView(ptr noundef %82) #18
  br i1 %308, label %318, label %320

318:                                              ; preds = %316
  %319 = call ptr @DestroyImage(ptr noundef nonnull %71)
  br label %320

320:                                              ; preds = %316, %318, %66, %77
  %321 = phi ptr [ null, %77 ], [ null, %66 ], [ %319, %318 ], [ %71, %316 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  ret ptr %321
}

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @StripImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3360, ptr noundef nonnull @.str.2) #18
  br label %7

7:                                                ; preds = %5, %1
  tail call void @DestroyImageProfiles(ptr noundef %0) #18
  %8 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef nonnull @.str.37) #18
  %9 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef nonnull @.str.38) #18
  %10 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef nonnull @.str.39) #18
  %11 = tail call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #18
  ret i32 %11
}

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SyncImagesSettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3514, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %14, %11 ], [ %1, %9 ]
  %13 = tail call i32 @SyncImageSettings(ptr noundef %0, ptr noundef nonnull %12)
  %14 = tail call ptr @GetNextImageInList(ptr noundef nonnull %12) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !252

16:                                               ; preds = %11, %9
  %17 = tail call i32 @DeleteImageOption(ptr noundef %0, ptr noundef nonnull @.str.43) #18
  ret i32 1
}

declare i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { hot nounwind }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !41, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !35, i64 208, !41, i64 216, !35, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !40, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !41, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !48, i64 480, !49, i64 504, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !40, i64 12904, !40, i64 12912, !51, i64 12920, !35, i64 12976, !40, i64 12984, !41, i64 12992, !52, i64 13000, !52, i64 13032, !41, i64 13064, !40, i64 13072, !40, i64 13080, !41, i64 13088, !41, i64 13096, !41, i64 13104, !35, i64 13112, !35, i64 13116, !42, i64 13120, !41, i64 13128, !47, i64 13136, !41, i64 13168, !41, i64 13176, !35, i64 13184, !35, i64 13188, !53, i64 13192, !35, i64 13200, !40, i64 13208, !40, i64 13216, !35, i64 13224, !40, i64 13232}
!40 = !{!"long", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !35, i64 48, !40, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !41, i64 8, !41, i64 16, !41, i64 24, !35, i64 32, !41, i64 40, !40, i64 48}
!52 = !{!"_ProfileInfo", !41, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!53 = !{!"long long", !36, i64 0}
!54 = !{!39, !40, i64 56}
!55 = !{!39, !35, i64 4}
!56 = !{!39, !35, i64 208}
!57 = !{!39, !44, i64 104}
!58 = !{!39, !44, i64 112}
!59 = !{!39, !44, i64 120}
!60 = !{!39, !44, i64 128}
!61 = !{!39, !44, i64 136}
!62 = !{!39, !44, i64 144}
!63 = !{!39, !44, i64 152}
!64 = !{!39, !44, i64 160}
!65 = !{!39, !44, i64 168}
!66 = !{!39, !44, i64 176}
!67 = !{!39, !44, i64 184}
!68 = !{!39, !44, i64 192}
!69 = !{!39, !44, i64 200}
!70 = !{!39, !35, i64 404}
!71 = !{!39, !40, i64 448}
!72 = !{!39, !35, i64 416}
!73 = !{!39, !44, i64 384}
!74 = !{!39, !35, i64 13200}
!75 = !{!39, !41, i64 584}
!76 = !{!39, !41, i64 608}
!77 = !{!39, !40, i64 13216}
!78 = !{!39, !35, i64 12976}
!79 = !{!39, !40, i64 12984}
!80 = !{!39, !41, i64 12992}
!81 = !{!39, !40, i64 13080}
!82 = !{!83, !41, i64 304}
!83 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !40, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !35, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !40, i64 216, !35, i64 224, !35, i64 228, !41, i64 232, !41, i64 240, !35, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !41, i64 312, !40, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !41, i64 16720, !40, i64 16728, !40, i64 16736, !42, i64 16744, !40, i64 16752, !35, i64 16760, !42, i64 16764, !41, i64 16776, !35, i64 16784}
!84 = !{!83, !41, i64 24}
!85 = !{!39, !40, i64 312}
!86 = !{!39, !40, i64 40}
!87 = !{!39, !40, i64 320}
!88 = !{!39, !40, i64 48}
!89 = !{!39, !40, i64 328}
!90 = !{!39, !40, i64 256}
!91 = !{!83, !41, i64 32}
!92 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !93, i64 24, i64 8, !93}
!93 = !{!40, !40, i64 0}
!94 = !{!83, !35, i64 0}
!95 = !{!39, !35, i64 8}
!96 = !{!83, !40, i64 96}
!97 = !{!39, !40, i64 16}
!98 = !{!83, !35, i64 84}
!99 = !{!39, !35, i64 408}
!100 = !{!83, !35, i64 80}
!101 = !{!83, !35, i64 88}
!102 = !{!39, !35, i64 224}
!103 = !{!83, !41, i64 136}
!104 = !{!105, !44, i64 0}
!105 = !{!"_GeometryInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!106 = !{!39, !44, i64 264}
!107 = !{!105, !44, i64 8}
!108 = !{!83, !41, i64 40}
!109 = !{!83, !40, i64 72}
!110 = !{!83, !35, i64 184}
!111 = !{!39, !35, i64 13188}
!112 = !{!83, !35, i64 224}
!113 = !{!83, !41, i64 272}
!114 = !{!39, !41, i64 568}
!115 = !{!83, !41, i64 280}
!116 = !{!39, !41, i64 576}
!117 = !{!83, !41, i64 288}
!118 = !{!39, !40, i64 440}
!119 = !{!39, !35, i64 420}
!120 = !{!41, !41, i64 0}
!121 = !{!36, !36, i64 0}
!122 = !{!39, !44, i64 376}
!123 = !{!39, !35, i64 13116}
!124 = !{!39, !40, i64 64}
!125 = !{!39, !35, i64 400}
!126 = !{!39, !44, i64 392}
!127 = !{!39, !35, i64 412}
!128 = !{!39, !35, i64 13224}
!129 = !{!39, !35, i64 13112}
!130 = !{!39, !40, i64 456}
!131 = !{!39, !35, i64 24}
!132 = !{!39, !40, i64 432}
!133 = !{!39, !35, i64 28}
!134 = !{!39, !35, i64 13184}
!135 = !{!39, !44, i64 272}
!136 = distinct !{!136, !137, !138}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = !{!83, !35, i64 12}
!140 = !{!83, !35, i64 248}
!141 = !{!83, !35, i64 20}
!142 = !{!83, !35, i64 16784}
!143 = !{!83, !35, i64 16712}
!144 = !{!83, !40, i64 16752}
!145 = !{!39, !41, i64 13104}
!146 = !{!39, !41, i64 13088}
!147 = !{!39, !35, i64 32}
!148 = distinct !{!148, !137, !138}
!149 = !{i32 0, i32 2}
!150 = !{!42, !43, i64 4}
!151 = !{!42, !43, i64 2}
!152 = !{!42, !43, i64 0}
!153 = !{!42, !43, i64 6}
!154 = !{!43, !43, i64 0}
!155 = distinct !{!155, !137, !138}
!156 = distinct !{!156, !137, !138}
!157 = distinct !{!157, !137, !138}
!158 = !{!39, !40, i64 13208}
!159 = !{!39, !41, i64 72}
!160 = !{!39, !41, i64 600}
!161 = !{!39, !40, i64 12904}
!162 = !{!39, !40, i64 12912}
!163 = !{!39, !41, i64 13096}
!164 = !{!39, !41, i64 424}
!165 = !{!39, !41, i64 13128}
!166 = !{!39, !41, i64 232}
!167 = !{!39, !41, i64 240}
!168 = !{!39, !40, i64 280}
!169 = !{!39, !40, i64 296}
!170 = !{!39, !40, i64 13152}
!171 = !{!39, !40, i64 288}
!172 = !{!39, !40, i64 304}
!173 = !{!39, !40, i64 13160}
!174 = !{!39, !41, i64 248}
!175 = !{!39, !43, i64 86}
!176 = !{!177, !178, i64 32}
!177 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !44, i64 16, !40, i64 24, !178, i64 32, !178, i64 36, !178, i64 40, !178, i64 44, !178, i64 48}
!178 = !{!"float", !36, i64 0}
!179 = !{!177, !178, i64 36}
!180 = !{!177, !178, i64 40}
!181 = !{!177, !178, i64 44}
!182 = !{!177, !35, i64 4}
!183 = !{!177, !178, i64 48}
!184 = distinct !{!184, !137, !138}
!185 = distinct !{!185, !137, !138}
!186 = distinct !{!186, !137, !138}
!187 = !{!39, !35, i64 12920}
!188 = !{!51, !35, i64 0}
!189 = distinct !{!189, !137, !138}
!190 = !{!83, !41, i64 48}
!191 = !{!83, !41, i64 104}
!192 = !{!83, !41, i64 112}
!193 = !{!83, !41, i64 120}
!194 = !{!83, !41, i64 128}
!195 = !{!83, !41, i64 232}
!196 = !{!83, !41, i64 240}
!197 = !{!83, !41, i64 16776}
!198 = distinct !{!198, !137, !138}
!199 = distinct !{!199, !137, !138}
!200 = !{!83, !35, i64 8}
!201 = !{!83, !40, i64 56}
!202 = !{!83, !40, i64 64}
!203 = !{!83, !44, i64 144}
!204 = !{!83, !44, i64 152}
!205 = !{!83, !35, i64 188}
!206 = !{!83, !40, i64 192}
!207 = !{!83, !35, i64 200}
!208 = !{!83, !35, i64 204}
!209 = !{!83, !35, i64 4}
!210 = !{!83, !35, i64 208}
!211 = !{!83, !40, i64 216}
!212 = !{!83, !35, i64 228}
!213 = !{!83, !41, i64 312}
!214 = !{!83, !40, i64 320}
!215 = !{!83, !41, i64 296}
!216 = !{!83, !35, i64 16760}
!217 = !{!83, !40, i64 16728}
!218 = !{!83, !40, i64 16736}
!219 = distinct !{!219, !137, !138}
!220 = distinct !{!220, !137, !138}
!221 = distinct !{!221, !137, !138}
!222 = distinct !{!222, !137, !138}
!223 = distinct !{!223, !137, !138}
!224 = !{!177, !35, i64 8}
!225 = !{!177, !44, i64 16}
!226 = !{!177, !40, i64 24}
!227 = distinct !{!227, !137, !138}
!228 = distinct !{!228, !137, !138}
!229 = !{!47, !40, i64 0}
!230 = !{!47, !40, i64 8}
!231 = !{!47, !40, i64 16}
!232 = !{!47, !40, i64 24}
!233 = distinct !{!233, !137, !138}
!234 = distinct !{!234, !137, !138}
!235 = distinct !{!235, !137, !138}
!236 = distinct !{!236, !137, !138}
!237 = distinct !{!237, !137, !138}
!238 = !{!83, !35, i64 16}
!239 = distinct !{!239, !137, !138}
!240 = !{!241, !35, i64 100}
!241 = !{!"_MagickInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !41, i64 112, !41, i64 120, !40, i64 128, !41, i64 136, !41, i64 144}
!242 = distinct !{!242, !137, !138}
!243 = distinct !{!243, !137, !138}
!244 = distinct !{!244, !137, !138}
!245 = distinct !{!245, !137, !138}
!246 = distinct !{!246, !137, !138}
!247 = distinct !{!247, !137, !138}
!248 = distinct !{!248, !137, !138}
!249 = distinct !{!249, !137, !138}
!250 = distinct !{!250, !137, !138}
!251 = distinct !{!251, !137, !138}
!252 = distinct !{!252, !137, !138}
