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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2) #20
  %7 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #20
  %10 = tail call ptr @__errno_location() #23
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = call ptr @GetExceptionMessage(i32 noundef %11) #20
  %13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %12) #20
  %14 = call ptr @DestroyString(ptr noundef %12) #20
  call void @CatchException(ptr noundef nonnull %2) #20
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

16:                                               ; preds = %1
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 13240) #20
  %18 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 55
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, i64 noundef 4096) #20
  store i32 1, ptr %7, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 9
  store i64 16, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 1
  store i32 13, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 17
  store i32 2, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 15
  store <2 x double> <double 0x3FDD1745C0000000, double 0x3FE47AE140000000>, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 0, i32 1
  store <2 x double> <double 0x3FD51EB860000000, double 0x3F9EB851E0000000>, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1
  store <2 x double> <double 0x3FD3333340000000, double 0x3FE3333340000000>, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1, i32 2
  store <2 x double> <double 0x3FB99999A0000000, double 0x3FC3333340000000>, ptr %26, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 2, i32 1
  store <2 x double> <double 0x3FAEB851E0000000, double 0x3FE947AE20000000>, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3
  store <2 x double> <double 0x3FD40346E0000000, double 0x3FD50E5600000000>, ptr %28, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3, i32 2
  store double 0x3FD6EE6320000000, ptr %29, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 33
  store i32 1, ptr %30, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 41
  store i64 100, ptr %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 36
  store i32 40, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 30
  store double 1.000000e+00, ptr %33, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %34) #20
  %35 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 12
  %36 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %35, ptr noundef nonnull %34) #20
  %37 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 13
  %38 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %37, ptr noundef nonnull %34) #20
  %39 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 14
  %40 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %39, ptr noundef nonnull %34) #20
  %41 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 72
  %42 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %41, ptr noundef nonnull %34) #20
  %43 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %43) #20
  %44 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 80
  store i32 0, ptr %44, align 8, !tbaa !63
  %45 = tail call ptr @AcquirePixelCache(i64 noundef 0) #20
  %46 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 49
  store ptr %45, ptr %46, align 8, !tbaa !64
  %47 = tail call ptr @CloneBlobInfo(ptr noundef null) #20
  %48 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 52
  store ptr %47, ptr %48, align 8, !tbaa !65
  %49 = tail call i64 @time(ptr noundef null) #20
  %50 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 82
  store i64 %49, ptr %50, align 8, !tbaa !66
  %51 = tail call i32 @IsEventLogging() #20
  %52 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 59
  store i32 %51, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 60
  store volatile i64 1, ptr %53, align 8, !tbaa !68
  %54 = tail call ptr @AllocateSemaphoreInfo() #20
  %55 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 61
  store ptr %54, ptr %55, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 66
  store i64 2880220587, ptr %56, align 8, !tbaa !70
  %57 = icmp eq ptr %0, null
  br i1 %57, label %214, label %58

58:                                               ; preds = %16
  %59 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  tail call void @SetBlobExempt(ptr noundef nonnull %7, i32 noundef %62) #20
  %63 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %64 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %65 = tail call i64 @CopyMagickString(ptr noundef nonnull %63, ptr noundef nonnull %64, i64 noundef 4096) #20
  %66 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 54
  %67 = tail call i64 @CopyMagickString(ptr noundef nonnull %66, ptr noundef nonnull %64, i64 noundef 4096) #20
  %68 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %69 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %68, i64 noundef 4096) #20
  %70 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  %75 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %71, ptr noundef nonnull %74) #20
  %76 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  %77 = load <2 x i64>, ptr %74, align 8, !tbaa !74
  store <2 x i64> %77, ptr %76, align 8, !tbaa !74
  %78 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !75
  %80 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 23
  store i64 %79, ptr %80, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  br label %81

81:                                               ; preds = %73, %58
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !77
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %86 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %83, ptr noundef nonnull %3) #20
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !78
  %91 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  %92 = load <2 x i64>, ptr %90, align 8, !tbaa !74
  %93 = load <2 x i64>, ptr %91, align 8, !tbaa !74
  store <2 x i64> %93, ptr %90, align 8, !tbaa !74
  store <2 x i64> %92, ptr %91, align 8, !tbaa !74
  br label %94

94:                                               ; preds = %85, %89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, ptr %0, align 8, !tbaa !79
  %97 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 2
  store i32 %96, ptr %97, align 8, !tbaa !80
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %99 = load i64, ptr %98, align 8, !tbaa !81
  %100 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 3
  store i64 %99, ptr %100, align 8, !tbaa !82
  %101 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %102 = load <2 x i32>, ptr %101, align 8, !tbaa !34
  store <2 x i32> %102, ptr %30, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %104 = load i32, ptr %103, align 8, !tbaa !83
  %105 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 19
  store i32 %104, ptr %105, align 8, !tbaa !84
  %106 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %107 = load ptr, ptr %106, align 8, !tbaa !85
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %110 = call i32 @ParseGeometry(ptr noundef nonnull %107, ptr noundef nonnull %4) #20
  %111 = load double, ptr %4, align 8, !tbaa !86
  %112 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 24
  store double %111, ptr %112, align 8, !tbaa !88
  %113 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %114 = load double, ptr %113, align 8, !tbaa !89
  %115 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 25
  %116 = and i32 %110, 8
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, double %111, double %114
  store double %118, ptr %115, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  br label %119

119:                                              ; preds = %109, %95
  %120 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !90
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 26
  %125 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %124, ptr noundef nonnull align 8 dereferenceable(32) %125, i64 32, i1 false), !tbaa.struct !78
  %126 = load ptr, ptr %120, align 8, !tbaa !90
  %127 = call ptr @GetPageGeometry(ptr noundef %126) #20
  %128 = call i32 @ParseAbsoluteGeometry(ptr noundef %127, ptr noundef nonnull %124) #20
  %129 = call ptr @DestroyString(ptr noundef %127) #20
  br label %130

130:                                              ; preds = %123, %119
  %131 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %132 = load i64, ptr %131, align 8, !tbaa !91
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i64 %132, ptr %20, align 8, !tbaa !54
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %137 = load i32, ptr %136, align 8, !tbaa !92
  %138 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 78
  store i32 %137, ptr %138, align 4, !tbaa !93
  %139 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %140 = load i64, ptr %139, align 8
  store i64 %140, ptr %35, align 8
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %142 = load i64, ptr %141, align 8
  store i64 %142, ptr %37, align 8
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %144 = load i64, ptr %143, align 8
  store i64 %144, ptr %39, align 8
  %145 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %146 = load i64, ptr %145, align 4
  store i64 %146, ptr %41, align 8
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 34
  %148 = load i32, ptr %147, align 8, !tbaa !94
  store i32 %148, ptr %44, align 8, !tbaa !63
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %150 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 47
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !95
  store <2 x ptr> %151, ptr %150, align 8, !tbaa !95
  %152 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %153 = load ptr, ptr %152, align 8, !tbaa !96
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %135
  %156 = load ptr, ptr %46, align 8, !tbaa !64
  call void @ClonePixelCacheMethods(ptr noundef %156, ptr noundef nonnull %153) #20
  br label %157

157:                                              ; preds = %155, %135
  %158 = call i32 @SyncImageSettings(ptr noundef nonnull %0, ptr noundef nonnull %7) #25
  %159 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #20
  %160 = icmp eq ptr %159, null
  br i1 %160, label %207, label %161

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %162 = call i32 @ParseGeometry(ptr noundef nonnull %159, ptr noundef nonnull %5) #20
  %163 = and i32 %162, 32768
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %167 = load i64, ptr %166, align 8, !tbaa !97
  %168 = load double, ptr %5, align 8, !tbaa !86
  %169 = fadd double %168, 5.000000e-01
  %170 = call double @llvm.floor.f64(double %169)
  %171 = fptoui double %170 to i64
  %172 = icmp ugt i64 %167, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %165
  store i64 %171, ptr %166, align 8, !tbaa !97
  br label %197

174:                                              ; preds = %161
  %175 = and i32 %162, 16384
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %179 = load i64, ptr %178, align 8, !tbaa !97
  %180 = load double, ptr %5, align 8, !tbaa !86
  %181 = fadd double %180, 5.000000e-01
  %182 = call double @llvm.floor.f64(double %181)
  %183 = fptoui double %182 to i64
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %187 = load double, ptr %186, align 8, !tbaa !89
  %188 = fadd double %187, 5.000000e-01
  %189 = call double @llvm.floor.f64(double %188)
  %190 = fptosi double %189 to i64
  store i64 %190, ptr %31, align 8, !tbaa !60
  br label %197

191:                                              ; preds = %174
  %192 = load double, ptr %5, align 8, !tbaa !86
  %193 = fadd double %192, 5.000000e-01
  %194 = call double @llvm.floor.f64(double %193)
  %195 = fptoui double %194 to i64
  %196 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  store i64 %195, ptr %196, align 8, !tbaa !97
  br label %197

197:                                              ; preds = %191, %185, %177, %165, %173
  %198 = and i32 %162, 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %202 = load double, ptr %201, align 8, !tbaa !89
  %203 = fadd double %202, 5.000000e-01
  %204 = call double @llvm.floor.f64(double %203)
  %205 = fptosi double %204 to i64
  store i64 %205, ptr %31, align 8, !tbaa !60
  br label %206

206:                                              ; preds = %200, %197
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  br label %207

207:                                              ; preds = %206, %157
  %208 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #20
  %209 = icmp eq ptr %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %208) #20
  %212 = trunc i64 %211 to i32
  %213 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 37
  store i32 %212, ptr %213, align 4, !tbaa !98
  br label %214

214:                                              ; preds = %207, %210, %16
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetTimerInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetBlobExempt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ClonePixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SyncImageSettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3549, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.44) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 12
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %18 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %17) #20
  br label %19

19:                                               ; preds = %15, %12
  %20 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.45) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc double @StringToDoubleInterval(ptr noundef nonnull %20) #25
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 29
  store double %23, ptr %24, align 8, !tbaa !99
  br label %25

25:                                               ; preds = %22, %19
  %26 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.46) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %26) #20
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 71
  store i32 %30, ptr %31, align 4, !tbaa !100
  br label %32

32:                                               ; preds = %28, %25
  %33 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.47) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %33, ptr noundef nonnull %4) #20
  %37 = load double, ptr %4, align 8, !tbaa !86
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2
  store double %37, ptr %38, align 8, !tbaa !101
  %39 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %40 = load double, ptr %39, align 8, !tbaa !89
  %41 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2, i32 1
  %42 = and i32 %36, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, double %37, double %40
  store double %44, ptr %41, align 8
  br label %45

45:                                               ; preds = %35, %32
  %46 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.48) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 13
  %50 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %51 = call i32 @QueryColorDatabase(ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %50) #20
  br label %52

52:                                               ; preds = %48, %45
  %53 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.49) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %53) #25
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  store i64 %56, ptr %57, align 8, !tbaa !102
  br label %58

58:                                               ; preds = %55, %52
  %59 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.50) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %59) #20
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 36
  store i32 %63, ptr %64, align 8, !tbaa !61
  br label %65

65:                                               ; preds = %61, %58
  %66 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.51) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef nonnull %66) #20
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  store i32 %70, ptr %71, align 8, !tbaa !80
  br label %72

72:                                               ; preds = %68, %65
  %73 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.52) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %73) #20
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %6, align 8, !tbaa !67
  br label %78

78:                                               ; preds = %75, %72
  %79 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.53) #20
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %82 = call i32 @ParseGeometry(ptr noundef nonnull %79, ptr noundef nonnull %5) #20
  %83 = load double, ptr %5, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  store double %83, ptr %84, align 8, !tbaa !88
  %85 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %86 = load double, ptr %85, align 8, !tbaa !89
  %87 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %88 = and i32 %82, 8
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, double %83, double %86
  store double %90, ptr %87, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  br label %91

91:                                               ; preds = %81, %78
  %92 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.54) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %92) #25
  %96 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  store i64 %95, ptr %96, align 8, !tbaa !54
  br label %97

97:                                               ; preds = %94, %91
  %98 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.55) #20
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 0, ptr noundef nonnull %98) #20
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  store i32 %102, ptr %103, align 8, !tbaa !103
  br label %104

104:                                              ; preds = %100, %97
  %105 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.56) #20
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %105) #20
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  store i32 %109, ptr %110, align 8, !tbaa !104
  br label %111

111:                                              ; preds = %107, %104
  %112 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.57) #20
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = call fastcc double @StringToDoubleInterval(ptr noundef nonnull %112) #25
  %116 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  store double %115, ptr %116, align 8, !tbaa !105
  br label %117

117:                                              ; preds = %114, %111
  %118 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.58) #20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %118) #20
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  store i32 %122, ptr %123, align 4, !tbaa !106
  br label %124

124:                                              ; preds = %120, %117
  %125 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.59) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %124
  %128 = call i32 @ParseGeometry(ptr noundef nonnull %125, ptr noundef nonnull %4) #20
  %129 = load double, ptr %4, align 8, !tbaa !86
  %130 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1
  store double %129, ptr %130, align 8, !tbaa !107
  %131 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !89
  %133 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1, i32 1
  %134 = and i32 %128, 8
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, double %129, double %132
  store double %136, ptr %133, align 8
  br label %137

137:                                              ; preds = %127, %124
  %138 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.60) #20
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef nonnull %138) #20
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 83
  store i32 %142, ptr %143, align 8, !tbaa !108
  br label %144

144:                                              ; preds = %140, %137
  %145 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.61) #20
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %145) #20
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 17
  store i32 %149, ptr %150, align 8, !tbaa !56
  br label %151

151:                                              ; preds = %147, %144
  %152 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.62) #20
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = call i64 @ParseCommandOption(i32 noundef 32, i32 noundef 0, ptr noundef nonnull %152) #20
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 33
  store i32 %156, ptr %157, align 4, !tbaa !59
  br label %158

158:                                              ; preds = %154, %151
  %159 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.63) #20
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %159) #20
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 70
  store i32 %163, ptr %164, align 8, !tbaa !109
  br label %165

165:                                              ; preds = %161, %158
  %166 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.64) #20
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %166) #25
  %170 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 42
  store i64 %169, ptr %170, align 8, !tbaa !110
  br label %171

171:                                              ; preds = %168, %165
  %172 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.65) #20
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 14
  %176 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %177 = call i32 @QueryColorDatabase(ptr noundef nonnull %172, ptr noundef nonnull %175, ptr noundef nonnull %176) #20
  br label %178

178:                                              ; preds = %174, %171
  %179 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.66) #20
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = call i64 @ParseCommandOption(i32 noundef 50, i32 noundef 0, ptr noundef nonnull %179) #20
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  store i32 %183, ptr %184, align 8, !tbaa !111
  br label %185

185:                                              ; preds = %181, %178
  %186 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.43) #20
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = call ptr @GetPageGeometry(ptr noundef nonnull %186) #20
  %190 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %191 = call i32 @ParseAbsoluteGeometry(ptr noundef %189, ptr noundef nonnull %190) #20
  %192 = call ptr @DestroyString(ptr noundef %189) #20
  br label %193

193:                                              ; preds = %188, %185
  %194 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.67) #20
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %194) #25
  %198 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %197, ptr %198, align 8, !tbaa !82
  br label %199

199:                                              ; preds = %196, %193
  %200 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.68) #20
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = call i32 @ParseGeometry(ptr noundef nonnull %200, ptr noundef nonnull %4) #20
  %204 = load double, ptr %4, align 8, !tbaa !86
  %205 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16
  store double %204, ptr %205, align 8, !tbaa !112
  %206 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %207 = load double, ptr %206, align 8, !tbaa !89
  %208 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 0, i32 1
  %209 = and i32 %203, 8
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, double %204, double %207
  store double %211, ptr %208, align 8
  br label %212

212:                                              ; preds = %202, %199
  %213 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %214 = load i64, ptr %213, align 8, !tbaa !81
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %214, ptr %217, align 8, !tbaa !82
  br label %218

218:                                              ; preds = %216, %212
  %219 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #20
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %219) #25
  %223 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  store i64 %222, ptr %223, align 8, !tbaa !113
  br label %224

224:                                              ; preds = %221, %218
  %225 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #20
  %226 = icmp eq ptr %225, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %225) #20
  %229 = trunc i64 %228 to i32
  %230 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 5
  store i32 %229, ptr %230, align 4, !tbaa !114
  br label %231

231:                                              ; preds = %227, %224
  %232 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #20
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %231
  %235 = call ptr @GetPageGeometry(ptr noundef nonnull %232) #20
  %236 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 74
  %237 = call i32 @ParseAbsoluteGeometry(ptr noundef %235, ptr noundef nonnull %236) #20
  %238 = call ptr @DestroyString(ptr noundef %235) #20
  br label %239

239:                                              ; preds = %234, %231
  %240 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #20
  %241 = icmp eq ptr %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 72
  %244 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %245 = call i32 @QueryColorDatabase(ptr noundef nonnull %240, ptr noundef nonnull %243, ptr noundef nonnull %244) #20
  br label %246

246:                                              ; preds = %242, %239
  %247 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #20
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = call i64 @ParseCommandOption(i32 noundef 66, i32 noundef 0, ptr noundef nonnull %247) #20
  %251 = trunc i64 %250 to i32
  %252 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 77
  store i32 %251, ptr %252, align 8, !tbaa !115
  br label %253

253:                                              ; preds = %249, %246
  %254 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.74) #20
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef nonnull %254) #20
  %258 = trunc i64 %257 to i32
  br label %262

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %261 = load i32, ptr %260, align 8, !tbaa !83
  br label %262

262:                                              ; preds = %259, %256
  %263 = phi i32 [ %258, %256 ], [ %261, %259 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %286, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %267 = load i32, ptr %266, align 8, !tbaa !84
  %268 = icmp eq i32 %267, %263
  br i1 %268, label %285, label %269

269:                                              ; preds = %265
  switch i32 %267, label %285 [
    i32 1, label %270
    i32 2, label %276
  ]

270:                                              ; preds = %269
  %271 = icmp eq i32 %263, 2
  br i1 %271, label %272, label %285

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %274 = load <2 x double>, ptr %273, align 8, !tbaa !57
  %275 = fdiv <2 x double> %274, <double 2.540000e+00, double 2.540000e+00>
  store <2 x double> %275, ptr %273, align 8, !tbaa !57
  br label %285

276:                                              ; preds = %269
  %277 = icmp eq i32 %263, 1
  br i1 %277, label %278, label %285

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %280 = load <2 x double>, ptr %279, align 8, !tbaa !57
  %281 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 2.540000e+02, double 2.540000e+02>, <2 x double> <double 5.000000e-01, double 5.000000e-01>)
  %282 = fptoui <2 x double> %281 to <2 x i64>
  %283 = uitofp <2 x i64> %282 to <2 x double>
  %284 = fdiv <2 x double> %283, <double 1.000000e+02, double 1.000000e+02>
  store <2 x double> %284, ptr %279, align 8, !tbaa !57
  br label %285

285:                                              ; preds = %272, %270, %278, %276, %269, %265
  store i32 %263, ptr %266, align 8, !tbaa !84
  br label %286

286:                                              ; preds = %285, %262
  %287 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.75) #20
  %288 = icmp eq ptr %287, null
  br i1 %288, label %299, label %289

289:                                              ; preds = %286
  %290 = call i32 @ParseGeometry(ptr noundef nonnull %287, ptr noundef nonnull %4) #20
  %291 = load double, ptr %4, align 8, !tbaa !86
  %292 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3
  store double %291, ptr %292, align 8, !tbaa !116
  %293 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %294 = load double, ptr %293, align 8, !tbaa !89
  %295 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3, i32 1
  %296 = and i32 %290, 8
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, double %291, double %294
  store double %298, ptr %295, align 8
  br label %299

299:                                              ; preds = %289, %286
  call void @ResetImageOptionIterator(ptr noundef nonnull %0) #20
  %300 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #20
  %301 = icmp eq ptr %300, null
  br i1 %301, label %312, label %302

302:                                              ; preds = %299, %309
  %303 = phi ptr [ %310, %309 ], [ %300, %299 ]
  %304 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull %303) #20
  %305 = icmp eq ptr %304, null
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %303) #20
  %308 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %304) #20
  br label %309

309:                                              ; preds = %306, %302
  %310 = call ptr @GetNextImageOption(ptr noundef %0) #20
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %302, !llvm.loop !117

312:                                              ; preds = %309, %299
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireImageInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(16792) ptr @AcquireMagickMemory(i64 noundef 16792) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #22
  call void @GetExceptionInfo(ptr noundef nonnull %1) #20
  %5 = tail call ptr @__errno_location() #23
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #20
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 336, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7) #20
  %9 = call ptr @DestroyString(ptr noundef %7) #20
  call void @CatchException(ptr noundef nonnull %1) #20
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

11:                                               ; preds = %0
  tail call void @GetImageInfo(ptr noundef nonnull %2) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1280, ptr noundef nonnull @.str.2) #20
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 16792) #20
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !119
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  store i32 1, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  store i32 134217719, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  store i64 0, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !122
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  store i32 1, ptr %9, align 8, !tbaa !92
  %10 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @IsStringTrue(ptr noundef nonnull %10) #20
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 61
  store i32 %13, ptr %14, align 8, !tbaa !123
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %10) #20
  br label %16

16:                                               ; preds = %12, %1
  %17 = tail call ptr @AcquireExceptionInfo() #20
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %19 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %18, ptr noundef %17) #20
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %21 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %20, ptr noundef %17) #20
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %23 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %22, ptr noundef %17) #20
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %25 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %24, ptr noundef %17) #20
  %26 = tail call ptr @DestroyExceptionInfo(ptr noundef %17) #20
  %27 = tail call i32 @IsEventLogging() #20
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  store i32 %27, ptr %28, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 2880220587, ptr %29, align 8, !tbaa !125
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AcquireNextImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @AcquireImage(ptr noundef %0) #25
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69
  store ptr %10, ptr %11, align 8, !tbaa !126
  %12 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #20
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 53
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %18 = tail call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef 4096) #20
  %19 = icmp eq ptr %0, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #20
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %24 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef 4096) #20
  br label %25

25:                                               ; preds = %20, %14
  %26 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #20
  tail call void @DestroyBlob(ptr noundef %26) #20
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = tail call ptr @ReferenceBlob(ptr noundef %28) #20
  %30 = load ptr, ptr %11, align 8, !tbaa !126
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 52
  store ptr %29, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !103
  %34 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 34
  store i32 %33, ptr %34, align 8, !tbaa !103
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %36 = load i64, ptr %35, align 8, !tbaa !113
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 39
  store i64 %37, ptr %38, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  store ptr %1, ptr %39, align 8, !tbaa !127
  br label %40

40:                                               ; preds = %9, %25
  ret void
}

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AppendImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !67
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.8, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !130
  %18 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %11
  %21 = icmp eq i32 %1, 0
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi i32 [ %13, %20 ], [ %31, %43 ]
  %24 = phi i64 [ %15, %20 ], [ %45, %43 ]
  %25 = phi i64 [ 1, %20 ], [ %32, %43 ]
  %26 = phi i64 [ %17, %20 ], [ %44, %43 ]
  %27 = phi ptr [ %18, %20 ], [ %46, %43 ]
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %23, i32 1
  %32 = add i64 %25, 1
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !130
  br i1 %21, label %40, label %37

37:                                               ; preds = %22
  %38 = tail call i64 @llvm.umax.i64(i64 %34, i64 %24)
  %39 = add i64 %36, %26
  br label %43

40:                                               ; preds = %22
  %41 = add i64 %34, %24
  %42 = tail call i64 @llvm.umax.i64(i64 %36, i64 %26)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i64 [ %39, %37 ], [ %42, %40 ]
  %45 = phi i64 [ %38, %37 ], [ %41, %40 ]
  %46 = tail call ptr @GetNextImageInList(ptr noundef nonnull %27) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %22, !llvm.loop !131

48:                                               ; preds = %43, %11
  %49 = phi i64 [ %17, %11 ], [ %44, %43 ]
  %50 = phi i64 [ 1, %11 ], [ %32, %43 ]
  %51 = phi i64 [ %15, %11 ], [ %45, %43 ]
  %52 = phi i32 [ %13, %11 ], [ %31, %43 ]
  %53 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %51, i64 noundef %49, i32 noundef 1, ptr noundef %2) #25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %197, label %55

55:                                               ; preds = %48
  %56 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %53, i32 noundef 1) #25
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %59) #20
  %60 = tail call ptr @DestroyImage(ptr noundef nonnull %53) #25
  br label %197

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 6
  store i32 %52, ptr %62, align 8, !tbaa !128
  %63 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %53) #25, !range !132
  %64 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %53, ptr noundef %2) #20
  %65 = icmp sgt i64 %50, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @DestroyCacheView(ptr noundef %64) #20
  br label %197

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %70 = icmp eq i32 %1, 0
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %72 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  %73 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #25
  %74 = icmp eq ptr %73, null
  br i1 %74, label %195, label %78

75:                                               ; preds = %186
  %76 = call ptr @CloneImage(ptr noundef %187, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #25
  %77 = icmp eq ptr %76, null
  br i1 %77, label %190, label %78, !llvm.loop !133

78:                                               ; preds = %68, %75
  %79 = phi ptr [ %76, %75 ], [ %73, %68 ]
  %80 = phi i64 [ %188, %75 ], [ 0, %68 ]
  %81 = phi ptr [ %187, %75 ], [ %0, %68 ]
  %82 = phi i64 [ %181, %75 ], [ 0, %68 ]
  %83 = phi i64 [ %182, %75 ], [ 0, %68 ]
  %84 = load i32, ptr %69, align 4, !tbaa !55
  %85 = call i32 @TransformImageColorspace(ptr noundef nonnull %79, i32 noundef %84) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call ptr @DestroyCacheView(ptr noundef %64) #20
  br label %193

89:                                               ; preds = %78
  call void @SetGeometry(ptr noundef nonnull %53, ptr noundef nonnull %4) #20
  %90 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !129
  %92 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 8
  %93 = load i64, ptr %92, align 8, !tbaa !130
  %94 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 35
  %95 = load i32, ptr %94, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %91, i64 noundef %93, i32 noundef %95, ptr noundef nonnull %4) #20
  %96 = load i64, ptr %71, align 8
  %97 = load i64, ptr %72, align 8
  %98 = select i1 %70, i64 0, i64 %96
  %99 = sub nsw i64 %82, %98
  %100 = select i1 %70, i64 %97, i64 0
  %101 = sub i64 %83, %100
  %102 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %79, ptr noundef %2) #20
  %103 = load i64, ptr %92, align 8, !tbaa !130
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %171

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 6
  %107 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 1
  br label %108

108:                                              ; preds = %105, %166
  %109 = phi i64 [ 0, %105 ], [ %168, %166 ]
  %110 = phi i32 [ %85, %105 ], [ %167, %166 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %166, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %90, align 8, !tbaa !129
  %114 = call ptr @GetCacheViewVirtualPixels(ptr noundef %102, i64 noundef 0, i64 noundef %109, i64 noundef %113, i64 noundef 1, ptr noundef %2) #26
  %115 = add nsw i64 %101, %109
  %116 = load i64, ptr %90, align 8, !tbaa !129
  %117 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %64, i64 noundef %99, i64 noundef %115, i64 noundef %116, i64 noundef 1, ptr noundef %2) #26
  %118 = icmp eq ptr %114, null
  %119 = icmp eq ptr %117, null
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %166, label %121

121:                                              ; preds = %112
  %122 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %102) #20
  %123 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %64) #20
  %124 = load i64, ptr %90, align 8, !tbaa !129
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %121
  %127 = load i32, ptr %106, align 8, !tbaa !128
  %128 = icmp eq i32 %127, 0
  %129 = load i32, ptr %107, align 4, !tbaa !55
  %130 = icmp eq i32 %129, 12
  %131 = icmp eq ptr %123, null
  %132 = icmp eq ptr %122, null
  br label %133

133:                                              ; preds = %126, %157
  %134 = phi i64 [ 0, %126 ], [ %160, %157 ]
  %135 = phi ptr [ %117, %126 ], [ %159, %157 ]
  %136 = phi ptr [ %114, %126 ], [ %158, %157 ]
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !134
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %135, i64 0, i32 2
  store i16 %138, ptr %139, align 2, !tbaa !134
  %140 = load <2 x i16>, ptr %136, align 2, !tbaa !135
  store <2 x i16> %140, ptr %135, align 2, !tbaa !135
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %135, i64 0, i32 3
  store i16 0, ptr %141, align 2, !tbaa !136
  br i1 %128, label %145, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 3
  %144 = load i16, ptr %143, align 2, !tbaa !136
  store i16 %144, ptr %141, align 2, !tbaa !136
  br label %145

145:                                              ; preds = %142, %133
  br i1 %130, label %146, label %157

146:                                              ; preds = %145
  %147 = load i32, ptr %69, align 4, !tbaa !55
  %148 = icmp eq i32 %147, 12
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = getelementptr inbounds i16, ptr %123, i64 %134
  br i1 %131, label %157, label %151

151:                                              ; preds = %149
  br i1 %132, label %155, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds i16, ptr %122, i64 %134
  %154 = load i16, ptr %153, align 2, !tbaa !135
  br label %155

155:                                              ; preds = %151, %152
  %156 = phi i16 [ %154, %152 ], [ 0, %151 ]
  store i16 %156, ptr %150, align 2, !tbaa !135
  br label %157

157:                                              ; preds = %149, %155, %146, %145
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %135, i64 1
  %160 = add nuw nsw i64 %134, 1
  %161 = icmp eq i64 %160, %124
  br i1 %161, label %162, label %133, !llvm.loop !137

162:                                              ; preds = %157, %121
  %163 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %64, ptr noundef %2) #26
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 0, i32 %110
  br label %166

166:                                              ; preds = %112, %108, %162
  %167 = phi i32 [ %165, %162 ], [ 0, %108 ], [ 0, %112 ]
  %168 = add nuw nsw i64 %109, 1
  %169 = load i64, ptr %92, align 8, !tbaa !130
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %108, label %171, !llvm.loop !138

171:                                              ; preds = %166, %89
  %172 = phi i32 [ 1, %89 ], [ %167, %166 ]
  %173 = call ptr @DestroyCacheView(ptr noundef %102) #20
  br i1 %70, label %174, label %177

174:                                              ; preds = %171
  %175 = load i64, ptr %90, align 8, !tbaa !129
  %176 = add nsw i64 %175, %82
  br label %180

177:                                              ; preds = %171
  %178 = load i64, ptr %92, align 8, !tbaa !130
  %179 = add nsw i64 %178, %83
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi i64 [ %176, %174 ], [ 0, %177 ]
  %182 = phi i64 [ 0, %174 ], [ %179, %177 ]
  %183 = call ptr @DestroyImage(ptr noundef nonnull %79) #25
  %184 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %53, ptr noundef nonnull @.str.9, i64 noundef %80, i64 noundef %50) #25
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %180
  %187 = call ptr @GetNextImageInList(ptr noundef %81) #20
  %188 = add nuw nsw i64 %80, 1
  %189 = icmp eq i64 %188, %50
  br i1 %189, label %190, label %75, !llvm.loop !133

190:                                              ; preds = %186, %75, %180
  %191 = icmp eq i32 %172, 0
  %192 = call ptr @DestroyCacheView(ptr noundef %64) #20
  br i1 %191, label %193, label %197

193:                                              ; preds = %87, %190
  %194 = call ptr @DestroyImage(ptr noundef nonnull %53) #25
  br label %197

195:                                              ; preds = %68
  %196 = call ptr @DestroyCacheView(ptr noundef %64) #20
  br label %197

197:                                              ; preds = %195, %66, %190, %193, %48, %58
  %198 = phi ptr [ null, %58 ], [ null, %48 ], [ %194, %193 ], [ %53, %190 ], [ %53, %66 ], [ %53, %195 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  ret ptr %198
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 806, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #20
  br label %217

18:                                               ; preds = %12
  %19 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 13240) #20
  %20 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 66
  store i64 2880220587, ptr %20, align 8, !tbaa !70
  %21 = load i32, ptr %0, align 8, !tbaa !38
  store i32 %21, ptr %13, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %23 = load i64, ptr %22, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 81
  store i64 %23, ptr %24, align 8, !tbaa !139
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !55
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 6
  store i32 %29, ptr %30, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %35 = load <2 x i64>, ptr %31, align 8, !tbaa !74
  store <2 x i64> %35, ptr %32, align 8, !tbaa !74
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %37 = load i32, ptr %36, align 4, !tbaa !93
  %38 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 78
  store i32 %37, ptr %38, align 4, !tbaa !93
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !140
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %44 = load i64, ptr %43, align 8, !tbaa !102
  %45 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 10
  store i64 %44, ptr %45, align 8, !tbaa !102
  %46 = tail call ptr @AcquireQuantumMemory(i64 noundef %44, i64 noundef 8) #27
  %47 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 11
  store ptr %46, ptr %47, align 8, !tbaa !140
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 826, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #20
  br label %217

52:                                               ; preds = %42
  %53 = load ptr, ptr %39, align 8, !tbaa !140
  %54 = shl i64 %44, 3
  %55 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %46, ptr noundef %53, i64 noundef %54) #20
  br label %56

56:                                               ; preds = %52, %18
  %57 = tail call i32 @CloneImageProfiles(ptr noundef nonnull %13, ptr noundef nonnull %0) #20
  %58 = tail call i32 @CloneImageProperties(ptr noundef nonnull %13, ptr noundef nonnull %0) #20
  %59 = tail call i32 @CloneImageArtifacts(ptr noundef nonnull %13, ptr noundef nonnull %0) #20
  %60 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %60) #20
  %61 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %61) #20
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef nonnull %61, ptr noundef nonnull %62) #20
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %64 = load ptr, ptr %63, align 8, !tbaa !141
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void @Ascii85Initialize(ptr noundef nonnull %13) #20
  br label %67

67:                                               ; preds = %66, %56
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %69 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 56
  %70 = load <2 x i64>, ptr %68, align 8, !tbaa !74
  store <2 x i64> %70, ptr %69, align 8, !tbaa !74
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %72 = load i32, ptr %71, align 8, !tbaa !115
  %73 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 77
  store i32 %72, ptr %73, align 8, !tbaa !115
  %74 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 54
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %76 = tail call i64 @CopyMagickString(ptr noundef nonnull %74, ptr noundef nonnull %75, i64 noundef 4096) #20
  %77 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 55
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %79 = tail call i64 @CopyMagickString(ptr noundef nonnull %77, ptr noundef nonnull %78, i64 noundef 4096) #20
  %80 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 53
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %82 = tail call i64 @CopyMagickString(ptr noundef nonnull %80, ptr noundef nonnull %81, i64 noundef 4096) #20
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %84 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 47
  %85 = load <2 x ptr>, ptr %83, align 8, !tbaa !95
  store <2 x ptr> %85, ptr %84, align 8, !tbaa !95
  %86 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 60
  store volatile i64 1, ptr %86, align 8, !tbaa !68
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %88 = load ptr, ptr %87, align 8, !tbaa !126
  %89 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  store ptr %88, ptr %89, align 8, !tbaa !126
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %91 = load ptr, ptr %90, align 8, !tbaa !127
  %92 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %91, ptr %92, align 8, !tbaa !127
  %93 = tail call ptr @NewImageList() #20
  %94 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 68
  store ptr %93, ptr %94, align 8, !tbaa !142
  %95 = tail call ptr @NewImageList() #20
  %96 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 38
  store ptr %95, ptr %96, align 8, !tbaa !143
  %97 = tail call ptr @NewImageList() #20
  %98 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 73
  store ptr %97, ptr %98, align 8, !tbaa !144
  %99 = icmp eq i32 %3, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %67
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %102 = load ptr, ptr %101, align 8, !tbaa !65
  %103 = tail call ptr @ReferenceBlob(ptr noundef %102) #20
  br label %108

104:                                              ; preds = %67
  %105 = tail call ptr @NewImageList() #20
  store ptr %105, ptr %89, align 8, !tbaa !126
  %106 = tail call ptr @NewImageList() #20
  store ptr %106, ptr %92, align 8, !tbaa !127
  %107 = tail call ptr @CloneBlobInfo(ptr noundef null) #20
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi ptr [ %103, %100 ], [ %107, %104 ]
  %110 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 52
  store ptr %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %112 = load i32, ptr %111, align 8, !tbaa !63
  %113 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 80
  store i32 %112, ptr %113, align 8, !tbaa !63
  %114 = tail call i32 @IsEventLogging() #20
  %115 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 59
  store i32 %114, ptr %115, align 8, !tbaa !67
  %116 = tail call ptr @AllocateSemaphoreInfo() #20
  %117 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 61
  store ptr %116, ptr %117, align 8, !tbaa !69
  %118 = or i64 %2, %1
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %122 = load ptr, ptr %121, align 8, !tbaa !145
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 20
  %126 = tail call ptr @CloneString(ptr noundef nonnull %125, ptr noundef nonnull %122) #20
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %129 = load ptr, ptr %128, align 8, !tbaa !146
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 21
  %133 = tail call ptr @CloneString(ptr noundef nonnull %132, ptr noundef nonnull %129) #20
  br label %134

134:                                              ; preds = %131, %127
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call ptr @CloneImage(ptr noundef nonnull %136, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #25
  store ptr %139, ptr %96, align 8, !tbaa !143
  br label %140

140:                                              ; preds = %138, %134
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %142 = load ptr, ptr %141, align 8, !tbaa !144
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = tail call ptr @CloneImage(ptr noundef nonnull %142, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #25
  store ptr %145, ptr %98, align 8, !tbaa !144
  br label %146

146:                                              ; preds = %144, %140
  %147 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %148 = load ptr, ptr %147, align 8, !tbaa !64
  %149 = tail call ptr @ReferencePixelCache(ptr noundef %148) #20
  %150 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %149, ptr %150, align 8, !tbaa !64
  br label %217

151:                                              ; preds = %108
  %152 = load i64, ptr %31, align 8, !tbaa !129
  %153 = icmp eq i64 %152, %1
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load i64, ptr %33, align 8, !tbaa !130
  %156 = icmp eq i64 %155, %2
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %159 = load ptr, ptr %158, align 8, !tbaa !143
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = tail call ptr @CloneImage(ptr noundef nonnull %159, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #25
  store ptr %162, ptr %96, align 8, !tbaa !143
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %165 = load ptr, ptr %164, align 8, !tbaa !144
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = tail call ptr @CloneImage(ptr noundef nonnull %165, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #25
  store ptr %168, ptr %98, align 8, !tbaa !144
  br label %169

169:                                              ; preds = %163, %167, %154, %151
  %170 = insertelement <2 x i64> poison, i64 %1, i64 0
  %171 = insertelement <2 x i64> %170, i64 %2, i64 1
  %172 = uitofp <2 x i64> %171 to <2 x double>
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %174 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26
  %175 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !147
  %177 = sitofp i64 %176 to double
  %178 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 2
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 2
  %180 = load i64, ptr %179, align 8, !tbaa !148
  %181 = sitofp i64 %180 to double
  %182 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 2
  %183 = load <2 x i64>, ptr %31, align 8, !tbaa !74
  %184 = uitofp <2 x i64> %183 to <2 x double>
  %185 = fdiv <2 x double> %172, %184
  %186 = extractelement <2 x double> %185, i64 0
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %177, double -5.000000e-01)
  %188 = tail call double @llvm.ceil.f64(double %187)
  %189 = fptosi double %188 to i64
  store i64 %189, ptr %178, align 8, !tbaa !147
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %181, double -5.000000e-01)
  %191 = tail call double @llvm.ceil.f64(double %190)
  %192 = fptosi double %191 to i64
  store i64 %192, ptr %182, align 8, !tbaa !148
  %193 = load <2 x i64>, ptr %173, align 8, !tbaa !74
  %194 = uitofp <2 x i64> %193 to <2 x double>
  %195 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %185, <2 x double> %194, <2 x double> <double 5.000000e-01, double 5.000000e-01>)
  %196 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %195)
  %197 = fptoui <2 x double> %196 to <2 x i64>
  store <2 x i64> %197, ptr %174, align 8, !tbaa !74
  %198 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %199 = load i64, ptr %198, align 8, !tbaa !149
  %200 = sitofp i64 %199 to double
  %201 = extractelement <2 x double> %185, i64 1
  %202 = tail call double @llvm.fmuladd.f64(double %201, double %200, double -5.000000e-01)
  %203 = tail call double @llvm.ceil.f64(double %202)
  %204 = fptosi double %203 to i64
  %205 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 3
  store i64 %204, ptr %205, align 8, !tbaa !149
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 3
  %207 = load i64, ptr %206, align 8, !tbaa !150
  %208 = sitofp i64 %207 to double
  %209 = tail call double @llvm.fmuladd.f64(double %201, double %208, double -5.000000e-01)
  %210 = tail call double @llvm.ceil.f64(double %209)
  %211 = fptosi double %210 to i64
  %212 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 3
  store i64 %211, ptr %212, align 8, !tbaa !150
  store i64 %1, ptr %32, align 8, !tbaa !129
  store i64 %2, ptr %34, align 8, !tbaa !130
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %214 = load ptr, ptr %213, align 8, !tbaa !64
  %215 = tail call ptr @ClonePixelCache(ptr noundef %214) #20
  %216 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %215, ptr %216, align 8, !tbaa !64
  br label %217

217:                                              ; preds = %169, %146, %49, %15
  %218 = phi ptr [ null, %15 ], [ null, %49 ], [ %13, %146 ], [ %13, %169 ]
  ret ptr %218
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageStorageClass(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  ret i32 %4
}

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1031, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @LockSemaphoreInfo(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !68
  %13 = add nsw i64 %12, -1
  store volatile i64 %13, ptr %11, align 8, !tbaa !68
  %14 = load volatile i64, ptr %11, align 8, !tbaa !68
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #20
  br i1 %15, label %17, label %68

17:                                               ; preds = %8
  tail call void @DestroyImagePixels(ptr noundef nonnull %0) #20
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #25
  store ptr %22, ptr %18, align 8, !tbaa !143
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %25 = load ptr, ptr %24, align 8, !tbaa !144
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #25
  store ptr %28, ptr %24, align 8, !tbaa !144
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !145
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @DestroyString(ptr noundef nonnull %31) #20
  store ptr %34, ptr %30, align 8, !tbaa !145
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @DestroyString(ptr noundef nonnull %37) #20
  store ptr %40, ptr %36, align 8, !tbaa !146
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #20
  store ptr %46, ptr %42, align 8, !tbaa !140
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !151
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyString(ptr noundef nonnull %49) #20
  store ptr %52, ptr %48, align 8, !tbaa !151
  br label %53

53:                                               ; preds = %51, %47
  tail call void @DestroyImageProfiles(ptr noundef nonnull %0) #20
  tail call void @DestroyImageProperties(ptr noundef nonnull %0) #20
  tail call void @DestroyImageArtifacts(ptr noundef nonnull %0) #20
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %55 = load ptr, ptr %54, align 8, !tbaa !141
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %55) #20
  store ptr %58, ptr %54, align 8, !tbaa !141
  br label %59

59:                                               ; preds = %57, %53
  tail call void @DestroyBlob(ptr noundef nonnull %0) #20
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %60) #20
  %62 = load ptr, ptr %9, align 8, !tbaa !69
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %9) #20
  br label %65

65:                                               ; preds = %64, %59
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 66
  store i64 -2880220588, ptr %66, align 8, !tbaa !70
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #20
  br label %68

68:                                               ; preds = %8, %65
  %69 = phi ptr [ %67, %65 ], [ null, %8 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageBackgroundColor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !67
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2151, ptr noundef nonnull @.str.2) #20
  br label %10

10:                                               ; preds = %8, %1
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %15 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %14) #25, !range !132
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #25, !range !132
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 1) #20
  br label %24

24:                                               ; preds = %22, %17, %13
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !152
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #20
  br label %34

34:                                               ; preds = %32, %28, %24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %14, ptr noundef nonnull %3) #25
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !55
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %3) #25
  br label %39

39:                                               ; preds = %38, %34
  store i16 0, ptr %2, align 2, !tbaa !135
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #25
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %41 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %40) #20
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !130
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %47 = load i64, ptr %4, align 8
  br label %48

48:                                               ; preds = %45, %87
  %49 = phi i64 [ 0, %45 ], [ %89, %87 ]
  %50 = phi i32 [ 1, %45 ], [ %88, %87 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %48
  %53 = load i64, ptr %46, align 8, !tbaa !129
  %54 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %49, i64 noundef %53, i64 noundef 1, ptr noundef nonnull %40) #26
  %55 = icmp eq ptr %54, null
  br i1 %55, label %87, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %46, align 8, !tbaa !129
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %63, %59 ], [ 0, %56 ]
  %61 = phi ptr [ %62, %59 ], [ %54, %56 ]
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  store i64 %47, ptr %61, align 2
  %63 = add nuw nsw i64 %60, 1
  %64 = load i64, ptr %46, align 8, !tbaa !129
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %59, label %66, !llvm.loop !153

66:                                               ; preds = %59, %56
  %67 = load i32, ptr %35, align 4, !tbaa !55
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #20
  %71 = load i64, ptr %46, align 8, !tbaa !129
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = icmp eq ptr %70, null
  br label %75

75:                                               ; preds = %73, %80
  %76 = phi i64 [ 0, %73 ], [ %81, %80 ]
  br i1 %74, label %80, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds i16, ptr %70, i64 %76
  %79 = load i16, ptr %2, align 2, !tbaa !135
  store i16 %79, ptr %78, align 2, !tbaa !135
  br label %80

80:                                               ; preds = %75, %77
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %71
  br i1 %82, label %83, label %75, !llvm.loop !154

83:                                               ; preds = %80, %69, %66
  %84 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %41, ptr noundef nonnull %40) #26
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  br label %87

87:                                               ; preds = %52, %48, %83
  %88 = phi i32 [ %86, %83 ], [ 0, %48 ], [ 0, %52 ]
  %89 = add nuw nsw i64 %49, 1
  %90 = load i64, ptr %42, align 8, !tbaa !130
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %48, label %92, !llvm.loop !155

92:                                               ; preds = %87, %39
  %93 = phi i32 [ 1, %39 ], [ %88, %87 ]
  %94 = call ptr @DestroyCacheView(ptr noundef %41) #20
  br label %95

95:                                               ; preds = %10, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #22
  ret i32 %96
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GravityAdjustGeometry(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !156 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef %1, ptr noundef nonnull %10) #20
  %12 = load ptr, ptr %6, align 8, !tbaa !157
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #20
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CatchImageException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @AcquireExceptionInfo() #20
  tail call void @GetImageException(ptr noundef nonnull %0, ptr noundef %9) #25
  tail call void @CatchException(ptr noundef %9) #20
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #20
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageException(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %2, %6
  br label %10

10:                                               ; preds = %9, %20
  %11 = phi ptr [ %21, %20 ], [ %0, %9 ]
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %13 = load i32, ptr %12, align 8, !tbaa !160
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %1, align 8, !tbaa !159
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @InheritException(ptr noundef nonnull %1, ptr noundef nonnull %12) #20
  br label %19

19:                                               ; preds = %18, %15
  store i32 0, ptr %12, align 8, !tbaa !160
  br label %20

20:                                               ; preds = %10, %19
  %21 = tail call ptr @GetNextImageInList(ptr noundef nonnull %11) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !161

23:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ClipImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClipImagePath(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1) #25, !range !132
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 709, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @AcquireString(ptr noundef %1) #20
  %12 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %11, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %1) #20
  %13 = tail call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef %11) #20
  %14 = tail call ptr @DestroyString(ptr noundef %11) #20
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call ptr @__errno_location() #23
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = tail call ptr @GetExceptionMessage(i32 noundef %18) #20
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, i32 noundef 410, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %21, ptr noundef %19) #20
  %23 = tail call ptr @DestroyString(ptr noundef %19) #20
  br label %51

24:                                               ; preds = %10
  %25 = tail call ptr @AcquireImageInfo() #25
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %25, i64 0, i32 51
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 4096) #20
  %29 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %26, ptr noundef %1, i64 noundef 4096) #20
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #28
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = tail call ptr @BlobToImage(ptr noundef %25, ptr noundef nonnull %13, i64 noundef %30, ptr noundef nonnull %31) #20
  %33 = tail call ptr @DestroyImageInfo(ptr noundef %25) #25
  %34 = icmp eq ptr %32, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %32, align 8, !tbaa !38
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @SyncImage(ptr noundef nonnull %32) #25, !range !132
  %40 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %32, i32 noundef 1) #25
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %35
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = tail call i32 @NegateImage(ptr noundef nonnull %32, i32 noundef 0) #20
  br label %46

46:                                               ; preds = %44, %42
  %47 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 54
  %48 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %47, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %1) #20
  %49 = tail call i32 @SetImageClipMask(ptr noundef nonnull %0, ptr noundef nonnull %32) #25, !range !132
  %50 = tail call ptr @DestroyImage(ptr noundef nonnull %32) #25
  br label %51

51:                                               ; preds = %38, %24, %46, %16
  %52 = phi i32 [ 0, %16 ], [ 1, %46 ], [ 0, %24 ], [ 0, %38 ]
  ret i32 %52
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !124
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #20
  store ptr %13, ptr %9, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyString(ptr noundef nonnull %16) #20
  store ptr %19, ptr %15, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !162
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @DestroyString(ptr noundef nonnull %22) #20
  store ptr %25, ptr %21, align 8, !tbaa !162
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyString(ptr noundef nonnull %28) #20
  store ptr %31, ptr %27, align 8, !tbaa !90
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !163
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @DestroyString(ptr noundef nonnull %34) #20
  store ptr %37, ptr %33, align 8, !tbaa !163
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !164
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @DestroyString(ptr noundef nonnull %40) #20
  store ptr %43, ptr %39, align 8, !tbaa !164
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !165
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @DestroyString(ptr noundef nonnull %46) #20
  store ptr %49, ptr %45, align 8, !tbaa !165
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !166
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @DestroyString(ptr noundef nonnull %52) #20
  store ptr %55, ptr %51, align 8, !tbaa !166
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @DestroyString(ptr noundef nonnull %58) #20
  store ptr %61, ptr %57, align 8, !tbaa !85
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %64 = load ptr, ptr %63, align 8, !tbaa !167
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @DestroyString(ptr noundef nonnull %64) #20
  store ptr %67, ptr %63, align 8, !tbaa !167
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %70 = load ptr, ptr %69, align 8, !tbaa !168
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @DestroyString(ptr noundef nonnull %70) #20
  store ptr %73, ptr %69, align 8, !tbaa !168
  br label %74

74:                                               ; preds = %72, %68
  tail call void @DestroyImageOptions(ptr noundef nonnull %0) #20
  %75 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %76 = load ptr, ptr %75, align 8, !tbaa !96
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %76) #20
  store ptr %79, ptr %75, align 8, !tbaa !96
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %82 = load ptr, ptr %81, align 8, !tbaa !169
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %82) #20
  store ptr %85, ptr %81, align 8, !tbaa !169
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 -2880220588, ptr %87, align 8, !tbaa !125
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #20
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3420, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, ptr %0, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %85, label %11

11:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %13 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %12) #20
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !130
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %21

21:                                               ; preds = %17, %66
  %22 = phi i64 [ 0, %17 ], [ %68, %66 ]
  %23 = phi i32 [ 1, %17 ], [ %67, %66 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %18, align 8, !tbaa !129
  %27 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %13, i64 noundef 0, i64 noundef %22, i64 noundef %26, i64 noundef 1, ptr noundef nonnull %12) #26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %13) #20
  %31 = load i64, ptr %18, align 8, !tbaa !129
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, null
  %35 = load i32, ptr %19, align 8, !tbaa !128
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %33, %57
  %38 = phi i64 [ 0, %33 ], [ %60, %57 ]
  %39 = phi ptr [ %27, %33 ], [ %59, %57 ]
  br i1 %34, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i16, ptr %30, i64 %38
  %42 = load i16, ptr %41, align 2, !tbaa !135
  %43 = zext i16 %42 to i64
  br label %44

44:                                               ; preds = %37, %40
  %45 = phi i64 [ %43, %40 ], [ 0, %37 ]
  %46 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %45, ptr noundef nonnull %2) #25
  %47 = load ptr, ptr %20, align 8, !tbaa !140
  %48 = zext i16 %46 to i64
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %48, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !134
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %48
  %52 = load <2 x i16>, ptr %51, align 2, !tbaa !135
  br i1 %36, label %57, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %48, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !136
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 3
  store i16 %55, ptr %56, align 2, !tbaa !136
  br label %57

57:                                               ; preds = %44, %53
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 2
  store i16 %50, ptr %58, align 2
  store <2 x i16> %52, ptr %39, align 2
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 1
  %60 = add nuw nsw i64 %38, 1
  %61 = icmp eq i64 %60, %31
  br i1 %61, label %62, label %37, !llvm.loop !170

62:                                               ; preds = %57, %29
  %63 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %13, ptr noundef nonnull %12) #26
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %25, %21, %62
  %67 = phi i32 [ %65, %62 ], [ 0, %21 ], [ 0, %25 ]
  %68 = add nuw nsw i64 %22, 1
  %69 = load i64, ptr %14, align 8, !tbaa !130
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %21, label %71, !llvm.loop !171

71:                                               ; preds = %66
  %72 = load i32, ptr %2, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %11
  %75 = phi i1 [ false, %11 ], [ %73, %71 ]
  %76 = phi i32 [ 1, %11 ], [ %67, %71 ]
  %77 = tail call ptr @DestroyCacheView(ptr noundef %13) #20
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %79 = load i32, ptr %78, align 8, !tbaa !63
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i1 %75, i1 false
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %84 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3470, i32 noundef 425, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, ptr noundef nonnull %83) #20
  br label %85

85:                                               ; preds = %74, %82, %8
  %86 = phi i32 [ 0, %8 ], [ %76, %82 ], [ %76, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %86
}

; Function Attrs: optsize
declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageClipMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2393, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !129
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !130
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %10, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2398, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #20
  br label %42

26:                                               ; preds = %16, %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #25
  store ptr %31, ptr %27, align 8, !tbaa !143
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call ptr @NewImageList() #20
  store ptr %33, ptr %27, align 8, !tbaa !143
  br i1 %9, label %42, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %38) #25
  store ptr %39, ptr %27, align 8, !tbaa !143
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %34, %32, %22
  %43 = phi i32 [ 0, %22 ], [ 1, %32 ], [ 0, %34 ], [ %41, %37 ]
  ret i32 %43
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Ascii85Initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReferencePixelCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: optsize
declare ptr @ClonePixelCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireImageInfo() #25
  %3 = icmp eq ptr %0, null
  br i1 %3, label %162, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !79
  store i32 %5, ptr %2, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 2
  %8 = load <2 x i32>, ptr %6, align 8, !tbaa !34
  store <2 x i32> %8, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !122
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !122
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 10
  %14 = load <2 x i64>, ptr %12, align 8, !tbaa !74
  store <2 x i64> %14, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %16 = load i64, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 12
  store i64 %16, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 6
  %19 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = tail call ptr @CloneString(ptr noundef nonnull %18, ptr noundef %20) #20
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 7
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = tail call ptr @CloneString(ptr noundef nonnull %22, ptr noundef %24) #20
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 9
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = tail call ptr @CloneString(ptr noundef nonnull %26, ptr noundef %28) #20
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 8
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = tail call ptr @CloneString(ptr noundef nonnull %30, ptr noundef %32) #20
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 13
  %36 = load <2 x i32>, ptr %34, align 8, !tbaa !34
  store <2 x i32> %36, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 15
  store i32 %38, ptr %39, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %41 = load i64, ptr %40, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 16
  store i64 %41, ptr %42, align 8, !tbaa !81
  %43 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 17
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !163
  %46 = tail call ptr @CloneString(ptr noundef nonnull %43, ptr noundef %45) #20
  %47 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 18
  %48 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !164
  %50 = tail call ptr @CloneString(ptr noundef nonnull %47, ptr noundef %49) #20
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 19
  %52 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !165
  %54 = tail call ptr @CloneString(ptr noundef nonnull %51, ptr noundef %53) #20
  %55 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 20
  %56 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !166
  %58 = tail call ptr @CloneString(ptr noundef nonnull %55, ptr noundef %57) #20
  %59 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 21
  %60 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !85
  %62 = tail call ptr @CloneString(ptr noundef nonnull %59, ptr noundef %61) #20
  %63 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 22
  %64 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 22
  %65 = load <2 x double>, ptr %63, align 8, !tbaa !57
  store <2 x double> %65, ptr %64, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 56
  %67 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 56
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %66, align 8
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 24
  %70 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 25
  %73 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %74 = load i64, ptr %73, align 8
  store i64 %74, ptr %72, align 8
  %75 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 26
  %76 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %77 = load i64, ptr %76, align 8
  store i64 %77, ptr %75, align 8
  %78 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 59
  %79 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %78, align 4
  %81 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 27
  %83 = load <2 x i32>, ptr %81, align 8, !tbaa !34
  store <2 x i32> %83, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 29
  %85 = load i64, ptr %84, align 8, !tbaa !172
  %86 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 29
  store i64 %85, ptr %86, align 8, !tbaa !172
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 30
  %88 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 30
  %89 = load <2 x i32>, ptr %87, align 8, !tbaa !34
  store <2 x i32> %89, ptr %88, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !173
  %92 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 1
  store i32 %91, ptr %92, align 4, !tbaa !173
  %93 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 32
  %94 = load i32, ptr %93, align 8, !tbaa !174
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 32
  store i32 %94, ptr %95, align 8, !tbaa !174
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 33
  %97 = load i64, ptr %96, align 8, !tbaa !175
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 33
  store i64 %97, ptr %98, align 8, !tbaa !175
  %99 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 34
  %100 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 34
  %101 = load <2 x i32>, ptr %99, align 8, !tbaa !34
  store <2 x i32> %101, ptr %100, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 36
  %103 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %104 = load ptr, ptr %103, align 8, !tbaa !167
  %105 = tail call ptr @CloneString(ptr noundef nonnull %102, ptr noundef %104) #20
  %106 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 37
  %107 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %108 = load ptr, ptr %107, align 8, !tbaa !168
  %109 = tail call ptr @CloneString(ptr noundef nonnull %106, ptr noundef %108) #20
  %110 = tail call i32 @CloneImageOptions(ptr noundef nonnull %2, ptr noundef nonnull %0) #20
  %111 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %112 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 41
  %113 = load <2 x ptr>, ptr %111, align 8, !tbaa !95
  store <2 x ptr> %113, ptr %112, align 8, !tbaa !95
  %114 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %115 = load ptr, ptr %114, align 8, !tbaa !96
  %116 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 43
  store ptr %115, ptr %116, align 8, !tbaa !96
  %117 = icmp eq ptr %115, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %4
  %119 = tail call ptr @ReferencePixelCache(ptr noundef nonnull %115) #20
  store ptr %119, ptr %116, align 8, !tbaa !96
  br label %120

120:                                              ; preds = %118, %4
  %121 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %122 = load ptr, ptr %121, align 8, !tbaa !169
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = tail call ptr @CloneStringInfo(ptr noundef nonnull %122) #20
  %126 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 60
  store ptr %125, ptr %126, align 8, !tbaa !169
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %129 = load ptr, ptr %128, align 8, !tbaa !71
  tail call void @SetImageInfoFile(ptr noundef nonnull %2, ptr noundef %129) #25
  %130 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  %131 = load ptr, ptr %130, align 8, !tbaa !176
  %132 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  %133 = load i64, ptr %132, align 8, !tbaa !177
  tail call void @SetImageInfoBlob(ptr noundef nonnull %2, ptr noundef %131, i64 noundef %133) #25
  %134 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %135 = load ptr, ptr %134, align 8, !tbaa !178
  %136 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 44
  store ptr %135, ptr %136, align 8, !tbaa !178
  %137 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 58
  %138 = load i32, ptr %137, align 8, !tbaa !179
  %139 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 58
  store i32 %138, ptr %139, align 8, !tbaa !179
  %140 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 48
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %142 = tail call i64 @CopyMagickString(ptr noundef nonnull %140, ptr noundef nonnull %141, i64 noundef 4096) #20
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 49
  %144 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  %145 = tail call i64 @CopyMagickString(ptr noundef nonnull %143, ptr noundef nonnull %144, i64 noundef 4096) #20
  %146 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 50
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  %148 = tail call i64 @CopyMagickString(ptr noundef nonnull %146, ptr noundef nonnull %147, i64 noundef 4096) #20
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 51
  %150 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %151 = tail call i64 @CopyMagickString(ptr noundef nonnull %149, ptr noundef nonnull %150, i64 noundef 4096) #20
  %152 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 54
  %153 = load <2 x i64>, ptr %12, align 8, !tbaa !74
  store <2 x i64> %153, ptr %152, align 8, !tbaa !74
  %154 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %155 = load i32, ptr %154, align 8, !tbaa !121
  %156 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 38
  store i32 %155, ptr %156, align 8, !tbaa !121
  %157 = tail call i32 @IsEventLogging() #20
  %158 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 52
  store i32 %157, ptr %158, align 8, !tbaa !124
  %159 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  %160 = load i64, ptr %159, align 8, !tbaa !125
  %161 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 57
  store i64 %160, ptr %161, align 8, !tbaa !125
  br label %162

162:                                              ; preds = %1, %127
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @CloneImageOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetImageInfoFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetImageInfoBlob(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  store ptr %1, ptr %11, align 8, !tbaa !176
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  store i64 %2, ptr %12, align 8, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyImagePixels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyImageProfiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyImageProperties(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyImageArtifacts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyImageOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyPixelCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DisassociateImageStream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr @DetachBlob(ptr noundef %10) #20
  ret void
}

; Function Attrs: optsize
declare ptr @DetachBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageClipMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #25
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetImageInfoFile(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1360, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #25
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageChannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1395, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %10 = load i64, ptr %9, align 8, !tbaa !139
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageReferenceCount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @LockSemaphoreInfo(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !68
  %13 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #20
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageVirtualPixelMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1465, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef nonnull %0) #20
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @GetPixelCacheVirtualMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @InterpretImageFilename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %8 = tail call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #20
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, null
  %13 = icmp ne ptr %0, null
  %14 = ptrtoint ptr %2 to i64
  br label %19

15:                                               ; preds = %113, %5
  %16 = phi i32 [ 0, %5 ], [ %114, %113 ]
  %17 = ptrtoint ptr %4 to i64
  %18 = add i64 %17, 4096
  br label %120

19:                                               ; preds = %11, %113
  %20 = phi i64 [ 0, %11 ], [ %116, %113 ]
  %21 = phi ptr [ %9, %11 ], [ %118, %113 ]
  %22 = phi i32 [ 0, %11 ], [ %114, %113 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %23, ptr %6, align 8, !tbaa !95
  %24 = load i8, ptr %23, align 1, !tbaa !180
  switch i8 %24, label %31 [
    i8 37, label %25
    i8 48, label %27
  ]

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %21, i64 2
  br label %113

27:                                               ; preds = %19
  %28 = call i64 @strtol(ptr noundef nonnull %23, ptr noundef nonnull %6, i32 noundef 10) #20
  %29 = load ptr, ptr %6, align 8, !tbaa !95
  %30 = load i8, ptr %29, align 1, !tbaa !180
  br label %31

31:                                               ; preds = %19, %27
  %32 = phi i8 [ %24, %19 ], [ %30, %27 ]
  %33 = phi ptr [ %23, %19 ], [ %29, %27 ]
  switch i8 %32, label %113 [
    i8 100, label %34
    i8 111, label %34
    i8 120, label %34
    i8 91, label %46
  ]

34:                                               ; preds = %31, %31, %31
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %35, ptr %6, align 8, !tbaa !95
  %36 = load i8, ptr %35, align 1, !tbaa !180
  store i8 0, ptr %35, align 1, !tbaa !180
  %37 = ptrtoint ptr %21 to i64
  %38 = sub i64 %37, %14
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = sub nsw i64 4096, %38
  %41 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %39, i64 noundef %40, ptr noundef nonnull %21, i32 noundef %3) #20
  store i8 %36, ptr %35, align 1, !tbaa !180
  %42 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %35, i64 noundef 4096) #20
  %43 = load i8, ptr %33, align 1, !tbaa !180
  %44 = icmp eq i8 %43, 37
  %45 = select i1 %44, ptr %23, ptr %21
  br label %113

46:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #22
  %47 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 93) #28
  %48 = icmp eq ptr %47, null
  br i1 %48, label %109, label %49

49:                                               ; preds = %46, %63
  %50 = phi i64 [ %61, %63 ], [ 1, %46 ]
  %51 = phi i64 [ %65, %63 ], [ 0, %46 ]
  %52 = phi ptr [ %53, %63 ], [ %33, %46 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !180
  switch i8 %54, label %57 [
    i8 0, label %67
    i8 91, label %55
  ]

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %50, 1
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi i64 [ %56, %55 ], [ %50, %49 ]
  %59 = icmp eq i8 %54, 93
  %60 = sext i1 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %51
  store i8 %54, ptr %64, align 1, !tbaa !180
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, 4095
  br i1 %66, label %67, label %49, !llvm.loop !181

67:                                               ; preds = %49, %63, %57
  %68 = phi ptr [ %52, %49 ], [ %53, %63 ], [ %52, %57 ]
  %69 = phi i64 [ %51, %49 ], [ 4095, %63 ], [ %51, %57 ]
  %70 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !180
  %71 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i64 noundef 9) #20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  br i1 %12, label %79, label %74

74:                                               ; preds = %73
  %75 = call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull %7) #20
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %7) #20
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi ptr [ %78, %77 ], [ null, %73 ]
  %81 = icmp eq ptr %80, null
  %82 = and i1 %13, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %7) #20
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi ptr [ %84, %83 ], [ %80, %79 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88

88:                                               ; preds = %74, %85
  %89 = phi ptr [ %86, %85 ], [ %75, %74 ]
  %90 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %90, ptr %6, align 8, !tbaa !95
  %91 = load i8, ptr %90, align 1, !tbaa !180
  store i8 0, ptr %90, align 1, !tbaa !180
  %92 = ptrtoint ptr %21 to i64
  %93 = add i64 %20, %14
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds i8, ptr %4, i64 %94
  %96 = sub i64 4096, %94
  %97 = call i64 @CopyMagickString(ptr noundef %95, ptr noundef nonnull %89, i64 noundef %96) #20
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #28
  %99 = add i64 %20, -1
  %100 = add i64 %99, %98
  %101 = load ptr, ptr %6, align 8, !tbaa !95
  store i8 %91, ptr %101, align 1, !tbaa !180
  %102 = getelementptr inbounds i8, ptr %68, i64 2
  %103 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %102, i64 noundef 4096) #20
  %104 = load ptr, ptr %6, align 8, !tbaa !95
  %105 = getelementptr inbounds i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !180
  %107 = icmp eq i8 %106, 37
  %108 = select i1 %107, ptr %23, ptr %21
  br label %109

109:                                              ; preds = %88, %85, %67, %46
  %110 = phi i32 [ %22, %46 ], [ %22, %67 ], [ %22, %85 ], [ 1, %88 ]
  %111 = phi ptr [ %21, %46 ], [ %21, %67 ], [ %21, %85 ], [ %108, %88 ]
  %112 = phi i64 [ %20, %46 ], [ %20, %67 ], [ %20, %85 ], [ %100, %88 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #22
  br label %113

113:                                              ; preds = %34, %109, %31, %25
  %114 = phi i32 [ %22, %25 ], [ %22, %31 ], [ %110, %109 ], [ 1, %34 ]
  %115 = phi ptr [ %26, %25 ], [ %21, %31 ], [ %111, %109 ], [ %45, %34 ]
  %116 = phi i64 [ %20, %25 ], [ %20, %31 ], [ %112, %109 ], [ %20, %34 ]
  %117 = getelementptr inbounds i8, ptr %115, i64 1
  %118 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %117, i32 noundef 37) #28
  %119 = icmp eq ptr %118, null
  br i1 %119, label %15, label %19, !llvm.loop !182

120:                                              ; preds = %15, %133
  %121 = phi ptr [ %136, %133 ], [ %4, %15 ]
  %122 = phi i32 [ %135, %133 ], [ %16, %15 ]
  store ptr %121, ptr %6, align 8, !tbaa !95
  %123 = load i8, ptr %121, align 1, !tbaa !180
  switch i8 %123, label %133 [
    i8 0, label %137
    i8 37, label %124
  ]

124:                                              ; preds = %120
  %125 = getelementptr inbounds i8, ptr %121, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !180
  %127 = icmp eq i8 %126, 37
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = ptrtoint ptr %121 to i64
  %130 = sub i64 %18, %129
  %131 = call i64 @CopyMagickString(ptr noundef nonnull %121, ptr noundef nonnull %125, i64 noundef %130) #20
  %132 = load ptr, ptr %6, align 8, !tbaa !95
  br label %133

133:                                              ; preds = %120, %124, %128
  %134 = phi ptr [ %132, %128 ], [ %121, %124 ], [ %121, %120 ]
  %135 = phi i32 [ 1, %128 ], [ %122, %124 ], [ %122, %120 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 1
  br label %120, !llvm.loop !183

137:                                              ; preds = %120
  %138 = icmp eq i32 %122, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  %140 = call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #20
  br label %141

141:                                              ; preds = %139, %137
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i64 %142
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @IsHighDynamicRangeImage(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #14 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsImageObject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %1, %5
  br label %8

8:                                                ; preds = %7, %13
  %9 = phi ptr [ %14, %13 ], [ %0, %7 ]
  %10 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 66
  %11 = load i64, ptr %10, align 8, !tbaa !70
  %12 = icmp eq i64 %11, 2880220587
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call ptr @GetNextImageInList(ptr noundef nonnull %9) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !184

16:                                               ; preds = %8, %13
  %17 = phi i32 [ 0, %8 ], [ 1, %13 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsTaintImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, ptr noundef nonnull @.str.2) #20
  br label %9

9:                                                ; preds = %1, %7
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %11 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #20
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 4096) #20
  br label %14

14:                                               ; preds = %9, %27
  %15 = phi ptr [ %28, %27 ], [ %0, %9 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !114
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 55
  %21 = call i32 @LocaleCompare(ptr noundef nonnull %20, ptr noundef nonnull %2) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 53
  %25 = call i32 @LocaleCompare(ptr noundef nonnull %24, ptr noundef nonnull %3) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call ptr @GetNextImageInList(ptr noundef nonnull %15) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !185

30:                                               ; preds = %14, %19, %23, %27
  %31 = phi i32 [ 1, %14 ], [ 1, %19 ], [ 1, %23 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #22
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ModifyImage(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1884, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !95
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %10, %7 ], [ %3, %2 ]
  %13 = tail call i64 @GetImageReferenceCount(ptr noundef %12) #25
  %14 = icmp slt i64 %13, 2
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !95
  %17 = tail call ptr @CloneImage(ptr noundef %16, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #25
  %18 = load ptr, ptr %0, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 61
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  tail call void @LockSemaphoreInfo(ptr noundef %20) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !95
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 60
  %23 = load volatile i64, ptr %22, align 8, !tbaa !68
  %24 = add nsw i64 %23, -1
  store volatile i64 %24, ptr %22, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #20
  store ptr %17, ptr %0, align 8, !tbaa !95
  br label %27

27:                                               ; preds = %11, %15
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @NewMagickImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, ptr noundef nonnull @.str.2) #20
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call ptr @AcquireImage(ptr noundef nonnull %0) #25
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 7
  store i64 %1, ptr %12, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 8
  store i64 %2, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !186
  %16 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !189
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 6
  store i32 %18, ptr %19, align 8, !tbaa !128
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !190
  %22 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 31
  store double %21, ptr %22, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !191
  %25 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 9
  store i64 %24, ptr %25, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %11, ptr noundef nonnull %26) #20
  %28 = load i64, ptr %13, align 8, !tbaa !130
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %10
  %31 = tail call ptr @DestroyCacheView(ptr noundef %27) #20
  br label %66

32:                                               ; preds = %10, %56
  %33 = phi i32 [ %57, %56 ], [ 1, %10 ]
  %34 = phi i64 [ %58, %56 ], [ 0, %10 ]
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %12, align 8, !tbaa !129
  %38 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %34, i64 noundef %37, i64 noundef 1, ptr noundef nonnull %26) #26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #20
  %42 = load i64, ptr %12, align 8, !tbaa !129
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %44
  %45 = phi i64 [ %49, %44 ], [ 0, %40 ]
  %46 = phi ptr [ %48, %44 ], [ %38, %40 ]
  %47 = getelementptr inbounds i16, ptr %41, i64 %45
  tail call fastcc void @SetPixelPacket(ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %46, ptr noundef %47) #25
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 1
  %49 = add nuw nsw i64 %45, 1
  %50 = load i64, ptr %12, align 8, !tbaa !129
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %44, label %52, !llvm.loop !192

52:                                               ; preds = %44, %40
  %53 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef nonnull %26) #26
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %36, %32, %52
  %57 = phi i32 [ %55, %52 ], [ 0, %32 ], [ 0, %36 ]
  %58 = add nuw nsw i64 %34, 1
  %59 = load i64, ptr %13, align 8, !tbaa !130
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %32, label %61, !llvm.loop !193

61:                                               ; preds = %56
  %62 = icmp eq i32 %57, 0
  %63 = tail call ptr @DestroyCacheView(ptr noundef %27) #20
  br i1 %62, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call ptr @DestroyImage(ptr noundef nonnull %11) #25
  br label %66

66:                                               ; preds = %30, %64, %61
  %67 = phi ptr [ %65, %64 ], [ %11, %61 ], [ %11, %30 ]
  ret ptr %67
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #15 !PGOFuncName !194 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !195
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #25
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !134
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !196
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #25
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !197
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !198
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #25
  store i16 %15, ptr %2, align 2, !tbaa !199
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !200
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #25
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !136
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !38
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !201
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #25
  store i16 %33, ptr %3, align 2, !tbaa !135
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ReferenceImage(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2025, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void @LockSemaphoreInfo(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %11 = load volatile i64, ptr %10, align 8, !tbaa !68
  %12 = add nsw i64 %11, 1
  store volatile i64 %12, ptr %10, align 8, !tbaa !68
  %13 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ResetImagePage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2068, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %2
  %11 = call i32 @ParseAbsoluteGeometry(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = and i32 %11, 8
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %3, align 8, !tbaa !202
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = select i1 %16, i64 %17, i64 %19
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  store i64 %17, ptr %21, align 8, !tbaa !203
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  store i64 %20, ptr %22, align 8, !tbaa !204
  br label %23

23:                                               ; preds = %14, %10
  %24 = and i32 %11, 8192
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %11, 1
  %27 = icmp eq i32 %26, 0
  br i1 %25, label %42, label %28

28:                                               ; preds = %23
  br i1 %27, label %35, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !205
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !147
  %34 = add nsw i64 %33, %31
  store i64 %34, ptr %32, align 8, !tbaa !147
  br label %35

35:                                               ; preds = %29, %28
  %36 = and i32 %11, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !206
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  br label %70

42:                                               ; preds = %23
  br i1 %27, label %56, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  store i64 %45, ptr %47, align 8, !tbaa !147
  %48 = load i64, ptr %46, align 8, !tbaa !203
  %49 = icmp eq i64 %48, 0
  %50 = icmp sgt i64 %45, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !129
  %55 = add i64 %54, %45
  store i64 %55, ptr %46, align 8, !tbaa !203
  br label %56

56:                                               ; preds = %43, %52, %42
  %57 = and i32 %11, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  store i64 %61, ptr %62, align 8, !tbaa !149
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !204
  %65 = icmp eq i64 %64, 0
  %66 = icmp sgt i64 %61, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %70

70:                                               ; preds = %38, %68
  %71 = phi ptr [ %69, %68 ], [ %41, %38 ]
  %72 = phi i64 [ %61, %68 ], [ %40, %38 ]
  %73 = phi ptr [ %63, %68 ], [ %41, %38 ]
  %74 = load i64, ptr %71, align 8, !tbaa !74
  %75 = add i64 %74, %72
  store i64 %75, ptr %73, align 8, !tbaa !74
  br label %76

76:                                               ; preds = %70, %56, %59, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !135
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #25
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !199
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #25
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-15
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #14 !PGOFuncName !208 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #15 !PGOFuncName !209 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !135
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !211 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !186
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !195
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !196
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !198
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #26
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !196
  %24 = tail call float @DecodePixelGamma(float noundef %23) #26
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !198
  %27 = tail call float @DecodePixelGamma(float noundef %26) #26
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !186
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !210
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !198
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SetImageChannels(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  store i64 %1, ptr %3, align 8, !tbaa !139
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !186
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !55
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 %13, ptr %14, align 8, !tbaa !128
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !190
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  store double %16, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !191
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %19, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #20
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !130
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %28

28:                                               ; preds = %26, %52
  %29 = phi i64 [ 0, %26 ], [ %54, %52 ]
  %30 = phi i32 [ 1, %26 ], [ %53, %52 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %27, align 8, !tbaa !129
  %34 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %22, i64 noundef 0, i64 noundef %29, i64 noundef %33, i64 noundef 1, ptr noundef nonnull %21) #26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %22) #20
  %38 = load i64, ptr %27, align 8, !tbaa !129
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %40
  %41 = phi i64 [ %45, %40 ], [ 0, %36 ]
  %42 = phi ptr [ %44, %40 ], [ %34, %36 ]
  %43 = getelementptr inbounds i16, ptr %37, i64 %41
  tail call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %42, ptr noundef %43) #25
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 1
  %45 = add nuw nsw i64 %41, 1
  %46 = load i64, ptr %27, align 8, !tbaa !129
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %40, label %48, !llvm.loop !212

48:                                               ; preds = %40, %36
  %49 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %22, ptr noundef nonnull %21) #26
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %32, %28, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %28 ], [ 0, %32 ]
  %54 = add nuw nsw i64 %29, 1
  %55 = load i64, ptr %23, align 8, !tbaa !130
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %28, label %57, !llvm.loop !213

57:                                               ; preds = %52, %8
  %58 = phi i32 [ 1, %8 ], [ %53, %52 ]
  %59 = tail call ptr @DestroyCacheView(ptr noundef %22) #20
  ret i32 %58
}

; Function Attrs: optsize
declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageExtent(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  %5 = icmp eq i64 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  store i64 %1, ptr %8, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  store i64 %2, ptr %9, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageInfo(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %11 = load i32, ptr %10, align 8, !tbaa !124
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #20
  br label %16

16:                                               ; preds = %13, %3
  store i8 0, ptr %8, align 16, !tbaa !180
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 7, ptr noundef nonnull %8) #20
  %18 = load i8, ptr %8, align 16, !tbaa !180
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %97, label %20

20:                                               ; preds = %16
  %21 = call i32 @IsSceneGeometry(ptr noundef nonnull %8, i32 noundef 0) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i32 @IsGeometry(ptr noundef nonnull %8) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %97, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %28 = call ptr @CloneString(ptr noundef nonnull %27, ptr noundef nonnull %8) #20
  br label %97

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %31 = call ptr @CloneString(ptr noundef nonnull %30, ptr noundef nonnull %8) #20
  %32 = load ptr, ptr %30, align 8, !tbaa !162
  %33 = call fastcc i64 @StringToUnsignedLong(ptr noundef %32) #25
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  store i64 %33, ptr %34, align 8, !tbaa !214
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  store i64 %33, ptr %35, align 8, !tbaa !215
  %36 = load ptr, ptr %30, align 8, !tbaa !162
  store ptr %36, ptr %7, align 8, !tbaa !95
  %37 = load i8, ptr %36, align 1, !tbaa !180
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @__ctype_b_loc() #23
  br label %41

41:                                               ; preds = %39, %84
  %42 = phi ptr [ %36, %39 ], [ %87, %84 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !95
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %54, %44 ], [ %42, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !180
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %43, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !135
  %50 = and i16 %49, 8192
  %51 = icmp ne i16 %50, 0
  %52 = icmp eq i8 %46, 44
  %53 = or i1 %52, %51
  %54 = getelementptr inbounds i8, ptr %45, i64 1
  br i1 %53, label %44, label %55, !llvm.loop !216

55:                                               ; preds = %44
  %56 = call i64 @strtol(ptr noundef nonnull %45, ptr noundef nonnull %7, i32 noundef 10) #20
  %57 = load ptr, ptr %40, align 8, !tbaa !95
  %58 = load ptr, ptr %7, align 8, !tbaa !95
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %67, %59 ], [ %58, %55 ]
  %61 = load i8, ptr %60, align 1, !tbaa !180
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %57, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !135
  %65 = and i16 %64, 8192
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds i8, ptr %60, i64 1
  br i1 %66, label %68, label %59, !llvm.loop !217

68:                                               ; preds = %59
  store ptr %60, ptr %7, align 8, !tbaa !95
  %69 = icmp eq i8 %61, 45
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = call i64 @strtol(ptr noundef nonnull %67, ptr noundef nonnull %7, i32 noundef 10) #20
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %71, %70 ], [ %56, %68 ]
  %74 = call i64 @llvm.umin.i64(i64 %56, i64 %73)
  %75 = call i64 @llvm.umax.i64(i64 %56, i64 %73)
  %76 = load i64, ptr %34, align 8, !tbaa !214
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i64 %74, ptr %34, align 8, !tbaa !214
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i64 [ %74, %78 ], [ %76, %72 ]
  %81 = load i64, ptr %35, align 8, !tbaa !215
  %82 = icmp ugt i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 %75, ptr %35, align 8, !tbaa !215
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i64 [ %75, %83 ], [ %81, %79 ]
  %86 = load ptr, ptr %7, align 8, !tbaa !95
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %86, align 1, !tbaa !180
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %41, !llvm.loop !218

90:                                               ; preds = %84, %29
  %91 = phi i64 [ %33, %29 ], [ %85, %84 ]
  %92 = phi i64 [ %33, %29 ], [ %80, %84 ]
  %93 = sub i64 %91, %92
  %94 = add i64 %93, 1
  store i64 %94, ptr %35, align 8, !tbaa !215
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 54
  store i64 %92, ptr %95, align 8, !tbaa !219
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 55
  store i64 %94, ptr %96, align 8, !tbaa !220
  br label %97

97:                                               ; preds = %90, %26, %23, %16
  store i8 0, ptr %4, align 16, !tbaa !180
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 6, ptr noundef nonnull %4) #20
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %98, align 8, !tbaa !221
  %99 = call ptr @AcquireExceptionInfo() #20
  %100 = load i8, ptr %4, align 16, !tbaa !180
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %137, label %102

102:                                              ; preds = %97
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 4096) #20
  call void @LocaleUpper(ptr noundef nonnull %6) #20
  br label %104

104:                                              ; preds = %102, %113
  %105 = phi ptr [ @.str.18, %102 ], [ %116, %113 ]
  %106 = phi i64 [ 0, %102 ], [ %114, %113 ]
  %107 = load i8, ptr %6, align 16, !tbaa !180
  %108 = load i8, ptr %105, align 1, !tbaa !180
  %109 = icmp eq i8 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull %105) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110, %104
  %114 = add nuw nsw i64 %106, 1
  %115 = getelementptr inbounds [18 x ptr], ptr @SetImageInfo.format_type_formats, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !95
  %117 = icmp eq i64 %114, 17
  br i1 %117, label %118, label %104, !llvm.loop !222

118:                                              ; preds = %110, %113
  %119 = phi i32 [ 0, %113 ], [ 2, %110 ]
  %120 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %99) #20
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._MagickInfo, ptr %120, i64 0, i32 15
  %124 = load i32, ptr %123, align 4, !tbaa !223
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 %119, i32 %124
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i32 [ %119, %118 ], [ %126, %122 ]
  switch i32 %128, label %133 [
    i32 0, label %130
    i32 2, label %129
  ]

129:                                              ; preds = %127
  store i32 1, ptr %98, align 8, !tbaa !221
  br label %130

130:                                              ; preds = %127, %129
  %131 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %132 = call i64 @CopyMagickString(ptr noundef nonnull %131, ptr noundef nonnull %6, i64 noundef 4096) #20
  br label %133

133:                                              ; preds = %130, %127
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #20
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, ptr %98, align 8, !tbaa !221
  br label %137

137:                                              ; preds = %133, %136, %97
  store i8 0, ptr %6, align 16, !tbaa !180
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 1, ptr noundef nonnull %6) #20
  %138 = load i8, ptr %6, align 16, !tbaa !180
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %142 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %141, i64 noundef 4096) #20
  br label %154

143:                                              ; preds = %137
  call void @LocaleUpper(ptr noundef nonnull %6) #20
  %144 = call i32 @IsMagickConflict(ptr noundef nonnull %6) #20
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %148 = call i64 @CopyMagickString(ptr noundef nonnull %147, ptr noundef nonnull %6, i64 noundef 4096) #20
  %149 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.22) #20
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store i32 1, ptr %98, align 8, !tbaa !221
  br label %154

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %153, align 8, !tbaa !225
  br label %154

154:                                              ; preds = %143, %152, %151, %140
  %155 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %99) #20
  %156 = call ptr @DestroyExceptionInfo(ptr noundef %99) #20
  %157 = icmp eq ptr %155, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %155) #20
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %162, align 4, !tbaa !226
  br label %163

163:                                              ; preds = %161, %158
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull %5) #20
  %164 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #20
  %165 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !119
  %167 = icmp ne i32 %166, 0
  %168 = icmp ugt i32 %1, 1
  %169 = and i1 %168, %167
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %172 = load i64, ptr %171, align 8, !tbaa !214
  %173 = trunc i64 %172 to i32
  %174 = call i64 @InterpretImageFilename(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %17, i32 noundef %173, ptr noundef nonnull %5) #25
  %175 = call i32 @LocaleCompare(ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170
  %178 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 37) #28
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, ptr %165, align 4, !tbaa !119
  br label %181

181:                                              ; preds = %170, %177, %180, %163
  %182 = load i32, ptr %165, align 4, !tbaa !119
  %183 = icmp ne i32 %182, 0
  %184 = icmp ne i32 %1, 0
  %185 = and i1 %184, %183
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %2) #20
  %188 = icmp eq ptr %187, null
  br i1 %188, label %263, label %189

189:                                              ; preds = %186
  %190 = call i32 @GetMagickAdjoin(ptr noundef nonnull %187) #20
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %263

192:                                              ; preds = %189
  store i32 0, ptr %165, align 4, !tbaa !119
  br label %263

193:                                              ; preds = %181
  %194 = load i32, ptr %98, align 8, !tbaa !221
  %195 = or i32 %194, %1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %263

197:                                              ; preds = %193
  %198 = call ptr @AcquireImage(ptr noundef nonnull %0) #25
  %199 = getelementptr inbounds %struct._Image, ptr %198, i64 0, i32 53
  %200 = call i64 @CopyMagickString(ptr noundef nonnull %199, ptr noundef nonnull %17, i64 noundef 4096) #20
  %201 = call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %198, i32 noundef 2, ptr noundef %2) #20
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = call ptr @DestroyImage(ptr noundef %198) #25
  br label %263

205:                                              ; preds = %197
  %206 = call i32 @IsBlobSeekable(ptr noundef %198) #20
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i32 @IsBlobExempt(ptr noundef %198) #20
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %208, %205
  store i8 0, ptr %5, align 16, !tbaa !180
  %212 = call i32 @ImageToFile(ptr noundef %198, ptr noundef nonnull %5, ptr noundef %2) #20
  %213 = call i32 @CloseBlob(ptr noundef %198) #20
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call ptr @DestroyImage(ptr noundef %198) #25
  br label %263

217:                                              ; preds = %211
  call void @SetImageInfoFile(ptr noundef nonnull %0, ptr noundef null) #25
  %218 = call i64 @CopyMagickString(ptr noundef nonnull %199, ptr noundef nonnull %5, i64 noundef 4096) #20
  %219 = call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %198, i32 noundef 2, ptr noundef %2) #20
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call ptr @DestroyImage(ptr noundef %198) #25
  br label %263

223:                                              ; preds = %217
  %224 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #20
  %225 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %225, align 8, !tbaa !225
  br label %226

226:                                              ; preds = %223, %208
  %227 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 8192) #20
  %228 = call i64 @ReadBlob(ptr noundef %198, i64 noundef 8192, ptr noundef nonnull %9) #20
  %229 = sub nsw i64 0, %228
  %230 = call i64 @SeekBlob(ptr noundef %198, i64 noundef %229, i32 noundef 1) #20
  %231 = call i32 @CloseBlob(ptr noundef %198) #20
  %232 = call ptr @DestroyImage(ptr noundef %198) #25
  %233 = call ptr @AcquireExceptionInfo() #20
  %234 = call ptr @GetMagicInfo(ptr noundef nonnull %9, i64 noundef %228, ptr noundef %233) #20
  %235 = icmp eq ptr %234, null
  br i1 %235, label %252, label %236

236:                                              ; preds = %226
  %237 = call ptr @GetMagicName(ptr noundef nonnull %234) #20
  %238 = icmp eq ptr %237, null
  br i1 %238, label %252, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %241 = call ptr @GetMagicName(ptr noundef nonnull %234) #20
  %242 = call i64 @CopyMagickString(ptr noundef nonnull %240, ptr noundef %241, i64 noundef 4096) #20
  %243 = call ptr @GetMagickInfo(ptr noundef nonnull %240, ptr noundef %233) #20
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %239
  %246 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %243) #20
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245, %239
  %249 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %249, align 4, !tbaa !226
  br label %250

250:                                              ; preds = %248, %245
  %251 = call ptr @DestroyExceptionInfo(ptr noundef %233) #20
  br label %263

252:                                              ; preds = %236, %226
  %253 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %254 = call ptr @GetMagickInfo(ptr noundef nonnull %253, ptr noundef %233) #20
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %254) #20
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256, %252
  %260 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %260, align 4, !tbaa !226
  br label %261

261:                                              ; preds = %259, %256
  %262 = call ptr @DestroyExceptionInfo(ptr noundef %233) #20
  br label %263

263:                                              ; preds = %189, %192, %186, %261, %193, %250, %221, %215, %203
  %264 = phi i32 [ 0, %203 ], [ 0, %215 ], [ 0, %221 ], [ 1, %250 ], [ 1, %193 ], [ 1, %261 ], [ 1, %186 ], [ 1, %192 ], [ 1, %189 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  ret i32 %264
}

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsGeometry(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #17 !PGOFuncName !227 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: optsize
declare void @LocaleUpper(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsBlobExempt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ReadBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @SeekBlob(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagicInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagicName(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2889, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !129
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !130
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %10, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2893, i32 noundef 465, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #20
  br label %42

26:                                               ; preds = %16, %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %28 = load ptr, ptr %27, align 8, !tbaa !144
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #25
  store ptr %31, ptr %27, align 8, !tbaa !144
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call ptr @NewImageList() #20
  store ptr %33, ptr %27, align 8, !tbaa !144
  br i1 %9, label %42, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %38) #25
  store ptr %39, ptr %27, align 8, !tbaa !144
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %34, %32, %22
  %43 = phi i32 [ 0, %22 ], [ 1, %32 ], [ 0, %34 ], [ %41, %37 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2949, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %10) #20
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !130
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
  %22 = load i64, ptr %16, align 8, !tbaa !129
  %23 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %11, i64 noundef 0, i64 noundef %18, i64 noundef %22, i64 noundef 1, ptr noundef nonnull %10) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %16, align 8, !tbaa !129
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %25 ]
  %30 = phi ptr [ %32, %28 ], [ %23, %25 ]
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 3
  store i16 %1, ptr %31, align 2, !tbaa !136
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %35, label %28, !llvm.loop !228

35:                                               ; preds = %28, %25
  %36 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %11, ptr noundef nonnull %10) #26
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %21, %17, %35
  %40 = phi i32 [ %38, %35 ], [ 0, %17 ], [ 0, %21 ]
  %41 = add nuw nsw i64 %18, 1
  %42 = load i64, ptr %12, align 8, !tbaa !130
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %17, label %44, !llvm.loop !229

44:                                               ; preds = %39, %8
  %45 = phi i32 [ 1, %8 ], [ %40, %39 ]
  %46 = tail call ptr @DestroyCacheView(ptr noundef %11) #20
  ret i32 %45
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageVirtualPixelMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3020, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call i32 @SetPixelCacheVirtualMethod(ptr noundef nonnull %0, i32 noundef %1) #20
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @SetPixelCacheVirtualMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SmushImages(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !129
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !130
  %19 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %12
  %22 = icmp eq i32 %1, 0
  br label %23

23:                                               ; preds = %21, %56
  %24 = phi i64 [ %16, %21 ], [ %58, %56 ]
  %25 = phi i64 [ 1, %21 ], [ %33, %56 ]
  %26 = phi i64 [ %18, %21 ], [ %57, %56 ]
  %27 = phi ptr [ %19, %21 ], [ %59, %56 ]
  %28 = phi i32 [ %14, %21 ], [ %32, %56 ]
  %29 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !128
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %28, i32 1
  %33 = add i64 %25, 1
  %34 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !129
  br i1 %22, label %46, label %36

36:                                               ; preds = %23
  %37 = tail call i64 @llvm.umax.i64(i64 %35, i64 %24)
  %38 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !130
  %40 = add i64 %39, %26
  %41 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 67
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, i64 0, i64 %2
  %45 = add i64 %40, %44
  br label %56

46:                                               ; preds = %23
  %47 = add i64 %35, %24
  %48 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 67
  %49 = load ptr, ptr %48, align 8, !tbaa !127
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, i64 0, i64 %2
  %52 = add i64 %47, %51
  %53 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !130
  %55 = tail call i64 @llvm.umax.i64(i64 %54, i64 %26)
  br label %56

56:                                               ; preds = %46, %36
  %57 = phi i64 [ %45, %36 ], [ %55, %46 ]
  %58 = phi i64 [ %37, %36 ], [ %52, %46 ]
  %59 = tail call ptr @GetNextImageInList(ptr noundef nonnull %27) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %23, !llvm.loop !230

61:                                               ; preds = %56, %12
  %62 = phi i32 [ %14, %12 ], [ %32, %56 ]
  %63 = phi i64 [ %18, %12 ], [ %57, %56 ]
  %64 = phi i64 [ 1, %12 ], [ %33, %56 ]
  %65 = phi i64 [ %16, %12 ], [ %58, %56 ]
  %66 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %65, i64 noundef %63, i32 noundef 1, ptr noundef %3) #25
  %67 = icmp eq ptr %66, null
  br i1 %67, label %138, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %66, i32 noundef 1) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %72) #20
  %73 = tail call ptr @DestroyImage(ptr noundef nonnull %66) #25
  br label %138

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 6
  store i32 %62, ptr %75, align 8, !tbaa !128
  %76 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %66) #25, !range !132
  %77 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %66, ptr noundef %3) #20
  %78 = icmp sgt i64 %64, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %74
  %80 = icmp eq i32 %1, 0
  %81 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %82 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %83

83:                                               ; preds = %79, %115
  %84 = phi i64 [ 0, %79 ], [ %117, %115 ]
  %85 = phi i64 [ 0, %79 ], [ %116, %115 ]
  %86 = phi i64 [ 0, %79 ], [ %119, %115 ]
  %87 = phi ptr [ %0, %79 ], [ %118, %115 ]
  call void @SetGeometry(ptr noundef nonnull %66, ptr noundef nonnull %5) #20
  %88 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !129
  %90 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !130
  %92 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 35
  %93 = load i32, ptr %92, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %89, i64 noundef %91, i32 noundef %93, ptr noundef nonnull %5) #20
  br i1 %80, label %97, label %94

94:                                               ; preds = %83
  %95 = load i64, ptr %81, align 8, !tbaa !205
  %96 = call fastcc i64 @SmushYGap(ptr noundef nonnull %66, ptr noundef nonnull %87, i64 noundef %2, ptr noundef %3) #25
  br label %100

97:                                               ; preds = %83
  %98 = call fastcc i64 @SmushXGap(ptr noundef nonnull %66, ptr noundef nonnull %87, i64 noundef %2, ptr noundef %3) #25
  %99 = load i64, ptr %82, align 8, !tbaa !206
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i64 [ %95, %94 ], [ %98, %97 ]
  %102 = phi i64 [ %96, %94 ], [ %99, %97 ]
  %103 = sub nsw i64 %84, %102
  %104 = sub nsw i64 %85, %101
  %105 = call i32 @CompositeImage(ptr noundef nonnull %66, i32 noundef 40, ptr noundef nonnull %87, i64 noundef %104, i64 noundef %103) #20
  %106 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %87, ptr noundef nonnull @.str.36, i64 noundef %86, i64 noundef %64) #25
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %100
  br i1 %80, label %109, label %112

109:                                              ; preds = %108
  %110 = load i64, ptr %88, align 8, !tbaa !129
  %111 = add nsw i64 %110, %104
  br label %115

112:                                              ; preds = %108
  %113 = load i64, ptr %90, align 8, !tbaa !130
  %114 = add nsw i64 %113, %103
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i64 [ %111, %109 ], [ 0, %112 ]
  %117 = phi i64 [ 0, %109 ], [ %114, %112 ]
  %118 = call ptr @GetNextImageInList(ptr noundef nonnull %87) #20
  %119 = add nuw nsw i64 %86, 1
  %120 = icmp eq i64 %119, %64
  br i1 %120, label %121, label %83, !llvm.loop !231

121:                                              ; preds = %100, %115
  %122 = phi i64 [ %116, %115 ], [ %104, %100 ]
  %123 = phi i64 [ %117, %115 ], [ %103, %100 ]
  %124 = icmp eq i32 %105, 0
  br label %125

125:                                              ; preds = %121, %74
  %126 = phi i1 [ false, %74 ], [ %124, %121 ]
  %127 = phi i64 [ 0, %74 ], [ %122, %121 ]
  %128 = phi i64 [ 0, %74 ], [ %123, %121 ]
  %129 = icmp eq i32 %1, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 7
  store i64 %127, ptr %131, align 8, !tbaa !129
  br label %134

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 8
  store i64 %128, ptr %133, align 8, !tbaa !130
  br label %134

134:                                              ; preds = %132, %130
  %135 = call ptr @DestroyCacheView(ptr noundef %77) #20
  br i1 %126, label %136, label %138

136:                                              ; preds = %134
  %137 = call ptr @DestroyImage(ptr noundef nonnull %66) #25
  br label %138

138:                                              ; preds = %134, %136, %61, %71
  %139 = phi ptr [ null, %71 ], [ null, %61 ], [ %137, %136 ], [ %66, %134 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret ptr %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @SmushYGap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !232 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %4
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %5) #20
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %12, i64 noundef %14, i32 noundef %16, ptr noundef nonnull %5) #20
  %17 = load ptr, ptr %7, align 8, !tbaa !127
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #20
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 35
  %23 = load i32, ptr %22, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %19, i64 noundef %21, i32 noundef %23, ptr noundef nonnull %6) #20
  %24 = load i64, ptr %13, align 8, !tbaa !130
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef %17, ptr noundef %3) #20
  %26 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %3) #20
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !129
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  br label %33

33:                                               ; preds = %30, %80
  %34 = phi i64 [ %24, %30 ], [ %83, %80 ]
  %35 = phi i64 [ 0, %30 ], [ %84, %80 ]
  %36 = load i64, ptr %20, align 8, !tbaa !130
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %40, label %57

38:                                               ; preds = %49
  %39 = icmp sgt i64 %41, 2
  br i1 %39, label %40, label %57, !llvm.loop !233

40:                                               ; preds = %33, %38
  %41 = phi i64 [ %42, %38 ], [ %36, %33 ]
  %42 = add nsw i64 %41, -1
  %43 = load i64, ptr %31, align 8, !tbaa !205
  %44 = add nsw i64 %43, %35
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef %44, i64 noundef %42, i64 noundef 1, i64 noundef 1, ptr noundef %3) #26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, ptr %20, align 8, !tbaa !130
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !136
  %52 = icmp eq i16 %51, -1
  %53 = load i64, ptr %20, align 8, !tbaa !130
  %54 = sub i64 %53, %41
  %55 = icmp ult i64 %54, %34
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %38, label %57, !llvm.loop !233

57:                                               ; preds = %38, %49, %33, %47
  %58 = phi i64 [ %41, %47 ], [ %36, %33 ], [ %41, %49 ], [ %42, %38 ]
  %59 = phi i64 [ %48, %47 ], [ %36, %33 ], [ %53, %49 ], [ %53, %38 ]
  %60 = sub i64 %59, %58
  %61 = load i64, ptr %13, align 8, !tbaa !130
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57, %76
  %64 = phi i64 [ %77, %76 ], [ 0, %57 ]
  %65 = load i64, ptr %32, align 8, !tbaa !205
  %66 = add nsw i64 %65, %35
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef %66, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef %3) #26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !136
  %72 = icmp eq i16 %71, -1
  %73 = add nsw i64 %64, %60
  %74 = icmp slt i64 %73, %34
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = add nuw nsw i64 %64, 1
  %78 = load i64, ptr %13, align 8, !tbaa !130
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %63, label %80, !llvm.loop !234

80:                                               ; preds = %76, %69, %63, %57
  %81 = phi i64 [ 0, %57 ], [ %64, %63 ], [ %64, %69 ], [ %77, %76 ]
  %82 = add nsw i64 %81, %60
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 %34)
  %84 = add nuw nsw i64 %35, 1
  %85 = load i64, ptr %27, align 8, !tbaa !129
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %33, label %87, !llvm.loop !235

87:                                               ; preds = %80, %10
  %88 = phi i64 [ 0, %10 ], [ %84, %80 ]
  %89 = phi i64 [ %24, %10 ], [ %83, %80 ]
  %90 = call ptr @DestroyCacheView(ptr noundef %26) #20
  %91 = call ptr @DestroyCacheView(ptr noundef %25) #20
  %92 = load i64, ptr %27, align 8, !tbaa !129
  %93 = icmp slt i64 %88, %92
  %94 = sub nsw i64 %89, %2
  %95 = select i1 %93, i64 %2, i64 %94
  br label %96

96:                                               ; preds = %87, %4
  %97 = phi i64 [ 0, %4 ], [ %95, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret i64 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @SmushXGap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !236 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %4
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #20
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %12, i64 noundef %14, i32 noundef %16, ptr noundef nonnull %6) #20
  %17 = load ptr, ptr %7, align 8, !tbaa !127
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %5) #20
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 35
  %23 = load i32, ptr %22, align 4, !tbaa !106
  call void @GravityAdjustGeometry(i64 noundef %19, i64 noundef %21, i32 noundef %23, ptr noundef nonnull %5) #20
  %24 = load i64, ptr %11, align 8, !tbaa !129
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef %17, ptr noundef %3) #20
  %26 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %3) #20
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !130
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  br label %33

33:                                               ; preds = %30, %80
  %34 = phi i64 [ %24, %30 ], [ %83, %80 ]
  %35 = phi i64 [ 0, %30 ], [ %84, %80 ]
  %36 = load i64, ptr %18, align 8, !tbaa !129
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %40, label %57

38:                                               ; preds = %49
  %39 = icmp sgt i64 %41, 2
  br i1 %39, label %40, label %57, !llvm.loop !237

40:                                               ; preds = %33, %38
  %41 = phi i64 [ %42, %38 ], [ %36, %33 ]
  %42 = add nsw i64 %41, -1
  %43 = load i64, ptr %31, align 8, !tbaa !206
  %44 = add nsw i64 %43, %35
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef %42, i64 noundef %44, i64 noundef 1, i64 noundef 1, ptr noundef %3) #26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, ptr %18, align 8, !tbaa !129
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !136
  %52 = icmp eq i16 %51, -1
  %53 = load i64, ptr %18, align 8, !tbaa !129
  %54 = sub i64 %53, %41
  %55 = icmp ult i64 %54, %34
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %38, label %57, !llvm.loop !237

57:                                               ; preds = %38, %49, %33, %47
  %58 = phi i64 [ %41, %47 ], [ %36, %33 ], [ %41, %49 ], [ %42, %38 ]
  %59 = phi i64 [ %48, %47 ], [ %36, %33 ], [ %53, %49 ], [ %53, %38 ]
  %60 = sub i64 %59, %58
  %61 = load i64, ptr %11, align 8, !tbaa !129
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57, %76
  %64 = phi i64 [ %77, %76 ], [ 0, %57 ]
  %65 = load i64, ptr %32, align 8, !tbaa !206
  %66 = add nsw i64 %65, %35
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef %64, i64 noundef %66, i64 noundef 1, i64 noundef 1, ptr noundef %3) #26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !136
  %72 = icmp eq i16 %71, -1
  %73 = add nsw i64 %64, %60
  %74 = icmp slt i64 %73, %34
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = add nuw nsw i64 %64, 1
  %78 = load i64, ptr %11, align 8, !tbaa !129
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %63, label %80, !llvm.loop !238

80:                                               ; preds = %76, %69, %63, %57
  %81 = phi i64 [ 0, %57 ], [ %64, %63 ], [ %64, %69 ], [ %77, %76 ]
  %82 = add nsw i64 %81, %60
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 %34)
  %84 = add nuw nsw i64 %35, 1
  %85 = load i64, ptr %27, align 8, !tbaa !130
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %33, label %87, !llvm.loop !239

87:                                               ; preds = %80, %10
  %88 = phi i64 [ 0, %10 ], [ %84, %80 ]
  %89 = phi i64 [ %24, %10 ], [ %83, %80 ]
  %90 = call ptr @DestroyCacheView(ptr noundef %26) #20
  %91 = call ptr @DestroyCacheView(ptr noundef %25) #20
  %92 = load i64, ptr %27, align 8, !tbaa !130
  %93 = icmp slt i64 %88, %92
  %94 = sub nsw i64 %89, %2
  %95 = select i1 %93, i64 %2, i64 %94
  br label %96

96:                                               ; preds = %87, %4
  %97 = phi i64 [ 0, %4 ], [ %95, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret i64 %97
}

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @StripImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3360, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  tail call void @DestroyImageProfiles(ptr noundef nonnull %0) #20
  %8 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #20
  %9 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #20
  %10 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #20
  %11 = tail call i32 @SetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #20
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i16 @PushColormapIndex(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !PGOFuncName !240 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !102
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i16
  br label %10

9:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i16 [ %8, %7 ], [ 0, %9 ]
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SyncImagesSettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3514, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %2, %6
  br label %10

10:                                               ; preds = %9, %10
  %11 = phi ptr [ %13, %10 ], [ %1, %9 ]
  %12 = tail call i32 @SyncImageSettings(ptr noundef %0, ptr noundef nonnull %11) #25
  %13 = tail call ptr @GetNextImageInList(ptr noundef nonnull %11) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !241

15:                                               ; preds = %10
  %16 = tail call i32 @DeleteImageOption(ptr noundef %0, ptr noundef nonnull @.str.43) #20
  ret i32 1
}

; Function Attrs: optsize
declare i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDoubleInterval(ptr noundef %0) unnamed_addr #0 !PGOFuncName !242 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %2) #20
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = load i8, ptr %4, align 1, !tbaa !180
  %6 = icmp eq i8 %5, 37
  %7 = fmul double %3, 6.553600e+02
  %8 = select i1 %6, double %7, double %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret double %8
}

; Function Attrs: optsize
declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #14 !PGOFuncName !243 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #14 !PGOFuncName !244 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { hot nounwind optsize }
attributes #27 = { nounwind optsize allocsize(0,1) }
attributes #28 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!57 = !{!44, !44, i64 0}
!58 = !{!39, !44, i64 200}
!59 = !{!39, !35, i64 404}
!60 = !{!39, !40, i64 448}
!61 = !{!39, !35, i64 416}
!62 = !{!39, !44, i64 384}
!63 = !{!39, !35, i64 13200}
!64 = !{!39, !41, i64 584}
!65 = !{!39, !41, i64 608}
!66 = !{!39, !40, i64 13216}
!67 = !{!39, !35, i64 12976}
!68 = !{!39, !40, i64 12984}
!69 = !{!39, !41, i64 12992}
!70 = !{!39, !40, i64 13080}
!71 = !{!72, !41, i64 304}
!72 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !40, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !35, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !40, i64 216, !35, i64 224, !35, i64 228, !41, i64 232, !41, i64 240, !35, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !41, i64 312, !40, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !41, i64 16720, !40, i64 16728, !40, i64 16736, !42, i64 16744, !40, i64 16752, !35, i64 16760, !42, i64 16764, !41, i64 16776, !35, i64 16784}
!73 = !{!72, !41, i64 24}
!74 = !{!40, !40, i64 0}
!75 = !{!39, !40, i64 328}
!76 = !{!39, !40, i64 256}
!77 = !{!72, !41, i64 32}
!78 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !74}
!79 = !{!72, !35, i64 0}
!80 = !{!39, !35, i64 8}
!81 = !{!72, !40, i64 96}
!82 = !{!39, !40, i64 16}
!83 = !{!72, !35, i64 88}
!84 = !{!39, !35, i64 224}
!85 = !{!72, !41, i64 136}
!86 = !{!87, !44, i64 0}
!87 = !{!"_GeometryInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!88 = !{!39, !44, i64 264}
!89 = !{!87, !44, i64 8}
!90 = !{!72, !41, i64 40}
!91 = !{!72, !40, i64 72}
!92 = !{!72, !35, i64 184}
!93 = !{!39, !35, i64 13188}
!94 = !{!72, !35, i64 224}
!95 = !{!41, !41, i64 0}
!96 = !{!72, !41, i64 288}
!97 = !{!39, !40, i64 440}
!98 = !{!39, !35, i64 420}
!99 = !{!39, !44, i64 376}
!100 = !{!39, !35, i64 13116}
!101 = !{!39, !44, i64 160}
!102 = !{!39, !40, i64 64}
!103 = !{!39, !35, i64 408}
!104 = !{!39, !35, i64 400}
!105 = !{!39, !44, i64 392}
!106 = !{!39, !35, i64 412}
!107 = !{!39, !44, i64 136}
!108 = !{!39, !35, i64 13224}
!109 = !{!39, !35, i64 13112}
!110 = !{!39, !40, i64 456}
!111 = !{!39, !35, i64 24}
!112 = !{!39, !44, i64 112}
!113 = !{!39, !40, i64 432}
!114 = !{!39, !35, i64 28}
!115 = !{!39, !35, i64 13184}
!116 = !{!39, !44, i64 184}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!72, !35, i64 12}
!120 = !{!72, !35, i64 80}
!121 = !{!72, !35, i64 248}
!122 = !{!72, !35, i64 20}
!123 = !{!72, !35, i64 16784}
!124 = !{!72, !35, i64 16712}
!125 = !{!72, !40, i64 16752}
!126 = !{!39, !41, i64 13104}
!127 = !{!39, !41, i64 13088}
!128 = !{!39, !35, i64 32}
!129 = !{!39, !40, i64 40}
!130 = !{!39, !40, i64 48}
!131 = distinct !{!131, !118}
!132 = !{i32 0, i32 2}
!133 = distinct !{!133, !118}
!134 = !{!42, !43, i64 4}
!135 = !{!43, !43, i64 0}
!136 = !{!42, !43, i64 6}
!137 = distinct !{!137, !118}
!138 = distinct !{!138, !118}
!139 = !{!39, !40, i64 13208}
!140 = !{!39, !41, i64 72}
!141 = !{!39, !41, i64 600}
!142 = !{!39, !41, i64 13096}
!143 = !{!39, !41, i64 424}
!144 = !{!39, !41, i64 13128}
!145 = !{!39, !41, i64 232}
!146 = !{!39, !41, i64 240}
!147 = !{!39, !40, i64 296}
!148 = !{!39, !40, i64 13152}
!149 = !{!39, !40, i64 304}
!150 = !{!39, !40, i64 13160}
!151 = !{!39, !41, i64 248}
!152 = !{!39, !43, i64 86}
!153 = distinct !{!153, !118}
!154 = distinct !{!154, !118}
!155 = distinct !{!155, !118}
!156 = !{!"image.c:SetImageProgress"}
!157 = !{!39, !41, i64 568}
!158 = !{!39, !41, i64 576}
!159 = !{!51, !35, i64 0}
!160 = !{!39, !35, i64 12920}
!161 = distinct !{!161, !118}
!162 = !{!72, !41, i64 48}
!163 = !{!72, !41, i64 104}
!164 = !{!72, !41, i64 112}
!165 = !{!72, !41, i64 120}
!166 = !{!72, !41, i64 128}
!167 = !{!72, !41, i64 232}
!168 = !{!72, !41, i64 240}
!169 = !{!72, !41, i64 16776}
!170 = distinct !{!170, !118}
!171 = distinct !{!171, !118}
!172 = !{!72, !40, i64 192}
!173 = !{!72, !35, i64 4}
!174 = !{!72, !35, i64 208}
!175 = !{!72, !40, i64 216}
!176 = !{!72, !41, i64 312}
!177 = !{!72, !40, i64 320}
!178 = !{!72, !41, i64 296}
!179 = !{!72, !35, i64 16760}
!180 = !{!36, !36, i64 0}
!181 = distinct !{!181, !118}
!182 = distinct !{!182, !118}
!183 = distinct !{!183, !118}
!184 = distinct !{!184, !118}
!185 = distinct !{!185, !118}
!186 = !{!187, !35, i64 4}
!187 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !44, i64 16, !40, i64 24, !188, i64 32, !188, i64 36, !188, i64 40, !188, i64 44, !188, i64 48}
!188 = !{!"float", !36, i64 0}
!189 = !{!187, !35, i64 8}
!190 = !{!187, !44, i64 16}
!191 = !{!187, !40, i64 24}
!192 = distinct !{!192, !118}
!193 = distinct !{!193, !118}
!194 = !{!"image.c:SetPixelPacket"}
!195 = !{!187, !188, i64 32}
!196 = !{!187, !188, i64 36}
!197 = !{!42, !43, i64 2}
!198 = !{!187, !188, i64 40}
!199 = !{!42, !43, i64 0}
!200 = !{!187, !188, i64 44}
!201 = !{!187, !188, i64 48}
!202 = !{!47, !40, i64 0}
!203 = !{!39, !40, i64 280}
!204 = !{!39, !40, i64 288}
!205 = !{!47, !40, i64 16}
!206 = !{!47, !40, i64 24}
!207 = !{!"image.c:IsPixelGray"}
!208 = !{!"image.c:IsGrayColorspace"}
!209 = !{!"image.c:SetMagickPixelPacket"}
!210 = !{!188, !188, i64 0}
!211 = !{!"image.c:ConvertRGBToCMYK"}
!212 = distinct !{!212, !118}
!213 = distinct !{!213, !118}
!214 = !{!72, !40, i64 56}
!215 = !{!72, !40, i64 64}
!216 = distinct !{!216, !118}
!217 = distinct !{!217, !118}
!218 = distinct !{!218, !118}
!219 = !{!72, !40, i64 16728}
!220 = !{!72, !40, i64 16736}
!221 = !{!72, !35, i64 16}
!222 = distinct !{!222, !118}
!223 = !{!224, !35, i64 100}
!224 = !{!"_MagickInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !41, i64 112, !41, i64 120, !40, i64 128, !41, i64 136, !41, i64 144}
!225 = !{!72, !35, i64 8}
!226 = !{!72, !35, i64 84}
!227 = !{!"image.c:StringToUnsignedLong"}
!228 = distinct !{!228, !118}
!229 = distinct !{!229, !118}
!230 = distinct !{!230, !118}
!231 = distinct !{!231, !118}
!232 = !{!"image.c:SmushYGap"}
!233 = distinct !{!233, !118}
!234 = distinct !{!234, !118}
!235 = distinct !{!235, !118}
!236 = !{!"image.c:SmushXGap"}
!237 = distinct !{!237, !118}
!238 = distinct !{!238, !118}
!239 = distinct !{!239, !118}
!240 = !{!"image.c:PushColormapIndex"}
!241 = distinct !{!241, !118}
!242 = !{!"image.c:StringToDoubleInterval"}
!243 = !{!"image.c:ClampToQuantum"}
!244 = !{!"image.c:AbsolutePixelValue"}
