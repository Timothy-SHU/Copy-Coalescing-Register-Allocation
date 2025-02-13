; ModuleID = 'magick/image.c'
source_filename = "magick/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"Append/Image\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"8BIM:1999,2998:%s\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"NoClipPathDefined\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"8BIM:1999,2998:%s\0APS\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"filename:\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@SetImageInfo.format_type_formats = internal unnamed_addr constant [18 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr null], align 16
@.str.19 = private unnamed_addr constant [10 x i8] c"AUTOTRACE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"BROWSE\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"DCRAW\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"EPHEMERAL\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"LAUNCH\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MPEG:DECODE\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"MPEG:ENCODE\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"PS:ALPHA\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"PS:CMYK\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"PS:COLOR\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"PS:GRAY\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"PS:MONO\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"WIN\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Smush/Image\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"date:create\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"date:modify\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"png:exclude-chunk\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"EXIF,iCCP,iTXt,sRGB,tEXt,zCCP,zTXt,date\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"black-point-compensation\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"blue-primary\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"bordercolor\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"fuzz\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"green-primary\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"interlace\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"mattecolor\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"orient\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"red-primary\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"tile-offset\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"transparent-color\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"white-point\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2) #22
  %7 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %10 = tail call ptr @__errno_location() #24
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = call ptr @GetExceptionMessage(i32 noundef %11) #22
  %13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %12) #22
  %14 = call ptr @DestroyString(ptr noundef %12) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #25
  unreachable

16:                                               ; preds = %1
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 13240) #22
  %18 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 55
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, i64 noundef 4096) #22
  store i32 1, ptr %7, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 9
  store i64 16, ptr %20, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 1
  store i32 13, ptr %21, align 4, !tbaa !27
  %22 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 17
  store i32 2, ptr %22, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 15
  store <2 x double> <double 0x3FDD1745C0000000, double 0x3FE47AE140000000>, ptr %23, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 0, i32 1
  store <2 x double> <double 0x3FD51EB860000000, double 0x3F9EB851E0000000>, ptr %24, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1
  store <2 x double> <double 0x3FD3333340000000, double 0x3FE3333340000000>, ptr %25, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 1, i32 2
  store <2 x double> <double 0x3FB99999A0000000, double 0x3FC3333340000000>, ptr %26, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 2, i32 1
  store <2 x double> <double 0x3FAEB851E0000000, double 0x3FE947AE20000000>, ptr %27, align 8, !tbaa !29
  %28 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3
  store <2 x double> <double 0x3FD40346E0000000, double 0x3FD50E5600000000>, ptr %28, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 16, i32 3, i32 2
  store double 0x3FD6EE6320000000, ptr %29, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 33
  store i32 1, ptr %30, align 4, !tbaa !31
  %31 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 41
  store i64 100, ptr %31, align 8, !tbaa !32
  %32 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 36
  store i32 40, ptr %32, align 8, !tbaa !33
  %33 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 30
  store double 1.000000e+00, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %34) #22
  %35 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 12
  %36 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %35, ptr noundef nonnull %34) #22
  %37 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 13
  %38 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %37, ptr noundef nonnull %34) #22
  %39 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 14
  %40 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %39, ptr noundef nonnull %34) #22
  %41 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 72
  %42 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %41, ptr noundef nonnull %34) #22
  %43 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %43) #22
  %44 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 80
  store i32 0, ptr %44, align 8, !tbaa !35
  %45 = tail call ptr @AcquirePixelCache(i64 noundef 0) #22
  %46 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 49
  store ptr %45, ptr %46, align 8, !tbaa !36
  %47 = tail call ptr @CloneBlobInfo(ptr noundef null) #22
  %48 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 52
  store ptr %47, ptr %48, align 8, !tbaa !37
  %49 = tail call i64 @time(ptr noundef null) #22
  %50 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 82
  store i64 %49, ptr %50, align 8, !tbaa !38
  %51 = tail call i32 @IsEventLogging() #22
  %52 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 59
  store i32 %51, ptr %52, align 8, !tbaa !39
  %53 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 60
  store volatile i64 1, ptr %53, align 8, !tbaa !40
  %54 = tail call ptr @AllocateSemaphoreInfo() #22
  %55 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 61
  store ptr %54, ptr %55, align 8, !tbaa !41
  %56 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 66
  store i64 2880220587, ptr %56, align 8, !tbaa !42
  %57 = icmp eq ptr %0, null
  br i1 %57, label %214, label %58

58:                                               ; preds = %16
  %59 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  tail call void @SetBlobExempt(ptr noundef nonnull %7, i32 noundef %62) #22
  %63 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %64 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %65 = tail call i64 @CopyMagickString(ptr noundef nonnull %63, ptr noundef nonnull %64, i64 noundef 4096) #22
  %66 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 54
  %67 = tail call i64 @CopyMagickString(ptr noundef nonnull %66, ptr noundef nonnull %64, i64 noundef 4096) #22
  %68 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %69 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %68, i64 noundef 4096) #22
  %70 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  %75 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %71, ptr noundef nonnull %74) #22
  %76 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  %77 = load <2 x i64>, ptr %74, align 8, !tbaa !46
  store <2 x i64> %77, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 23
  store i64 %79, ptr %80, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  br label %81

81:                                               ; preds = %73, %58
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %86 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %83, ptr noundef nonnull %3) #22
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !50
  %91 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 7
  %92 = load <2 x i64>, ptr %90, align 8, !tbaa !46
  %93 = load <2 x i64>, ptr %91, align 8, !tbaa !46
  store <2 x i64> %93, ptr %90, align 8, !tbaa !46
  store <2 x i64> %92, ptr %91, align 8, !tbaa !46
  br label %94

94:                                               ; preds = %85, %89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, ptr %0, align 8, !tbaa !51
  %97 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 2
  store i32 %96, ptr %97, align 8, !tbaa !52
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %99 = load i64, ptr %98, align 8, !tbaa !53
  %100 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 3
  store i64 %99, ptr %100, align 8, !tbaa !54
  %101 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %102 = load <2 x i32>, ptr %101, align 8, !tbaa !6
  store <2 x i32> %102, ptr %30, align 4, !tbaa !6
  %103 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %104 = load i32, ptr %103, align 8, !tbaa !55
  %105 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 19
  store i32 %104, ptr %105, align 8, !tbaa !56
  %106 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %110 = call i32 @ParseGeometry(ptr noundef nonnull %107, ptr noundef nonnull %4) #22
  %111 = load double, ptr %4, align 8, !tbaa !58
  %112 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 24
  store double %111, ptr %112, align 8, !tbaa !60
  %113 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %114 = load double, ptr %113, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 25
  %116 = and i32 %110, 8
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, double %111, double %114
  store double %118, ptr %115, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %119

119:                                              ; preds = %109, %95
  %120 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !62
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 26
  %125 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %124, ptr noundef nonnull align 8 dereferenceable(32) %125, i64 32, i1 false), !tbaa.struct !50
  %126 = load ptr, ptr %120, align 8, !tbaa !62
  %127 = call ptr @GetPageGeometry(ptr noundef %126) #22
  %128 = call i32 @ParseAbsoluteGeometry(ptr noundef %127, ptr noundef nonnull %124) #22
  %129 = call ptr @DestroyString(ptr noundef %127) #22
  br label %130

130:                                              ; preds = %123, %119
  %131 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %132 = load i64, ptr %131, align 8, !tbaa !63
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i64 %132, ptr %20, align 8, !tbaa !26
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %137 = load i32, ptr %136, align 8, !tbaa !64
  %138 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 78
  store i32 %137, ptr %138, align 4, !tbaa !65
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
  %148 = load i32, ptr %147, align 8, !tbaa !66
  store i32 %148, ptr %44, align 8, !tbaa !35
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %150 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 47
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !67
  store <2 x ptr> %151, ptr %150, align 8, !tbaa !67
  %152 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %153 = load ptr, ptr %152, align 8, !tbaa !68
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %135
  %156 = load ptr, ptr %46, align 8, !tbaa !36
  call void @ClonePixelCacheMethods(ptr noundef %156, ptr noundef nonnull %153) #22
  br label %157

157:                                              ; preds = %155, %135
  %158 = call i32 @SyncImageSettings(ptr noundef nonnull %0, ptr noundef nonnull %7) #26
  %159 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %207, label %161

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %162 = call i32 @ParseGeometry(ptr noundef nonnull %159, ptr noundef nonnull %5) #22
  %163 = and i32 %162, 32768
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %167 = load i64, ptr %166, align 8, !tbaa !69
  %168 = load double, ptr %5, align 8, !tbaa !58
  %169 = fadd double %168, 5.000000e-01
  %170 = call double @llvm.floor.f64(double %169)
  %171 = fptoui double %170 to i64
  %172 = icmp ugt i64 %167, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %165
  store i64 %171, ptr %166, align 8, !tbaa !69
  br label %197

174:                                              ; preds = %161
  %175 = and i32 %162, 16384
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  %179 = load i64, ptr %178, align 8, !tbaa !69
  %180 = load double, ptr %5, align 8, !tbaa !58
  %181 = fadd double %180, 5.000000e-01
  %182 = call double @llvm.floor.f64(double %181)
  %183 = fptoui double %182 to i64
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %187 = load double, ptr %186, align 8, !tbaa !61
  %188 = fadd double %187, 5.000000e-01
  %189 = call double @llvm.floor.f64(double %188)
  %190 = fptosi double %189 to i64
  store i64 %190, ptr %31, align 8, !tbaa !32
  br label %197

191:                                              ; preds = %174
  %192 = load double, ptr %5, align 8, !tbaa !58
  %193 = fadd double %192, 5.000000e-01
  %194 = call double @llvm.floor.f64(double %193)
  %195 = fptoui double %194 to i64
  %196 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 40
  store i64 %195, ptr %196, align 8, !tbaa !69
  br label %197

197:                                              ; preds = %191, %185, %177, %165, %173
  %198 = and i32 %162, 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %202 = load double, ptr %201, align 8, !tbaa !61
  %203 = fadd double %202, 5.000000e-01
  %204 = call double @llvm.floor.f64(double %203)
  %205 = fptosi double %204 to i64
  store i64 %205, ptr %31, align 8, !tbaa !32
  br label %206

206:                                              ; preds = %200, %197
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %207

207:                                              ; preds = %206, %157
  %208 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #22
  %209 = icmp eq ptr %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %208) #22
  %212 = trunc i64 %211 to i32
  %213 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 37
  store i32 %212, ptr %213, align 4, !tbaa !70
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3549, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #22
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.45) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 12
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %18 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  br label %19

19:                                               ; preds = %15, %12
  %20 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.46) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc double @StringToDoubleInterval(ptr noundef nonnull %20) #26
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 29
  store double %23, ptr %24, align 8, !tbaa !71
  br label %25

25:                                               ; preds = %22, %19
  %26 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.47) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %26) #22
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 71
  store i32 %30, ptr %31, align 4, !tbaa !72
  br label %32

32:                                               ; preds = %28, %25
  %33 = tail call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.48) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %33, ptr noundef nonnull %4) #22
  %37 = load double, ptr %4, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2
  store double %37, ptr %38, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %40 = load double, ptr %39, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 2, i32 1
  %42 = and i32 %36, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, double %37, double %40
  store double %44, ptr %41, align 8
  br label %45

45:                                               ; preds = %35, %32
  %46 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.49) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 13
  %50 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %51 = call i32 @QueryColorDatabase(ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %50) #22
  br label %52

52:                                               ; preds = %48, %45
  %53 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %53) #26
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  store i64 %56, ptr %57, align 8, !tbaa !74
  br label %58

58:                                               ; preds = %55, %52
  %59 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.51) #22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %59) #22
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 36
  store i32 %63, ptr %64, align 8, !tbaa !33
  br label %65

65:                                               ; preds = %61, %58
  %66 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.52) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef nonnull %66) #22
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  store i32 %70, ptr %71, align 8, !tbaa !52
  br label %72

72:                                               ; preds = %68, %65
  %73 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.53) #22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %73) #22
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %6, align 8, !tbaa !39
  br label %78

78:                                               ; preds = %75, %72
  %79 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.54) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %82 = call i32 @ParseGeometry(ptr noundef nonnull %79, ptr noundef nonnull %5) #22
  %83 = load double, ptr %5, align 8, !tbaa !58
  %84 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  store double %83, ptr %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %86 = load double, ptr %85, align 8, !tbaa !61
  %87 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %88 = and i32 %82, 8
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, double %83, double %86
  store double %90, ptr %87, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %91

91:                                               ; preds = %81, %78
  %92 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.55) #22
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %92) #26
  %96 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  store i64 %95, ptr %96, align 8, !tbaa !26
  br label %97

97:                                               ; preds = %94, %91
  %98 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.56) #22
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 0, ptr noundef nonnull %98) #22
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  store i32 %102, ptr %103, align 8, !tbaa !75
  br label %104

104:                                              ; preds = %100, %97
  %105 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.57) #22
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %105) #22
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  store i32 %109, ptr %110, align 8, !tbaa !76
  br label %111

111:                                              ; preds = %107, %104
  %112 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.58) #22
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = call fastcc double @StringToDoubleInterval(ptr noundef nonnull %112) #26
  %116 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  store double %115, ptr %116, align 8, !tbaa !77
  br label %117

117:                                              ; preds = %114, %111
  %118 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.59) #22
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %118) #22
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  store i32 %122, ptr %123, align 4, !tbaa !78
  br label %124

124:                                              ; preds = %120, %117
  %125 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.60) #22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %124
  %128 = call i32 @ParseGeometry(ptr noundef nonnull %125, ptr noundef nonnull %4) #22
  %129 = load double, ptr %4, align 8, !tbaa !58
  %130 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1
  store double %129, ptr %130, align 8, !tbaa !79
  %131 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !61
  %133 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 1, i32 1
  %134 = and i32 %128, 8
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, double %129, double %132
  store double %136, ptr %133, align 8
  br label %137

137:                                              ; preds = %127, %124
  %138 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.61) #22
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef nonnull %138) #22
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 83
  store i32 %142, ptr %143, align 8, !tbaa !80
  br label %144

144:                                              ; preds = %140, %137
  %145 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.62) #22
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %145) #22
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 17
  store i32 %149, ptr %150, align 8, !tbaa !28
  br label %151

151:                                              ; preds = %147, %144
  %152 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.63) #22
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = call i64 @ParseCommandOption(i32 noundef 32, i32 noundef 0, ptr noundef nonnull %152) #22
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 33
  store i32 %156, ptr %157, align 4, !tbaa !31
  br label %158

158:                                              ; preds = %154, %151
  %159 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.64) #22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %159) #22
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 70
  store i32 %163, ptr %164, align 8, !tbaa !81
  br label %165

165:                                              ; preds = %161, %158
  %166 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.65) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %166) #26
  %170 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 42
  store i64 %169, ptr %170, align 8, !tbaa !82
  br label %171

171:                                              ; preds = %168, %165
  %172 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.66) #22
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 14
  %176 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %177 = call i32 @QueryColorDatabase(ptr noundef nonnull %172, ptr noundef nonnull %175, ptr noundef nonnull %176) #22
  br label %178

178:                                              ; preds = %174, %171
  %179 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.67) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = call i64 @ParseCommandOption(i32 noundef 50, i32 noundef 0, ptr noundef nonnull %179) #22
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  store i32 %183, ptr %184, align 8, !tbaa !83
  br label %185

185:                                              ; preds = %181, %178
  %186 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.44) #22
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = call ptr @GetPageGeometry(ptr noundef nonnull %186) #22
  %190 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %191 = call i32 @ParseAbsoluteGeometry(ptr noundef %189, ptr noundef nonnull %190) #22
  %192 = call ptr @DestroyString(ptr noundef %189) #22
  br label %193

193:                                              ; preds = %188, %185
  %194 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.68) #22
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %194) #26
  %198 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %197, ptr %198, align 8, !tbaa !54
  br label %199

199:                                              ; preds = %196, %193
  %200 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.69) #22
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = call i32 @ParseGeometry(ptr noundef nonnull %200, ptr noundef nonnull %4) #22
  %204 = load double, ptr %4, align 8, !tbaa !58
  %205 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16
  store double %204, ptr %205, align 8, !tbaa !84
  %206 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %207 = load double, ptr %206, align 8, !tbaa !61
  %208 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 0, i32 1
  %209 = and i32 %203, 8
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, double %204, double %207
  store double %211, ptr %208, align 8
  br label %212

212:                                              ; preds = %202, %199
  %213 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %214 = load i64, ptr %213, align 8, !tbaa !53
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  store i64 %214, ptr %217, align 8, !tbaa !54
  br label %218

218:                                              ; preds = %216, %212
  %219 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #22
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %219) #26
  %223 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  store i64 %222, ptr %223, align 8, !tbaa !85
  br label %224

224:                                              ; preds = %221, %218
  %225 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #22
  %226 = icmp eq ptr %225, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = call i64 @ParseCommandOption(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %225) #22
  %229 = trunc i64 %228 to i32
  %230 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 5
  store i32 %229, ptr %230, align 4, !tbaa !86
  br label %231

231:                                              ; preds = %227, %224
  %232 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #22
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %231
  %235 = call ptr @GetPageGeometry(ptr noundef nonnull %232) #22
  %236 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 74
  %237 = call i32 @ParseAbsoluteGeometry(ptr noundef %235, ptr noundef nonnull %236) #22
  %238 = call ptr @DestroyString(ptr noundef %235) #22
  br label %239

239:                                              ; preds = %234, %231
  %240 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #22
  %241 = icmp eq ptr %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 72
  %244 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %245 = call i32 @QueryColorDatabase(ptr noundef nonnull %240, ptr noundef nonnull %243, ptr noundef nonnull %244) #22
  br label %246

246:                                              ; preds = %242, %239
  %247 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.74) #22
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = call i64 @ParseCommandOption(i32 noundef 66, i32 noundef 0, ptr noundef nonnull %247) #22
  %251 = trunc i64 %250 to i32
  %252 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 77
  store i32 %251, ptr %252, align 8, !tbaa !87
  br label %253

253:                                              ; preds = %249, %246
  %254 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.75) #22
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef nonnull %254) #22
  %258 = trunc i64 %257 to i32
  br label %262

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %261 = load i32, ptr %260, align 8, !tbaa !55
  br label %262

262:                                              ; preds = %259, %256
  %263 = phi i32 [ %258, %256 ], [ %261, %259 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %286, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %267 = load i32, ptr %266, align 8, !tbaa !56
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
  %274 = load <2 x double>, ptr %273, align 8, !tbaa !29
  %275 = fdiv <2 x double> %274, <double 2.540000e+00, double 2.540000e+00>
  store <2 x double> %275, ptr %273, align 8, !tbaa !29
  br label %285

276:                                              ; preds = %269
  %277 = icmp eq i32 %263, 1
  br i1 %277, label %278, label %285

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %280 = load <2 x double>, ptr %279, align 8, !tbaa !29
  %281 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 2.540000e+02, double 2.540000e+02>, <2 x double> <double 5.000000e-01, double 5.000000e-01>)
  %282 = fptoui <2 x double> %281 to <2 x i64>
  %283 = uitofp <2 x i64> %282 to <2 x double>
  %284 = fdiv <2 x double> %283, <double 1.000000e+02, double 1.000000e+02>
  store <2 x double> %284, ptr %279, align 8, !tbaa !29
  br label %285

285:                                              ; preds = %272, %270, %278, %276, %269, %265
  store i32 %263, ptr %266, align 8, !tbaa !56
  br label %286

286:                                              ; preds = %285, %262
  %287 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.76) #22
  %288 = icmp eq ptr %287, null
  br i1 %288, label %299, label %289

289:                                              ; preds = %286
  %290 = call i32 @ParseGeometry(ptr noundef nonnull %287, ptr noundef nonnull %4) #22
  %291 = load double, ptr %4, align 8, !tbaa !58
  %292 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3
  store double %291, ptr %292, align 8, !tbaa !88
  %293 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %294 = load double, ptr %293, align 8, !tbaa !61
  %295 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16, i32 3, i32 1
  %296 = and i32 %290, 8
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, double %291, double %294
  store double %298, ptr %295, align 8
  br label %299

299:                                              ; preds = %289, %286
  call void @ResetImageOptionIterator(ptr noundef nonnull %0) #22
  %300 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #22
  %301 = icmp eq ptr %300, null
  br i1 %301, label %312, label %302

302:                                              ; preds = %299, %309
  %303 = phi ptr [ %310, %309 ], [ %300, %299 ]
  %304 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull %303) #22
  %305 = icmp eq ptr %304, null
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %303) #22
  %308 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %304) #22
  br label %309

309:                                              ; preds = %306, %302
  %310 = call ptr @GetNextImageOption(ptr noundef %0) #22
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %302, !llvm.loop !89

312:                                              ; preds = %309, %299
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
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
  %2 = tail call dereferenceable_or_null(16792) ptr @AcquireMagickMemory(i64 noundef 16792) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #10
  call void @GetExceptionInfo(ptr noundef nonnull %1) #22
  %5 = tail call ptr @__errno_location() #24
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #22
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 336, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7) #22
  %9 = call ptr @DestroyString(ptr noundef %7) #22
  call void @CatchException(ptr noundef nonnull %1) #22
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #25
  unreachable

11:                                               ; preds = %0
  tail call void @GetImageInfo(ptr noundef nonnull %2) #26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1280, ptr noundef nonnull @.str.2) #22
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 16792) #22
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !91
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  store i32 1, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  store i32 134217719, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  store i64 0, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !94
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  store i32 1, ptr %9, align 8, !tbaa !64
  %10 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @IsStringTrue(ptr noundef nonnull %10) #22
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 61
  store i32 %13, ptr %14, align 8, !tbaa !95
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %10) #22
  br label %16

16:                                               ; preds = %12, %1
  %17 = tail call ptr @AcquireExceptionInfo() #22
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %19 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BackgroundColor, ptr noundef nonnull %18, ptr noundef %17) #22
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %21 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @BorderColor, ptr noundef nonnull %20, ptr noundef %17) #22
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %23 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @MatteColor, ptr noundef nonnull %22, ptr noundef %17) #22
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 59
  %25 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @TransparentColor, ptr noundef nonnull %24, ptr noundef %17) #22
  %26 = tail call ptr @DestroyExceptionInfo(ptr noundef %17) #22
  %27 = tail call i32 @IsEventLogging() #22
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  store i32 %27, ptr %28, align 8, !tbaa !96
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 2880220587, ptr %29, align 8, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AcquireNextImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @AcquireImage(ptr noundef %0) #26
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69
  store ptr %10, ptr %11, align 8, !tbaa !98
  %12 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #22
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 53
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %18 = tail call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef 4096) #22
  %19 = icmp eq ptr %0, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #22
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %24 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef 4096) #22
  br label %25

25:                                               ; preds = %20, %14
  %26 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #22
  tail call void @DestroyBlob(ptr noundef %26) #22
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = tail call ptr @ReferenceBlob(ptr noundef %28) #22
  %30 = load ptr, ptr %11, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 52
  store ptr %29, ptr %31, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 34
  store i32 %33, ptr %34, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %36 = load i64, ptr %35, align 8, !tbaa !85
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 39
  store i64 %37, ptr %38, align 8, !tbaa !85
  %39 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  store ptr %1, ptr %39, align 8, !tbaa !99
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %4, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !39
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.8, ptr noundef nonnull %18) #22
  br label %20

20:                                               ; preds = %17, %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !102
  %27 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %20
  %30 = icmp eq i32 %1, 0
  br label %31

31:                                               ; preds = %29, %52
  %32 = phi i32 [ %22, %29 ], [ %40, %52 ]
  %33 = phi i64 [ %24, %29 ], [ %54, %52 ]
  %34 = phi i64 [ 1, %29 ], [ %41, %52 ]
  %35 = phi i64 [ %26, %29 ], [ %53, %52 ]
  %36 = phi ptr [ %27, %29 ], [ %55, %52 ]
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !100
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %32, i32 1
  %41 = add i64 %34, 1
  %42 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 8
  %45 = load i64, ptr %44, align 8, !tbaa !102
  br i1 %30, label %49, label %46

46:                                               ; preds = %31
  %47 = tail call i64 @llvm.umax.i64(i64 %43, i64 %33)
  %48 = add i64 %45, %35
  br label %52

49:                                               ; preds = %31
  %50 = add i64 %43, %33
  %51 = tail call i64 @llvm.umax.i64(i64 %45, i64 %35)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i64 [ %48, %46 ], [ %51, %49 ]
  %54 = phi i64 [ %47, %46 ], [ %50, %49 ]
  %55 = tail call ptr @GetNextImageInList(ptr noundef nonnull %36) #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %31, !llvm.loop !103

57:                                               ; preds = %52, %20
  %58 = phi i64 [ %26, %20 ], [ %53, %52 ]
  %59 = phi i64 [ 1, %20 ], [ %41, %52 ]
  %60 = phi i64 [ %24, %20 ], [ %54, %52 ]
  %61 = phi i32 [ %22, %20 ], [ %40, %52 ]
  %62 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %60, i64 noundef %58, i32 noundef 1, ptr noundef %2) #26
  store ptr %62, ptr %6, align 8, !tbaa !67
  %63 = icmp eq ptr %62, null
  br i1 %63, label %168, label %64

64:                                               ; preds = %57
  %65 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %62, i32 noundef 1) #26
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %68) #22
  %69 = tail call ptr @DestroyImage(ptr noundef nonnull %62) #26
  br label %168

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 6
  store i32 %61, ptr %71, align 8, !tbaa !100
  %72 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %62) #26, !range !104
  store i32 1, ptr %7, align 4, !tbaa !6
  store i64 0, ptr %9, align 8, !tbaa !46
  store i64 0, ptr %10, align 8, !tbaa !46
  %73 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %62, ptr noundef %2) #22
  store ptr %73, ptr %5, align 8, !tbaa !67
  %74 = icmp sgt i64 %59, 0
  br i1 %74, label %75, label %160

75:                                               ; preds = %70
  %76 = icmp eq i32 %1, 0
  %77 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %78 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  br label %79

79:                                               ; preds = %75, %156
  %80 = phi ptr [ %0, %75 ], [ %157, %156 ]
  %81 = phi i64 [ 0, %75 ], [ %158, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %82 = load ptr, ptr %4, align 8, !tbaa !67
  %83 = call ptr @CloneImage(ptr noundef %80, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %82) #26
  store ptr %83, ptr %12, align 8, !tbaa !67
  %84 = icmp eq ptr %83, null
  br i1 %84, label %155, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %6, align 8, !tbaa !67
  %87 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !27
  %89 = call i32 @TransformImageColorspace(ptr noundef nonnull %83, i32 noundef %88) #22
  store i32 %89, ptr %7, align 4, !tbaa !6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %155, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %6, align 8, !tbaa !67
  call void @SetGeometry(ptr noundef %92, ptr noundef nonnull %8) #22
  %93 = load ptr, ptr %12, align 8, !tbaa !67
  %94 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 7
  %95 = load i64, ptr %94, align 8, !tbaa !101
  %96 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 8
  %97 = load i64, ptr %96, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 35
  %99 = load i32, ptr %98, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %95, i64 noundef %97, i32 noundef %99, ptr noundef nonnull %8) #22
  br i1 %76, label %104, label %100

100:                                              ; preds = %91
  %101 = load i64, ptr %77, align 8, !tbaa !105
  %102 = load i64, ptr %9, align 8, !tbaa !46
  %103 = sub nsw i64 %102, %101
  store i64 %103, ptr %9, align 8, !tbaa !46
  br label %108

104:                                              ; preds = %91
  %105 = load i64, ptr %78, align 8, !tbaa !106
  %106 = load i64, ptr %10, align 8, !tbaa !46
  %107 = sub nsw i64 %106, %105
  store i64 %107, ptr %10, align 8, !tbaa !46
  br label %108

108:                                              ; preds = %104, %100
  %109 = load ptr, ptr %12, align 8, !tbaa !67
  %110 = load ptr, ptr %4, align 8, !tbaa !67
  %111 = call ptr @AcquireVirtualCacheView(ptr noundef %109, ptr noundef %110) #22
  store ptr %111, ptr %11, align 8, !tbaa !67
  %112 = load ptr, ptr %12, align 8, !tbaa !67
  %113 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !102
  %115 = call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %116 = shl i64 %115, 5
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load ptr, ptr %12, align 8, !tbaa !67
  %120 = call i32 @GetImagePixelCacheType(ptr noundef %119) #22
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %12, align 8, !tbaa !67
  %124 = call i32 @GetImagePixelCacheType(ptr noundef %123) #22
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  br label %132

128:                                              ; preds = %122, %118, %108
  %129 = call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %130 = icmp ult i64 %129, 2
  %131 = select i1 %130, i64 1, i64 2
  br label %132

132:                                              ; preds = %128, %126
  %133 = phi i64 [ %127, %126 ], [ %131, %128 ]
  %134 = trunc i64 %133 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %134)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @AppendImages.omp_outlined, ptr nonnull %12, ptr nonnull %7, ptr nonnull %11, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9, ptr nonnull %10, ptr nonnull %6)
  %135 = load ptr, ptr %11, align 8, !tbaa !67
  %136 = call ptr @DestroyCacheView(ptr noundef %135) #22
  store ptr %136, ptr %11, align 8, !tbaa !67
  %137 = load ptr, ptr %12, align 8, !tbaa !67
  br i1 %76, label %138, label %143

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 7
  %140 = load i64, ptr %139, align 8, !tbaa !101
  %141 = load i64, ptr %9, align 8, !tbaa !46
  %142 = add nsw i64 %141, %140
  br label %148

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 8
  %145 = load i64, ptr %144, align 8, !tbaa !102
  %146 = load i64, ptr %10, align 8, !tbaa !46
  %147 = add nsw i64 %146, %145
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i64 [ %142, %138 ], [ 0, %143 ]
  %150 = phi i64 [ 0, %138 ], [ %147, %143 ]
  store i64 %149, ptr %9, align 8
  store i64 %150, ptr %10, align 8, !tbaa !46
  %151 = call ptr @DestroyImage(ptr noundef nonnull %137) #26
  store ptr %151, ptr %12, align 8, !tbaa !67
  %152 = load ptr, ptr %6, align 8, !tbaa !67
  %153 = call fastcc i32 @SetImageProgress(ptr noundef %152, ptr noundef nonnull @.str.9, i64 noundef %81, i64 noundef %59) #26
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %79, %85, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br label %160

156:                                              ; preds = %148
  %157 = call ptr @GetNextImageInList(ptr noundef %80) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  %158 = add nuw nsw i64 %81, 1
  %159 = icmp eq i64 %158, %59
  br i1 %159, label %160, label %79, !llvm.loop !107

160:                                              ; preds = %156, %70, %155
  %161 = load ptr, ptr %5, align 8, !tbaa !67
  %162 = call ptr @DestroyCacheView(ptr noundef %161) #22
  store ptr %162, ptr %5, align 8, !tbaa !67
  %163 = load i32, ptr %7, align 4, !tbaa !6
  %164 = icmp eq i32 %163, 0
  %165 = load ptr, ptr %6, align 8, !tbaa !67
  br i1 %164, label %166, label %168

166:                                              ; preds = %160
  %167 = call ptr @DestroyImage(ptr noundef %165) #26
  br label %168

168:                                              ; preds = %160, %166, %57, %67
  %169 = phi ptr [ null, %67 ], [ null, %57 ], [ %167, %166 ], [ %165, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %169
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #22
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call dereferenceable_or_null(13240) ptr @AcquireMagickMemory(i64 noundef 13240) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 806, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #22
  br label %217

18:                                               ; preds = %12
  %19 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 13240) #22
  %20 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 66
  store i64 2880220587, ptr %20, align 8, !tbaa !42
  %21 = load i32, ptr %0, align 8, !tbaa !10
  store i32 %21, ptr %13, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %23 = load i64, ptr %22, align 8, !tbaa !108
  %24 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 81
  store i64 %23, ptr %24, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !27
  %27 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !27
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 6
  store i32 %29, ptr %30, align 8, !tbaa !100
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %35 = load <2 x i64>, ptr %31, align 8, !tbaa !46
  store <2 x i64> %35, ptr %32, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 78
  store i32 %37, ptr %38, align 4, !tbaa !65
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %44 = load i64, ptr %43, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 10
  store i64 %44, ptr %45, align 8, !tbaa !74
  %46 = tail call ptr @AcquireQuantumMemory(i64 noundef %44, i64 noundef 8) #27
  %47 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 11
  store ptr %46, ptr %47, align 8, !tbaa !109
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 826, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #22
  br label %217

52:                                               ; preds = %42
  %53 = load ptr, ptr %39, align 8, !tbaa !109
  %54 = shl i64 %44, 3
  %55 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %46, ptr noundef %53, i64 noundef %54) #22
  br label %56

56:                                               ; preds = %52, %18
  %57 = tail call i32 @CloneImageProfiles(ptr noundef nonnull %13, ptr noundef nonnull %0) #22
  %58 = tail call i32 @CloneImageProperties(ptr noundef nonnull %13, ptr noundef nonnull %0) #22
  %59 = tail call i32 @CloneImageArtifacts(ptr noundef nonnull %13, ptr noundef nonnull %0) #22
  %60 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 46
  tail call void @GetTimerInfo(ptr noundef nonnull %60) #22
  %61 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @GetExceptionInfo(ptr noundef nonnull %61) #22
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef nonnull %61, ptr noundef nonnull %62) #22
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %64 = load ptr, ptr %63, align 8, !tbaa !110
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void @Ascii85Initialize(ptr noundef nonnull %13) #22
  br label %67

67:                                               ; preds = %66, %56
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %69 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 56
  %70 = load <2 x i64>, ptr %68, align 8, !tbaa !46
  store <2 x i64> %70, ptr %69, align 8, !tbaa !46
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %72 = load i32, ptr %71, align 8, !tbaa !87
  %73 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 77
  store i32 %72, ptr %73, align 8, !tbaa !87
  %74 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 54
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %76 = tail call i64 @CopyMagickString(ptr noundef nonnull %74, ptr noundef nonnull %75, i64 noundef 4096) #22
  %77 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 55
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %79 = tail call i64 @CopyMagickString(ptr noundef nonnull %77, ptr noundef nonnull %78, i64 noundef 4096) #22
  %80 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 53
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %82 = tail call i64 @CopyMagickString(ptr noundef nonnull %80, ptr noundef nonnull %81, i64 noundef 4096) #22
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %84 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 47
  %85 = load <2 x ptr>, ptr %83, align 8, !tbaa !67
  store <2 x ptr> %85, ptr %84, align 8, !tbaa !67
  %86 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 60
  store volatile i64 1, ptr %86, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %88 = load ptr, ptr %87, align 8, !tbaa !98
  %89 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  store ptr %88, ptr %89, align 8, !tbaa !98
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %91 = load ptr, ptr %90, align 8, !tbaa !99
  %92 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %91, ptr %92, align 8, !tbaa !99
  %93 = tail call ptr @NewImageList() #22
  %94 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 68
  store ptr %93, ptr %94, align 8, !tbaa !111
  %95 = tail call ptr @NewImageList() #22
  %96 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 38
  store ptr %95, ptr %96, align 8, !tbaa !112
  %97 = tail call ptr @NewImageList() #22
  %98 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 73
  store ptr %97, ptr %98, align 8, !tbaa !113
  %99 = icmp eq i32 %3, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %67
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %102 = load ptr, ptr %101, align 8, !tbaa !37
  %103 = tail call ptr @ReferenceBlob(ptr noundef %102) #22
  br label %108

104:                                              ; preds = %67
  %105 = tail call ptr @NewImageList() #22
  store ptr %105, ptr %89, align 8, !tbaa !98
  %106 = tail call ptr @NewImageList() #22
  store ptr %106, ptr %92, align 8, !tbaa !99
  %107 = tail call ptr @CloneBlobInfo(ptr noundef null) #22
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi ptr [ %103, %100 ], [ %107, %104 ]
  %110 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 52
  store ptr %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %112 = load i32, ptr %111, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 80
  store i32 %112, ptr %113, align 8, !tbaa !35
  %114 = tail call i32 @IsEventLogging() #22
  %115 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 59
  store i32 %114, ptr %115, align 8, !tbaa !39
  %116 = tail call ptr @AllocateSemaphoreInfo() #22
  %117 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 61
  store ptr %116, ptr %117, align 8, !tbaa !41
  %118 = or i64 %2, %1
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %122 = load ptr, ptr %121, align 8, !tbaa !114
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 20
  %126 = tail call ptr @CloneString(ptr noundef nonnull %125, ptr noundef nonnull %122) #22
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 21
  %133 = tail call ptr @CloneString(ptr noundef nonnull %132, ptr noundef nonnull %129) #22
  br label %134

134:                                              ; preds = %131, %127
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %136 = load ptr, ptr %135, align 8, !tbaa !112
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call ptr @CloneImage(ptr noundef nonnull %136, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #26
  store ptr %139, ptr %96, align 8, !tbaa !112
  br label %140

140:                                              ; preds = %138, %134
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %142 = load ptr, ptr %141, align 8, !tbaa !113
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = tail call ptr @CloneImage(ptr noundef nonnull %142, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #26
  store ptr %145, ptr %98, align 8, !tbaa !113
  br label %146

146:                                              ; preds = %144, %140
  %147 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %148 = load ptr, ptr %147, align 8, !tbaa !36
  %149 = tail call ptr @ReferencePixelCache(ptr noundef %148) #22
  %150 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %149, ptr %150, align 8, !tbaa !36
  br label %217

151:                                              ; preds = %108
  %152 = load i64, ptr %31, align 8, !tbaa !101
  %153 = icmp eq i64 %152, %1
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load i64, ptr %33, align 8, !tbaa !102
  %156 = icmp eq i64 %155, %2
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %159 = load ptr, ptr %158, align 8, !tbaa !112
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = tail call ptr @CloneImage(ptr noundef nonnull %159, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #26
  store ptr %162, ptr %96, align 8, !tbaa !112
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %165 = load ptr, ptr %164, align 8, !tbaa !113
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = tail call ptr @CloneImage(ptr noundef nonnull %165, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #26
  store ptr %168, ptr %98, align 8, !tbaa !113
  br label %169

169:                                              ; preds = %163, %167, %154, %151
  %170 = insertelement <2 x i64> poison, i64 %1, i64 0
  %171 = insertelement <2 x i64> %170, i64 %2, i64 1
  %172 = uitofp <2 x i64> %171 to <2 x double>
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %174 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26
  %175 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !116
  %177 = sitofp i64 %176 to double
  %178 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 2
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 2
  %180 = load i64, ptr %179, align 8, !tbaa !117
  %181 = sitofp i64 %180 to double
  %182 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 2
  %183 = load <2 x i64>, ptr %31, align 8, !tbaa !46
  %184 = uitofp <2 x i64> %183 to <2 x double>
  %185 = fdiv <2 x double> %172, %184
  %186 = extractelement <2 x double> %185, i64 0
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %177, double -5.000000e-01)
  %188 = tail call double @llvm.ceil.f64(double %187)
  %189 = fptosi double %188 to i64
  store i64 %189, ptr %178, align 8, !tbaa !116
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %181, double -5.000000e-01)
  %191 = tail call double @llvm.ceil.f64(double %190)
  %192 = fptosi double %191 to i64
  store i64 %192, ptr %182, align 8, !tbaa !117
  %193 = load <2 x i64>, ptr %173, align 8, !tbaa !46
  %194 = uitofp <2 x i64> %193 to <2 x double>
  %195 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %185, <2 x double> %194, <2 x double> <double 5.000000e-01, double 5.000000e-01>)
  %196 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %195)
  %197 = fptoui <2 x double> %196 to <2 x i64>
  store <2 x i64> %197, ptr %174, align 8, !tbaa !46
  %198 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %199 = load i64, ptr %198, align 8, !tbaa !118
  %200 = sitofp i64 %199 to double
  %201 = extractelement <2 x double> %185, i64 1
  %202 = tail call double @llvm.fmuladd.f64(double %201, double %200, double -5.000000e-01)
  %203 = tail call double @llvm.ceil.f64(double %202)
  %204 = fptosi double %203 to i64
  %205 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 3
  store i64 %204, ptr %205, align 8, !tbaa !118
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 3
  %207 = load i64, ptr %206, align 8, !tbaa !119
  %208 = sitofp i64 %207 to double
  %209 = tail call double @llvm.fmuladd.f64(double %201, double %208, double -5.000000e-01)
  %210 = tail call double @llvm.ceil.f64(double %209)
  %211 = fptosi double %210 to i64
  %212 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 74, i32 3
  store i64 %211, ptr %212, align 8, !tbaa !119
  store i64 %1, ptr %32, align 8, !tbaa !101
  store i64 %2, ptr %34, align 8, !tbaa !102
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %214 = load ptr, ptr %213, align 8, !tbaa !36
  %215 = tail call ptr @ClonePixelCache(ptr noundef %214) #22
  %216 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 49
  store ptr %215, ptr %216, align 8, !tbaa !36
  br label %217

217:                                              ; preds = %169, %146, %49, %15
  %218 = phi ptr [ null, %15 ], [ null, %49 ], [ %13, %146 ], [ %13, %169 ]
  ret ptr %218
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageStorageClass(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %3) #22
  ret i32 %4
}

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1031, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  tail call void @LockSemaphoreInfo(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !40
  %13 = add nsw i64 %12, -1
  store volatile i64 %13, ptr %11, align 8, !tbaa !40
  %14 = load volatile i64, ptr %11, align 8, !tbaa !40
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !41
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #22
  br i1 %15, label %17, label %68

17:                                               ; preds = %8
  tail call void @DestroyImagePixels(ptr noundef nonnull %0) #22
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #26
  store ptr %22, ptr %18, align 8, !tbaa !112
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #26
  store ptr %28, ptr %24, align 8, !tbaa !113
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @DestroyString(ptr noundef nonnull %31) #22
  store ptr %34, ptr %30, align 8, !tbaa !114
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !115
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @DestroyString(ptr noundef nonnull %37) #22
  store ptr %40, ptr %36, align 8, !tbaa !115
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !109
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #22
  store ptr %46, ptr %42, align 8, !tbaa !109
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !120
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyString(ptr noundef nonnull %49) #22
  store ptr %52, ptr %48, align 8, !tbaa !120
  br label %53

53:                                               ; preds = %51, %47
  tail call void @DestroyImageProfiles(ptr noundef nonnull %0) #22
  tail call void @DestroyImageProperties(ptr noundef nonnull %0) #22
  tail call void @DestroyImageArtifacts(ptr noundef nonnull %0) #22
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %55) #22
  store ptr %58, ptr %54, align 8, !tbaa !110
  br label %59

59:                                               ; preds = %57, %53
  tail call void @DestroyBlob(ptr noundef nonnull %0) #22
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %60) #22
  %62 = load ptr, ptr %9, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %9) #22
  br label %65

65:                                               ; preds = %64, %59
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 66
  store i64 -2880220588, ptr %66, align 8, !tbaa !42
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #22
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2151, ptr noundef nonnull @.str.2) #22
  br label %10

10:                                               ; preds = %8, %1
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %15 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %14) #26, !range !104
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !27
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #26, !range !104
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 1) #22
  br label %24

24:                                               ; preds = %22, %17, %13
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !121
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !100
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #22
  br label %34

34:                                               ; preds = %32, %28, %24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #22
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %14, ptr noundef nonnull %3) #26
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !27
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %3) #26
  br label %39

39:                                               ; preds = %38, %34
  store i16 0, ptr %2, align 2, !tbaa !122
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #26
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %41 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %40) #22
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !102
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
  %53 = load i64, ptr %46, align 8, !tbaa !101
  %54 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %49, i64 noundef %53, i64 noundef 1, ptr noundef nonnull %40) #28
  %55 = icmp eq ptr %54, null
  br i1 %55, label %87, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %46, align 8, !tbaa !101
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %63, %59 ], [ 0, %56 ]
  %61 = phi ptr [ %62, %59 ], [ %54, %56 ]
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  store i64 %47, ptr %61, align 2
  %63 = add nuw nsw i64 %60, 1
  %64 = load i64, ptr %46, align 8, !tbaa !101
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %59, label %66, !llvm.loop !123

66:                                               ; preds = %59, %56
  %67 = load i32, ptr %35, align 4, !tbaa !27
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #22
  %71 = load i64, ptr %46, align 8, !tbaa !101
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
  %79 = load i16, ptr %2, align 2, !tbaa !122
  store i16 %79, ptr %78, align 2, !tbaa !122
  br label %80

80:                                               ; preds = %75, %77
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %71
  br i1 %82, label %83, label %75, !llvm.loop !124

83:                                               ; preds = %80, %69, %66
  %84 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %41, ptr noundef nonnull %40) #28
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  br label %87

87:                                               ; preds = %52, %48, %83
  %88 = phi i32 [ %86, %83 ], [ 0, %48 ], [ 0, %52 ]
  %89 = add nuw nsw i64 %49, 1
  %90 = load i64, ptr %42, align 8, !tbaa !102
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %48, label %92, !llvm.loop !125

92:                                               ; preds = %87, %39
  %93 = phi i32 [ 1, %39 ], [ %88, %87 ]
  %94 = call ptr @DestroyCacheView(ptr noundef %41) #22
  br label %95

95:                                               ; preds = %10, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
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

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AppendImages.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #9 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !102
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 0, ptr %11, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  store i64 %18, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  store i64 1, ptr %13, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !46
  %24 = load i64, ptr %11, align 8, !tbaa !46
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %122, label %26

26:                                               ; preds = %20, %114
  %27 = phi i64 [ %120, %114 ], [ %23, %20 ]
  %28 = phi i64 [ %118, %114 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %114, label %30

30:                                               ; preds = %26, %108
  %31 = phi i64 [ %109, %108 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %108, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !67
  %36 = load ptr, ptr %2, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !101
  %39 = load ptr, ptr %5, align 8, !tbaa !67
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #28
  %41 = load ptr, ptr %6, align 8, !tbaa !67
  %42 = load i64, ptr %7, align 8, !tbaa !46
  %43 = load i64, ptr %8, align 8, !tbaa !46
  %44 = add nsw i64 %43, %31
  %45 = load ptr, ptr %2, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !101
  %48 = load ptr, ptr %5, align 8, !tbaa !67
  %49 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef %42, i64 noundef %44, i64 noundef %47, i64 noundef 1, ptr noundef %48) #28
  %50 = icmp eq ptr %40, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %107, label %53

53:                                               ; preds = %34
  %54 = load ptr, ptr %4, align 8, !tbaa !67
  %55 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %54) #22
  %56 = load ptr, ptr %6, align 8, !tbaa !67
  %57 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %56) #22
  %58 = load ptr, ptr %2, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !101
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !100
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !27
  %68 = icmp eq i32 %67, 12
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 1
  %71 = icmp eq ptr %57, null
  %72 = icmp eq ptr %55, null
  br label %73

73:                                               ; preds = %62, %97
  %74 = phi i64 [ 0, %62 ], [ %100, %97 ]
  %75 = phi ptr [ %49, %62 ], [ %99, %97 ]
  %76 = phi ptr [ %40, %62 ], [ %98, %97 ]
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !126
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !126
  %80 = load <2 x i16>, ptr %76, align 2, !tbaa !122
  store <2 x i16> %80, ptr %75, align 2, !tbaa !122
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 3
  store i16 0, ptr %81, align 2, !tbaa !127
  br i1 %65, label %85, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !127
  store i16 %84, ptr %81, align 2, !tbaa !127
  br label %85

85:                                               ; preds = %82, %73
  br i1 %68, label %86, label %97

86:                                               ; preds = %85
  %87 = load i32, ptr %70, align 4, !tbaa !27
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = getelementptr inbounds i16, ptr %57, i64 %74
  br i1 %71, label %97, label %91

91:                                               ; preds = %89
  br i1 %72, label %95, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds i16, ptr %55, i64 %74
  %94 = load i16, ptr %93, align 2, !tbaa !122
  br label %95

95:                                               ; preds = %91, %92
  %96 = phi i16 [ %94, %92 ], [ 0, %91 ]
  store i16 %96, ptr %90, align 2, !tbaa !122
  br label %97

97:                                               ; preds = %89, %95, %86, %85
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %100 = add nuw nsw i64 %74, 1
  %101 = icmp eq i64 %100, %60
  br i1 %101, label %102, label %73, !llvm.loop !128

102:                                              ; preds = %97, %53
  %103 = load ptr, ptr %6, align 8, !tbaa !67
  %104 = load ptr, ptr %5, align 8, !tbaa !67
  %105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %104) #28
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %34
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %108

108:                                              ; preds = %107, %102, %30
  %109 = add nsw i64 %31, 1
  %110 = load i64, ptr %12, align 8, !tbaa !46
  %111 = icmp slt i64 %31, %110
  br i1 %111, label %30, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %11, align 8, !tbaa !46
  br label %114

114:                                              ; preds = %112, %26
  %115 = phi i64 [ %28, %26 ], [ %113, %112 ]
  %116 = phi i64 [ %27, %26 ], [ %110, %112 ]
  %117 = load i64, ptr %13, align 8, !tbaa !46
  %118 = add nsw i64 %117, %115
  store i64 %118, ptr %11, align 8, !tbaa !46
  %119 = add nsw i64 %117, %116
  %120 = call i64 @llvm.smin.i64(i64 %119, i64 %18)
  store i64 %120, ptr %12, align 8, !tbaa !46
  %121 = icmp sgt i64 %118, %120
  br i1 %121, label %122, label %26

122:                                              ; preds = %114, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br label %123

123:                                              ; preds = %122, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #10

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !129 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %10) #22
  %12 = load ptr, ptr %6, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #22
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CatchImageException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @AcquireExceptionInfo() #22
  tail call void @GetImageException(ptr noundef nonnull %0, ptr noundef %9) #26
  tail call void @CatchException(ptr noundef %9) #22
  %10 = load i32, ptr %9, align 8, !tbaa !133
  %11 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #22
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageException(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1234, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %2, %6
  br label %10

10:                                               ; preds = %9, %20
  %11 = phi ptr [ %21, %20 ], [ %0, %9 ]
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %13 = load i32, ptr %12, align 8, !tbaa !134
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %1, align 8, !tbaa !133
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @InheritException(ptr noundef nonnull %1, ptr noundef nonnull %12) #22
  br label %19

19:                                               ; preds = %18, %15
  store i32 0, ptr %12, align 8, !tbaa !134
  br label %20

20:                                               ; preds = %10, %19
  %21 = tail call ptr @GetNextImageInList(ptr noundef nonnull %11) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !135

23:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ClipImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClipImagePath(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 1) #26, !range !104
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 709, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #22
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @AcquireString(ptr noundef %1) #22
  %12 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %11, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %1) #22
  %13 = tail call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef %11) #22
  %14 = tail call ptr @DestroyString(ptr noundef %11) #22
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call ptr @__errno_location() #24
  %18 = load i32, ptr %17, align 4, !tbaa !6
  %19 = tail call ptr @GetExceptionMessage(i32 noundef %18) #22
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, i32 noundef 410, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %21, ptr noundef %19) #22
  %23 = tail call ptr @DestroyString(ptr noundef %19) #22
  br label %51

24:                                               ; preds = %10
  %25 = tail call ptr @AcquireImageInfo() #26
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %25, i64 0, i32 51
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 4096) #22
  %29 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %26, ptr noundef %1, i64 noundef 4096) #22
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #29
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = tail call ptr @BlobToImage(ptr noundef %25, ptr noundef nonnull %13, i64 noundef %30, ptr noundef nonnull %31) #22
  %33 = tail call ptr @DestroyImageInfo(ptr noundef %25) #26
  %34 = icmp eq ptr %32, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %32, align 8, !tbaa !10
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @SyncImage(ptr noundef nonnull %32) #26
  %40 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %32, i32 noundef 1) #26
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %35
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = tail call i32 @NegateImage(ptr noundef nonnull %32, i32 noundef 0) #22
  br label %46

46:                                               ; preds = %44, %42
  %47 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 54
  %48 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %47, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef %1) #22
  %49 = tail call i32 @SetImageClipMask(ptr noundef nonnull %0, ptr noundef nonnull %32) #26, !range !104
  %50 = tail call ptr @DestroyImage(ptr noundef nonnull %32) #26
  br label %51

51:                                               ; preds = %38, %24, %46, %16
  %52 = phi i32 [ 0, %16 ], [ 1, %46 ], [ 0, %24 ], [ 0, %38 ]
  ret i32 %52
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyImageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %3 = load i32, ptr %2, align 8, !tbaa !96
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #22
  store ptr %13, ptr %9, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyString(ptr noundef nonnull %16) #22
  store ptr %19, ptr %15, align 8, !tbaa !49
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !136
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @DestroyString(ptr noundef nonnull %22) #22
  store ptr %25, ptr %21, align 8, !tbaa !136
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyString(ptr noundef nonnull %28) #22
  store ptr %31, ptr %27, align 8, !tbaa !62
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @DestroyString(ptr noundef nonnull %34) #22
  store ptr %37, ptr %33, align 8, !tbaa !137
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @DestroyString(ptr noundef nonnull %40) #22
  store ptr %43, ptr %39, align 8, !tbaa !138
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @DestroyString(ptr noundef nonnull %46) #22
  store ptr %49, ptr %45, align 8, !tbaa !139
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !140
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @DestroyString(ptr noundef nonnull %52) #22
  store ptr %55, ptr %51, align 8, !tbaa !140
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @DestroyString(ptr noundef nonnull %58) #22
  store ptr %61, ptr %57, align 8, !tbaa !57
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %64 = load ptr, ptr %63, align 8, !tbaa !141
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @DestroyString(ptr noundef nonnull %64) #22
  store ptr %67, ptr %63, align 8, !tbaa !141
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %70 = load ptr, ptr %69, align 8, !tbaa !142
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @DestroyString(ptr noundef nonnull %70) #22
  store ptr %73, ptr %69, align 8, !tbaa !142
  br label %74

74:                                               ; preds = %72, %68
  tail call void @DestroyImageOptions(ptr noundef nonnull %0) #22
  %75 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %76) #22
  store ptr %79, ptr %75, align 8, !tbaa !68
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %82 = load ptr, ptr %81, align 8, !tbaa !143
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %82) #22
  store ptr %85, ptr %81, align 8, !tbaa !143
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  store i64 -2880220588, ptr %87, align 8, !tbaa !97
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #22
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %2, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3420, ptr noundef nonnull @.str.2) #22
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, ptr %0, align 8, !tbaa !10
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %54, label %16

16:                                               ; preds = %13
  store i32 0, ptr %5, align 4, !tbaa !6
  store i32 1, ptr %6, align 4, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %17, ptr %4, align 8, !tbaa !67
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %17) #22
  store ptr %18, ptr %3, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %22 = shl i64 %21, 5
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  br label %36

32:                                               ; preds = %27, %24, %16
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %34 = icmp ult i64 %33, 2
  %35 = select i1 %34, i64 1, i64 2
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i64 [ %31, %30 ], [ %35, %32 ]
  %38 = trunc i64 %37 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %7, i32 %38)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @SyncImage.omp_outlined, ptr nonnull %2, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %39 = load ptr, ptr %3, align 8, !tbaa !67
  %40 = call ptr @DestroyCacheView(ptr noundef %39) #22
  store ptr %40, ptr %3, align 8, !tbaa !67
  %41 = load ptr, ptr %2, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 80
  %43 = load i32, ptr %42, align 8, !tbaa !35
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 58
  %50 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 53
  %51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3470, i32 noundef 425, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #22
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32, ptr %6, align 4, !tbaa !6
  br label %54

54:                                               ; preds = %13, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %55
}

; Function Attrs: optsize
declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageClipMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2393, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !101
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %10, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2398, i32 noundef 465, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #22
  br label %42

26:                                               ; preds = %16, %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %28 = load ptr, ptr %27, align 8, !tbaa !112
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #26
  store ptr %31, ptr %27, align 8, !tbaa !112
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call ptr @NewImageList() #22
  store ptr %33, ptr %27, align 8, !tbaa !112
  br i1 %9, label %42, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %38) #26
  store ptr %39, ptr %27, align 8, !tbaa !112
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %34, %32, %22
  %43 = phi i32 [ 0, %22 ], [ 1, %32 ], [ 0, %34 ], [ %41, %37 ]
  ret i32 %43
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #13

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
  %2 = tail call ptr @AcquireImageInfo() #26
  %3 = icmp eq ptr %0, null
  br i1 %3, label %162, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !51
  store i32 %5, ptr %2, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 2
  %8 = load <2 x i32>, ptr %6, align 8, !tbaa !6
  store <2 x i32> %8, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !94
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 10
  %14 = load <2 x i64>, ptr %12, align 8, !tbaa !46
  store <2 x i64> %14, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 12
  %16 = load i64, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 12
  store i64 %16, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 6
  %19 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = tail call ptr @CloneString(ptr noundef nonnull %18, ptr noundef %20) #22
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 7
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = tail call ptr @CloneString(ptr noundef nonnull %22, ptr noundef %24) #22
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 9
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = tail call ptr @CloneString(ptr noundef nonnull %26, ptr noundef %28) #22
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 8
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = tail call ptr @CloneString(ptr noundef nonnull %30, ptr noundef %32) #22
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 13
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 13
  %36 = load <2 x i32>, ptr %34, align 8, !tbaa !6
  store <2 x i32> %36, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 15
  store i32 %38, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 16
  %41 = load i64, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 16
  store i64 %41, ptr %42, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 17
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !137
  %46 = tail call ptr @CloneString(ptr noundef nonnull %43, ptr noundef %45) #22
  %47 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 18
  %48 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !138
  %50 = tail call ptr @CloneString(ptr noundef nonnull %47, ptr noundef %49) #22
  %51 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 19
  %52 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = tail call ptr @CloneString(ptr noundef nonnull %51, ptr noundef %53) #22
  %55 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 20
  %56 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !140
  %58 = tail call ptr @CloneString(ptr noundef nonnull %55, ptr noundef %57) #22
  %59 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 21
  %60 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !57
  %62 = tail call ptr @CloneString(ptr noundef nonnull %59, ptr noundef %61) #22
  %63 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 22
  %64 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 22
  %65 = load <2 x double>, ptr %63, align 8, !tbaa !29
  store <2 x double> %65, ptr %64, align 8, !tbaa !29
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
  %83 = load <2 x i32>, ptr %81, align 8, !tbaa !6
  store <2 x i32> %83, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 29
  %85 = load i64, ptr %84, align 8, !tbaa !144
  %86 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 29
  store i64 %85, ptr %86, align 8, !tbaa !144
  %87 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 30
  %88 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 30
  %89 = load <2 x i32>, ptr %87, align 8, !tbaa !6
  store <2 x i32> %89, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !145
  %92 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 1
  store i32 %91, ptr %92, align 4, !tbaa !145
  %93 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 32
  %94 = load i32, ptr %93, align 8, !tbaa !146
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 32
  store i32 %94, ptr %95, align 8, !tbaa !146
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 33
  %97 = load i64, ptr %96, align 8, !tbaa !147
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 33
  store i64 %97, ptr %98, align 8, !tbaa !147
  %99 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 34
  %100 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 34
  %101 = load <2 x i32>, ptr %99, align 8, !tbaa !6
  store <2 x i32> %101, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 36
  %103 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 36
  %104 = load ptr, ptr %103, align 8, !tbaa !141
  %105 = tail call ptr @CloneString(ptr noundef nonnull %102, ptr noundef %104) #22
  %106 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 37
  %107 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 37
  %108 = load ptr, ptr %107, align 8, !tbaa !142
  %109 = tail call ptr @CloneString(ptr noundef nonnull %106, ptr noundef %108) #22
  %110 = tail call i32 @CloneImageOptions(ptr noundef nonnull %2, ptr noundef nonnull %0) #22
  %111 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %112 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 41
  %113 = load <2 x ptr>, ptr %111, align 8, !tbaa !67
  store <2 x ptr> %113, ptr %112, align 8, !tbaa !67
  %114 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 43
  %115 = load ptr, ptr %114, align 8, !tbaa !68
  %116 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 43
  store ptr %115, ptr %116, align 8, !tbaa !68
  %117 = icmp eq ptr %115, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %4
  %119 = tail call ptr @ReferencePixelCache(ptr noundef nonnull %115) #22
  store ptr %119, ptr %116, align 8, !tbaa !68
  br label %120

120:                                              ; preds = %118, %4
  %121 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 60
  %122 = load ptr, ptr %121, align 8, !tbaa !143
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = tail call ptr @CloneStringInfo(ptr noundef nonnull %122) #22
  %126 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 60
  store ptr %125, ptr %126, align 8, !tbaa !143
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  tail call void @SetImageInfoFile(ptr noundef nonnull %2, ptr noundef %129) #26
  %130 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  %131 = load ptr, ptr %130, align 8, !tbaa !148
  %132 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  %133 = load i64, ptr %132, align 8, !tbaa !149
  tail call void @SetImageInfoBlob(ptr noundef nonnull %2, ptr noundef %131, i64 noundef %133) #26
  %134 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %135 = load ptr, ptr %134, align 8, !tbaa !150
  %136 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 44
  store ptr %135, ptr %136, align 8, !tbaa !150
  %137 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 58
  %138 = load i32, ptr %137, align 8, !tbaa !151
  %139 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 58
  store i32 %138, ptr %139, align 8, !tbaa !151
  %140 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 48
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %142 = tail call i64 @CopyMagickString(ptr noundef nonnull %140, ptr noundef nonnull %141, i64 noundef 4096) #22
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 49
  %144 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  %145 = tail call i64 @CopyMagickString(ptr noundef nonnull %143, ptr noundef nonnull %144, i64 noundef 4096) #22
  %146 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 50
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  %148 = tail call i64 @CopyMagickString(ptr noundef nonnull %146, ptr noundef nonnull %147, i64 noundef 4096) #22
  %149 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 51
  %150 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %151 = tail call i64 @CopyMagickString(ptr noundef nonnull %149, ptr noundef nonnull %150, i64 noundef 4096) #22
  %152 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 54
  %153 = load <2 x i64>, ptr %12, align 8, !tbaa !46
  store <2 x i64> %153, ptr %152, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %155 = load i32, ptr %154, align 8, !tbaa !93
  %156 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 38
  store i32 %155, ptr %156, align 8, !tbaa !93
  %157 = tail call i32 @IsEventLogging() #22
  %158 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 52
  store i32 %157, ptr %158, align 8, !tbaa !96
  %159 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 57
  %160 = load i64, ptr %159, align 8, !tbaa !97
  %161 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 57
  store i64 %160, ptr %161, align 8, !tbaa !97
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
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2855, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetImageInfoBlob(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2820, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #22
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  store ptr %1, ptr %11, align 8, !tbaa !148
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  store i64 %2, ptr %12, align 8, !tbaa !149
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
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = tail call ptr @DetachBlob(ptr noundef %10) #22
  ret void
}

; Function Attrs: optsize
declare ptr @DetachBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageClipMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #26
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
define dso_local ptr @GetImageInfoFile(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageMask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1360, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #26
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageChannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1395, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %10 = load i64, ptr %9, align 8, !tbaa !108
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageReferenceCount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1429, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  tail call void @LockSemaphoreInfo(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %12 = load volatile i64, ptr %11, align 8, !tbaa !40
  %13 = load ptr, ptr %9, align 8, !tbaa !41
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #22
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageVirtualPixelMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1465, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef nonnull %0) #22
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @GetPixelCacheVirtualMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @InterpretImageFilename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %8 = tail call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #22
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #29
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
  store ptr %23, ptr %6, align 8, !tbaa !67
  %24 = load i8, ptr %23, align 1, !tbaa !152
  switch i8 %24, label %31 [
    i8 37, label %25
    i8 48, label %27
  ]

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %21, i64 2
  br label %113

27:                                               ; preds = %19
  %28 = call i64 @strtol(ptr noundef nonnull %23, ptr noundef nonnull %6, i32 noundef 10) #22
  %29 = load ptr, ptr %6, align 8, !tbaa !67
  %30 = load i8, ptr %29, align 1, !tbaa !152
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
  store ptr %35, ptr %6, align 8, !tbaa !67
  %36 = load i8, ptr %35, align 1, !tbaa !152
  store i8 0, ptr %35, align 1, !tbaa !152
  %37 = ptrtoint ptr %21 to i64
  %38 = sub i64 %37, %14
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = sub nsw i64 4096, %38
  %41 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %39, i64 noundef %40, ptr noundef nonnull %21, i32 noundef %3) #22
  store i8 %36, ptr %35, align 1, !tbaa !152
  %42 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %35, i64 noundef 4096) #22
  %43 = load i8, ptr %33, align 1, !tbaa !152
  %44 = icmp eq i8 %43, 37
  %45 = select i1 %44, ptr %23, ptr %21
  br label %113

46:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #10
  %47 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 93) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %109, label %49

49:                                               ; preds = %46, %63
  %50 = phi i64 [ %61, %63 ], [ 1, %46 ]
  %51 = phi i64 [ %65, %63 ], [ 0, %46 ]
  %52 = phi ptr [ %53, %63 ], [ %33, %46 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !152
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
  store i8 %54, ptr %64, align 1, !tbaa !152
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, 4095
  br i1 %66, label %67, label %49, !llvm.loop !153

67:                                               ; preds = %49, %63, %57
  %68 = phi ptr [ %52, %49 ], [ %53, %63 ], [ %52, %57 ]
  %69 = phi i64 [ %51, %49 ], [ 4095, %63 ], [ %51, %57 ]
  %70 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !152
  %71 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.17, i64 noundef 9) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  br i1 %12, label %79, label %74

74:                                               ; preds = %73
  %75 = call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull %7) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %7) #22
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi ptr [ %78, %77 ], [ null, %73 ]
  %81 = icmp eq ptr %80, null
  %82 = and i1 %13, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %7) #22
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi ptr [ %84, %83 ], [ %80, %79 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88

88:                                               ; preds = %74, %85
  %89 = phi ptr [ %86, %85 ], [ %75, %74 ]
  %90 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %90, ptr %6, align 8, !tbaa !67
  %91 = load i8, ptr %90, align 1, !tbaa !152
  store i8 0, ptr %90, align 1, !tbaa !152
  %92 = ptrtoint ptr %21 to i64
  %93 = add i64 %20, %14
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds i8, ptr %4, i64 %94
  %96 = sub i64 4096, %94
  %97 = call i64 @CopyMagickString(ptr noundef %95, ptr noundef nonnull %89, i64 noundef %96) #22
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %99 = add i64 %20, -1
  %100 = add i64 %99, %98
  %101 = load ptr, ptr %6, align 8, !tbaa !67
  store i8 %91, ptr %101, align 1, !tbaa !152
  %102 = getelementptr inbounds i8, ptr %68, i64 2
  %103 = call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull %102, i64 noundef 4096) #22
  %104 = load ptr, ptr %6, align 8, !tbaa !67
  %105 = getelementptr inbounds i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !152
  %107 = icmp eq i8 %106, 37
  %108 = select i1 %107, ptr %23, ptr %21
  br label %109

109:                                              ; preds = %88, %85, %67, %46
  %110 = phi i32 [ %22, %46 ], [ %22, %67 ], [ %22, %85 ], [ 1, %88 ]
  %111 = phi ptr [ %21, %46 ], [ %21, %67 ], [ %21, %85 ], [ %108, %88 ]
  %112 = phi i64 [ %20, %46 ], [ %20, %67 ], [ %20, %85 ], [ %100, %88 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #10
  br label %113

113:                                              ; preds = %34, %109, %31, %25
  %114 = phi i32 [ %22, %25 ], [ %22, %31 ], [ %110, %109 ], [ 1, %34 ]
  %115 = phi ptr [ %26, %25 ], [ %21, %31 ], [ %111, %109 ], [ %45, %34 ]
  %116 = phi i64 [ %20, %25 ], [ %20, %31 ], [ %112, %109 ], [ %20, %34 ]
  %117 = getelementptr inbounds i8, ptr %115, i64 1
  %118 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %117, i32 noundef 37) #29
  %119 = icmp eq ptr %118, null
  br i1 %119, label %15, label %19, !llvm.loop !154

120:                                              ; preds = %15, %133
  %121 = phi ptr [ %136, %133 ], [ %4, %15 ]
  %122 = phi i32 [ %135, %133 ], [ %16, %15 ]
  store ptr %121, ptr %6, align 8, !tbaa !67
  %123 = load i8, ptr %121, align 1, !tbaa !152
  switch i8 %123, label %133 [
    i8 0, label %137
    i8 37, label %124
  ]

124:                                              ; preds = %120
  %125 = getelementptr inbounds i8, ptr %121, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !152
  %127 = icmp eq i8 %126, 37
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = ptrtoint ptr %121 to i64
  %130 = sub i64 %18, %129
  %131 = call i64 @CopyMagickString(ptr noundef nonnull %121, ptr noundef nonnull %125, i64 noundef %130) #22
  %132 = load ptr, ptr %6, align 8, !tbaa !67
  br label %133

133:                                              ; preds = %120, %124, %128
  %134 = phi ptr [ %132, %128 ], [ %121, %124 ], [ %121, %120 ]
  %135 = phi i32 [ 1, %128 ], [ %122, %124 ], [ %122, %120 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 1
  br label %120, !llvm.loop !155

137:                                              ; preds = %120
  %138 = icmp eq i32 %122, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  %140 = call i64 @CopyMagickString(ptr noundef %4, ptr noundef %2, i64 noundef 4096) #22
  br label %141

141:                                              ; preds = %139, %137
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i64 %142
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @IsHighDynamicRangeImage(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #16 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsImageObject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %1, %5
  br label %8

8:                                                ; preds = %7, %13
  %9 = phi ptr [ %14, %13 ], [ %0, %7 ]
  %10 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 66
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i64 %11, 2880220587
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call ptr @GetNextImageInList(ptr noundef nonnull %9) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !156

16:                                               ; preds = %8, %13
  %17 = phi i32 [ 0, %8 ], [ 1, %13 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsTaintImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, ptr noundef nonnull @.str.2) #22
  br label %9

9:                                                ; preds = %1, %7
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %11 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #22
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 4096) #22
  br label %14

14:                                               ; preds = %9, %27
  %15 = phi ptr [ %28, %27 ], [ %0, %9 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !86
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 55
  %21 = call i32 @LocaleCompare(ptr noundef nonnull %20, ptr noundef nonnull %2) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 53
  %25 = call i32 @LocaleCompare(ptr noundef nonnull %24, ptr noundef nonnull %3) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call ptr @GetNextImageInList(ptr noundef nonnull %15) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !157

30:                                               ; preds = %14, %19, %23, %27
  %31 = phi i32 [ 1, %14 ], [ 1, %19 ], [ 1, %23 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #10
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ModifyImage(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1884, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #22
  %10 = load ptr, ptr %0, align 8, !tbaa !67
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %10, %7 ], [ %3, %2 ]
  %13 = tail call i64 @GetImageReferenceCount(ptr noundef %12) #26
  %14 = icmp slt i64 %13, 2
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !67
  %17 = tail call ptr @CloneImage(ptr noundef %16, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #26
  %18 = load ptr, ptr %0, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 61
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  tail call void @LockSemaphoreInfo(ptr noundef %20) #22
  %21 = load ptr, ptr %0, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 60
  %23 = load volatile i64, ptr %22, align 8, !tbaa !40
  %24 = add nsw i64 %23, -1
  store volatile i64 %24, ptr %22, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #22
  store ptr %17, ptr %0, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %11, %15
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @NewMagickImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %3, ptr %5, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, ptr noundef nonnull @.str.2) #22
  br label %16

16:                                               ; preds = %14, %4
  %17 = tail call ptr @AcquireImage(ptr noundef nonnull %0) #26
  store ptr %17, ptr %8, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  store i64 %1, ptr %18, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  store i64 %2, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !158
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !27
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !161
  %25 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !100
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 3
  %27 = load double, ptr %26, align 8, !tbaa !162
  %28 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 31
  store double %27, ptr %28, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !163
  %31 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 9
  store i64 %30, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %9, align 4, !tbaa !6
  %32 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 58
  store ptr %32, ptr %7, align 8, !tbaa !67
  %33 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %17, ptr noundef nonnull %32) #22
  store ptr %33, ptr %6, align 8, !tbaa !67
  %34 = load i64, ptr %19, align 8, !tbaa !102
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %36 = shl i64 %35, 5
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %16
  %39 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %17) #22
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %17) #22
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  br label %50

46:                                               ; preds = %41, %38, %16
  %47 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %48 = icmp ult i64 %47, 2
  %49 = select i1 %48, i64 1, i64 2
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i64 [ %45, %44 ], [ %49, %46 ]
  %52 = trunc i64 %51 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %52)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @NewMagickImage.omp_outlined, ptr nonnull %8, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %5)
  %53 = load ptr, ptr %6, align 8, !tbaa !67
  %54 = call ptr @DestroyCacheView(ptr noundef %53) #22
  store ptr %54, ptr %6, align 8, !tbaa !67
  %55 = load i32, ptr %9, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %8, align 8, !tbaa !67
  br i1 %56, label %58, label %60

58:                                               ; preds = %50
  %59 = call ptr @DestroyImage(ptr noundef %57) #26
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ %59, %58 ], [ %57, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret ptr %61
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @NewMagickImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #9 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 %15, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  store i64 1, ptr %10, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !46
  %21 = load i64, ptr %8, align 8, !tbaa !46
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %78, label %23

23:                                               ; preds = %17, %70
  %24 = phi i64 [ %76, %70 ], [ %20, %17 ]
  %25 = phi i64 [ %74, %70 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %70, label %27

27:                                               ; preds = %23, %64
  %28 = phi i64 [ %65, %64 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = load ptr, ptr %2, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !101
  %36 = load ptr, ptr %5, align 8, !tbaa !67
  %37 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #28
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !67
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #22
  %42 = load ptr, ptr %2, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !101
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39, %46
  %47 = phi ptr [ %54, %46 ], [ %42, %39 ]
  %48 = phi i64 [ %53, %46 ], [ 0, %39 ]
  %49 = phi ptr [ %52, %46 ], [ %37, %39 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !67
  %51 = getelementptr inbounds i16, ptr %41, i64 %48
  call fastcc void @SetPixelPacket(ptr noundef nonnull %47, ptr noundef %50, ptr noundef nonnull %49, ptr noundef %51) #26
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %53 = add nuw nsw i64 %48, 1
  %54 = load ptr, ptr %2, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !101
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %46, label %58, !llvm.loop !164

58:                                               ; preds = %46, %39
  %59 = load ptr, ptr %4, align 8, !tbaa !67
  %60 = load ptr, ptr %5, align 8, !tbaa !67
  %61 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %59, ptr noundef %60) #28
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %64

64:                                               ; preds = %63, %58, %27
  %65 = add nsw i64 %28, 1
  %66 = load i64, ptr %9, align 8, !tbaa !46
  %67 = icmp slt i64 %28, %66
  br i1 %67, label %27, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %8, align 8, !tbaa !46
  br label %70

70:                                               ; preds = %68, %23
  %71 = phi i64 [ %25, %23 ], [ %69, %68 ]
  %72 = phi i64 [ %24, %23 ], [ %66, %68 ]
  %73 = load i64, ptr %10, align 8, !tbaa !46
  %74 = add nsw i64 %73, %71
  store i64 %74, ptr %8, align 8, !tbaa !46
  %75 = add nsw i64 %73, %72
  %76 = call i64 @llvm.smin.i64(i64 %75, i64 %15)
  store i64 %76, ptr %9, align 8, !tbaa !46
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %23

78:                                               ; preds = %70, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %79

79:                                               ; preds = %78, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !165
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #26
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !126
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !166
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #26
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !167
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !168
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #26
  store i16 %15, ptr %2, align 2, !tbaa !169
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !170
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #26
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !127
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !10
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !171
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #26
  store i16 %33, ptr %3, align 2, !tbaa !122
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #16 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ReferenceImage(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2025, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @LockSemaphoreInfo(ptr noundef %9) #22
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 60
  %11 = load volatile i64, ptr %10, align 8, !tbaa !40
  %12 = add nsw i64 %11, 1
  store volatile i64 %12, ptr %10, align 8, !tbaa !40
  %13 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #22
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ResetImagePage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2068, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #22
  br label %10

10:                                               ; preds = %7, %2
  %11 = call i32 @ParseAbsoluteGeometry(ptr noundef %1, ptr noundef nonnull %3) #22
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = and i32 %11, 8
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %3, align 8, !tbaa !172
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = select i1 %16, i64 %17, i64 %19
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  store i64 %17, ptr %21, align 8, !tbaa !173
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  store i64 %20, ptr %22, align 8, !tbaa !174
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
  %31 = load i64, ptr %30, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !116
  %34 = add nsw i64 %33, %31
  store i64 %34, ptr %32, align 8, !tbaa !116
  br label %35

35:                                               ; preds = %29, %28
  %36 = and i32 %11, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !106
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  br label %70

42:                                               ; preds = %23
  br i1 %27, label %56, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  store i64 %45, ptr %47, align 8, !tbaa !116
  %48 = load i64, ptr %46, align 8, !tbaa !173
  %49 = icmp eq i64 %48, 0
  %50 = icmp sgt i64 %45, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !101
  %55 = add i64 %54, %45
  store i64 %55, ptr %46, align 8, !tbaa !173
  br label %56

56:                                               ; preds = %43, %52, %42
  %57 = and i32 %11, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  store i64 %61, ptr %62, align 8, !tbaa !118
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !174
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
  %74 = load i64, ptr %71, align 8, !tbaa !46
  %75 = add i64 %74, %72
  store i64 %75, ptr %73, align 8, !tbaa !46
  br label %76

76:                                               ; preds = %70, %56, %59, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !122
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #26
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !169
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #26
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
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #16 {
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
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !122
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !175
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !158
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !165
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !166
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !168
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #28
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !166
  %24 = tail call float @DecodePixelGamma(float noundef %23) #28
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !168
  %27 = tail call float @DecodePixelGamma(float noundef %26) #28
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
  store i32 12, ptr %2, align 4, !tbaa !158
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !175
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !168
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #16 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SetImageChannels(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #18 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  store i64 %1, ptr %3, align 8, !tbaa !108
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !67
  store ptr %1, ptr %4, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !39
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2) #22
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !158
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !27
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !161
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !162
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  store double %22, ptr %23, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !163
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %25, ptr %26, align 8, !tbaa !26
  store i32 1, ptr %7, align 4, !tbaa !6
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %27, ptr %6, align 8, !tbaa !67
  %28 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %27) #22
  store ptr %28, ptr %5, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !102
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %32 = shl i64 %31, 5
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %14
  %35 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  br label %46

42:                                               ; preds = %37, %34, %14
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %44 = icmp ult i64 %43, 2
  %45 = select i1 %44, i64 1, i64 2
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %48 = trunc i64 %47 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %48)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @SetImageColor.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4)
  %49 = load ptr, ptr %5, align 8, !tbaa !67
  %50 = call ptr @DestroyCacheView(ptr noundef %49) #22
  %51 = load i32, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %51
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageColor.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #9 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 %15, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  store i64 1, ptr %10, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !46
  %21 = load i64, ptr %8, align 8, !tbaa !46
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %78, label %23

23:                                               ; preds = %17, %70
  %24 = phi i64 [ %76, %70 ], [ %20, %17 ]
  %25 = phi i64 [ %74, %70 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %70, label %27

27:                                               ; preds = %23, %64
  %28 = phi i64 [ %65, %64 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = load ptr, ptr %2, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !101
  %36 = load ptr, ptr %5, align 8, !tbaa !67
  %37 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #28
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !67
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #22
  %42 = load ptr, ptr %2, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !101
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39, %46
  %47 = phi ptr [ %54, %46 ], [ %42, %39 ]
  %48 = phi i64 [ %53, %46 ], [ 0, %39 ]
  %49 = phi ptr [ %52, %46 ], [ %37, %39 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !67
  %51 = getelementptr inbounds i16, ptr %41, i64 %48
  call fastcc void @SetPixelPacket(ptr noundef nonnull %47, ptr noundef %50, ptr noundef nonnull %49, ptr noundef %51) #26
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %53 = add nuw nsw i64 %48, 1
  %54 = load ptr, ptr %2, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !101
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %46, label %58, !llvm.loop !176

58:                                               ; preds = %46, %39
  %59 = load ptr, ptr %4, align 8, !tbaa !67
  %60 = load ptr, ptr %5, align 8, !tbaa !67
  %61 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %59, ptr noundef %60) #28
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %64

64:                                               ; preds = %63, %58, %27
  %65 = add nsw i64 %28, 1
  %66 = load i64, ptr %9, align 8, !tbaa !46
  %67 = icmp slt i64 %28, %66
  br i1 %67, label %27, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %8, align 8, !tbaa !46
  br label %70

70:                                               ; preds = %68, %23
  %71 = phi i64 [ %25, %23 ], [ %69, %68 ]
  %72 = phi i64 [ %24, %23 ], [ %66, %68 ]
  %73 = load i64, ptr %10, align 8, !tbaa !46
  %74 = add nsw i64 %73, %71
  store i64 %74, ptr %8, align 8, !tbaa !46
  %75 = add nsw i64 %73, %72
  %76 = call i64 @llvm.smin.i64(i64 %75, i64 %15)
  store i64 %76, ptr %9, align 8, !tbaa !46
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %23

78:                                               ; preds = %70, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %79

79:                                               ; preds = %78, %7
  ret void
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
  store i64 %1, ptr %8, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  store i64 %2, ptr %9, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef nonnull %10) #22
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #10
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #22
  br label %16

16:                                               ; preds = %13, %3
  store i8 0, ptr %8, align 16, !tbaa !152
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 7, ptr noundef nonnull %8) #22
  %18 = load i8, ptr %8, align 16, !tbaa !152
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %97, label %20

20:                                               ; preds = %16
  %21 = call i32 @IsSceneGeometry(ptr noundef nonnull %8, i32 noundef 0) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i32 @IsGeometry(ptr noundef nonnull %8) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %97, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 7
  %28 = call ptr @CloneString(ptr noundef nonnull %27, ptr noundef nonnull %8) #22
  br label %97

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 9
  %31 = call ptr @CloneString(ptr noundef nonnull %30, ptr noundef nonnull %8) #22
  %32 = load ptr, ptr %30, align 8, !tbaa !136
  %33 = call fastcc i64 @StringToUnsignedLong(ptr noundef %32) #26
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  store i64 %33, ptr %34, align 8, !tbaa !177
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  store i64 %33, ptr %35, align 8, !tbaa !178
  %36 = load ptr, ptr %30, align 8, !tbaa !136
  store ptr %36, ptr %7, align 8, !tbaa !67
  %37 = load i8, ptr %36, align 1, !tbaa !152
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @__ctype_b_loc() #24
  br label %41

41:                                               ; preds = %39, %84
  %42 = phi ptr [ %36, %39 ], [ %87, %84 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !67
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %54, %44 ], [ %42, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !152
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %43, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !122
  %50 = and i16 %49, 8192
  %51 = icmp ne i16 %50, 0
  %52 = icmp eq i8 %46, 44
  %53 = or i1 %52, %51
  %54 = getelementptr inbounds i8, ptr %45, i64 1
  br i1 %53, label %44, label %55, !llvm.loop !179

55:                                               ; preds = %44
  %56 = call i64 @strtol(ptr noundef nonnull %45, ptr noundef nonnull %7, i32 noundef 10) #22
  %57 = load ptr, ptr %40, align 8, !tbaa !67
  %58 = load ptr, ptr %7, align 8, !tbaa !67
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %67, %59 ], [ %58, %55 ]
  %61 = load i8, ptr %60, align 1, !tbaa !152
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %57, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !122
  %65 = and i16 %64, 8192
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds i8, ptr %60, i64 1
  br i1 %66, label %68, label %59, !llvm.loop !180

68:                                               ; preds = %59
  store ptr %60, ptr %7, align 8, !tbaa !67
  %69 = icmp eq i8 %61, 45
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = call i64 @strtol(ptr noundef nonnull %67, ptr noundef nonnull %7, i32 noundef 10) #22
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %71, %70 ], [ %56, %68 ]
  %74 = call i64 @llvm.umin.i64(i64 %56, i64 %73)
  %75 = call i64 @llvm.umax.i64(i64 %56, i64 %73)
  %76 = load i64, ptr %34, align 8, !tbaa !177
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i64 %74, ptr %34, align 8, !tbaa !177
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i64 [ %74, %78 ], [ %76, %72 ]
  %81 = load i64, ptr %35, align 8, !tbaa !178
  %82 = icmp ugt i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 %75, ptr %35, align 8, !tbaa !178
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i64 [ %75, %83 ], [ %81, %79 ]
  %86 = load ptr, ptr %7, align 8, !tbaa !67
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %86, align 1, !tbaa !152
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %41, !llvm.loop !181

90:                                               ; preds = %84, %29
  %91 = phi i64 [ %33, %29 ], [ %85, %84 ]
  %92 = phi i64 [ %33, %29 ], [ %80, %84 ]
  %93 = sub i64 %91, %92
  %94 = add i64 %93, 1
  store i64 %94, ptr %35, align 8, !tbaa !178
  %95 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 54
  store i64 %92, ptr %95, align 8, !tbaa !182
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 55
  store i64 %94, ptr %96, align 8, !tbaa !183
  br label %97

97:                                               ; preds = %90, %26, %23, %16
  store i8 0, ptr %4, align 16, !tbaa !152
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 6, ptr noundef nonnull %4) #22
  %98 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %98, align 8, !tbaa !184
  %99 = call ptr @AcquireExceptionInfo() #22
  %100 = load i8, ptr %4, align 16, !tbaa !152
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %137, label %102

102:                                              ; preds = %97
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 4096) #22
  call void @LocaleUpper(ptr noundef nonnull %6) #22
  br label %104

104:                                              ; preds = %102, %113
  %105 = phi ptr [ @.str.19, %102 ], [ %116, %113 ]
  %106 = phi i64 [ 0, %102 ], [ %114, %113 ]
  %107 = load i8, ptr %6, align 16, !tbaa !152
  %108 = load i8, ptr %105, align 1, !tbaa !152
  %109 = icmp eq i8 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull %105) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110, %104
  %114 = add nuw nsw i64 %106, 1
  %115 = getelementptr inbounds [18 x ptr], ptr @SetImageInfo.format_type_formats, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !67
  %117 = icmp eq i64 %114, 17
  br i1 %117, label %118, label %104, !llvm.loop !185

118:                                              ; preds = %110, %113
  %119 = phi i32 [ 0, %113 ], [ 2, %110 ]
  %120 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %99) #22
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._MagickInfo, ptr %120, i64 0, i32 15
  %124 = load i32, ptr %123, align 4, !tbaa !186
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
  store i32 1, ptr %98, align 8, !tbaa !184
  br label %130

130:                                              ; preds = %127, %129
  %131 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %132 = call i64 @CopyMagickString(ptr noundef nonnull %131, ptr noundef nonnull %6, i64 noundef 4096) #22
  br label %133

133:                                              ; preds = %130, %127
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.36) #22
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, ptr %98, align 8, !tbaa !184
  br label %137

137:                                              ; preds = %133, %136, %97
  store i8 0, ptr %6, align 16, !tbaa !152
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 1, ptr noundef nonnull %6) #22
  %138 = load i8, ptr %6, align 16, !tbaa !152
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %142 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %141, i64 noundef 4096) #22
  br label %154

143:                                              ; preds = %137
  call void @LocaleUpper(ptr noundef nonnull %6) #22
  %144 = call i32 @IsMagickConflict(ptr noundef nonnull %6) #22
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %148 = call i64 @CopyMagickString(ptr noundef nonnull %147, ptr noundef nonnull %6, i64 noundef 4096) #22
  %149 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.23) #22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store i32 1, ptr %98, align 8, !tbaa !184
  br label %154

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %153, align 8, !tbaa !188
  br label %154

154:                                              ; preds = %143, %152, %151, %140
  %155 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %99) #22
  %156 = call ptr @DestroyExceptionInfo(ptr noundef %99) #22
  %157 = icmp eq ptr %155, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %155) #22
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %162, align 4, !tbaa !189
  br label %163

163:                                              ; preds = %161, %158
  call void @GetPathComponent(ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull %5) #22
  %164 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #22
  %165 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !91
  %167 = icmp ne i32 %166, 0
  %168 = icmp ugt i32 %1, 1
  %169 = and i1 %168, %167
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %172 = load i64, ptr %171, align 8, !tbaa !177
  %173 = trunc i64 %172 to i32
  %174 = call i64 @InterpretImageFilename(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %17, i32 noundef %173, ptr noundef nonnull %5) #26
  %175 = call i32 @LocaleCompare(ptr noundef nonnull %5, ptr noundef nonnull %17) #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170
  %178 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 37) #29
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, ptr %165, align 4, !tbaa !91
  br label %181

181:                                              ; preds = %170, %177, %180, %163
  %182 = load i32, ptr %165, align 4, !tbaa !91
  %183 = icmp ne i32 %182, 0
  %184 = icmp ne i32 %1, 0
  %185 = and i1 %184, %183
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = call ptr @GetMagickInfo(ptr noundef nonnull %6, ptr noundef %2) #22
  %188 = icmp eq ptr %187, null
  br i1 %188, label %263, label %189

189:                                              ; preds = %186
  %190 = call i32 @GetMagickAdjoin(ptr noundef nonnull %187) #22
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %263

192:                                              ; preds = %189
  store i32 0, ptr %165, align 4, !tbaa !91
  br label %263

193:                                              ; preds = %181
  %194 = load i32, ptr %98, align 8, !tbaa !184
  %195 = or i32 %194, %1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %263

197:                                              ; preds = %193
  %198 = call ptr @AcquireImage(ptr noundef nonnull %0) #26
  %199 = getelementptr inbounds %struct._Image, ptr %198, i64 0, i32 53
  %200 = call i64 @CopyMagickString(ptr noundef nonnull %199, ptr noundef nonnull %17, i64 noundef 4096) #22
  %201 = call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %198, i32 noundef 2, ptr noundef %2) #22
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = call ptr @DestroyImage(ptr noundef %198) #26
  br label %263

205:                                              ; preds = %197
  %206 = call i32 @IsBlobSeekable(ptr noundef %198) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i32 @IsBlobExempt(ptr noundef %198) #22
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %208, %205
  store i8 0, ptr %5, align 16, !tbaa !152
  %212 = call i32 @ImageToFile(ptr noundef %198, ptr noundef nonnull %5, ptr noundef %2) #22
  %213 = call i32 @CloseBlob(ptr noundef %198) #22
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call ptr @DestroyImage(ptr noundef %198) #26
  br label %263

217:                                              ; preds = %211
  call void @SetImageInfoFile(ptr noundef nonnull %0, ptr noundef null) #26
  %218 = call i64 @CopyMagickString(ptr noundef nonnull %199, ptr noundef nonnull %5, i64 noundef 4096) #22
  %219 = call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %198, i32 noundef 2, ptr noundef %2) #22
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call ptr @DestroyImage(ptr noundef %198) #26
  br label %263

223:                                              ; preds = %217
  %224 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %5, i64 noundef 4096) #22
  %225 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %225, align 8, !tbaa !188
  br label %226

226:                                              ; preds = %223, %208
  %227 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 8192) #22
  %228 = call i64 @ReadBlob(ptr noundef %198, i64 noundef 8192, ptr noundef nonnull %9) #22
  %229 = sub nsw i64 0, %228
  %230 = call i64 @SeekBlob(ptr noundef %198, i64 noundef %229, i32 noundef 1) #22
  %231 = call i32 @CloseBlob(ptr noundef %198) #22
  %232 = call ptr @DestroyImage(ptr noundef %198) #26
  %233 = call ptr @AcquireExceptionInfo() #22
  %234 = call ptr @GetMagicInfo(ptr noundef nonnull %9, i64 noundef %228, ptr noundef %233) #22
  %235 = icmp eq ptr %234, null
  br i1 %235, label %252, label %236

236:                                              ; preds = %226
  %237 = call ptr @GetMagicName(ptr noundef nonnull %234) #22
  %238 = icmp eq ptr %237, null
  br i1 %238, label %252, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %241 = call ptr @GetMagicName(ptr noundef nonnull %234) #22
  %242 = call i64 @CopyMagickString(ptr noundef nonnull %240, ptr noundef %241, i64 noundef 4096) #22
  %243 = call ptr @GetMagickInfo(ptr noundef nonnull %240, ptr noundef %233) #22
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %239
  %246 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %243) #22
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245, %239
  %249 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %249, align 4, !tbaa !189
  br label %250

250:                                              ; preds = %248, %245
  %251 = call ptr @DestroyExceptionInfo(ptr noundef %233) #22
  br label %263

252:                                              ; preds = %236, %226
  %253 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %254 = call ptr @GetMagickInfo(ptr noundef nonnull %253, ptr noundef %233) #22
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %254) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256, %252
  %260 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  store i32 0, ptr %260, align 4, !tbaa !189
  br label %261

261:                                              ; preds = %259, %256
  %262 = call ptr @DestroyExceptionInfo(ptr noundef %233) #22
  br label %263

263:                                              ; preds = %189, %192, %186, %261, %193, %250, %221, %215, %203
  %264 = phi i32 [ 0, %203 ], [ 0, %215 ], [ 0, %221 ], [ 1, %250 ], [ 1, %193 ], [ 1, %261 ], [ 1, %186 ], [ 1, %192 ], [ 1, %189 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #10
  ret i32 %264
}

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsGeometry(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #19 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #22
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2889, ptr noundef nonnull @.str.2) #22
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !101
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %10, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2893, i32 noundef 465, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #22
  br label %42

26:                                               ; preds = %16, %8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #26
  store ptr %31, ptr %27, align 8, !tbaa !113
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call ptr @NewImageList() #22
  store ptr %33, ptr %27, align 8, !tbaa !113
  br i1 %9, label %42, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %38) #26
  store ptr %39, ptr %27, align 8, !tbaa !113
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %34, %32, %22
  %43 = phi i32 [ 0, %22 ], [ 1, %32 ], [ 0, %34 ], [ %41, %37 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !67
  store i16 %1, ptr %4, align 2, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !39
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2949, ptr noundef nonnull @.str.2) #22
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %15, align 8, !tbaa !100
  store i32 1, ptr %7, align 4, !tbaa !6
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %16, ptr %6, align 8, !tbaa !67
  %17 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %16) #22
  store ptr %17, ptr %5, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !102
  %20 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %21 = shl i64 %20, 5
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #22
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  br label %35

31:                                               ; preds = %26, %23, %14
  %32 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %33 = icmp ult i64 %32, 2
  %34 = select i1 %33, i64 1, i64 2
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %30, %29 ], [ %34, %31 ]
  %37 = trunc i64 %36 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %37)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @SetImageOpacity.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4)
  %38 = load ptr, ptr %5, align 8, !tbaa !67
  %39 = call ptr @DestroyCacheView(ptr noundef %38) #22
  %40 = load i32, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %40
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageOpacity.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %6) #9 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 %15, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  store i64 1, ptr %10, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !46
  %21 = load i64, ptr %8, align 8, !tbaa !46
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %73, label %23

23:                                               ; preds = %17, %65
  %24 = phi i64 [ %71, %65 ], [ %20, %17 ]
  %25 = phi i64 [ %69, %65 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %65, label %27

27:                                               ; preds = %23, %59
  %28 = phi i64 [ %60, %59 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = load ptr, ptr %2, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !101
  %36 = load ptr, ptr %5, align 8, !tbaa !67
  %37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #28
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %2, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !101
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i16, ptr %6, align 2, !tbaa !122
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %44 ]
  %48 = phi ptr [ %50, %46 ], [ %37, %44 ]
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 3
  store i16 %45, ptr %49, align 2, !tbaa !127
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %42
  br i1 %52, label %53, label %46, !llvm.loop !190

53:                                               ; preds = %46, %39
  %54 = load ptr, ptr %4, align 8, !tbaa !67
  %55 = load ptr, ptr %5, align 8, !tbaa !67
  %56 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %54, ptr noundef %55) #28
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %59

59:                                               ; preds = %58, %53, %27
  %60 = add nsw i64 %28, 1
  %61 = load i64, ptr %9, align 8, !tbaa !46
  %62 = icmp slt i64 %28, %61
  br i1 %62, label %27, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %8, align 8, !tbaa !46
  br label %65

65:                                               ; preds = %63, %23
  %66 = phi i64 [ %25, %23 ], [ %64, %63 ]
  %67 = phi i64 [ %24, %23 ], [ %61, %63 ]
  %68 = load i64, ptr %10, align 8, !tbaa !46
  %69 = add nsw i64 %68, %66
  store i64 %69, ptr %8, align 8, !tbaa !46
  %70 = add nsw i64 %68, %67
  %71 = call i64 @llvm.smin.i64(i64 %70, i64 %15)
  store i64 %71, ptr %9, align 8, !tbaa !46
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %23

73:                                               ; preds = %65, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %74

74:                                               ; preds = %73, %7
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageVirtualPixelMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3020, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call i32 @SetPixelCacheVirtualMethod(ptr noundef nonnull %0, i32 noundef %1) #22
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @SetPixelCacheVirtualMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SmushImages(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #22
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !102
  %19 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #22
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
  %30 = load i32, ptr %29, align 8, !tbaa !100
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %28, i32 1
  %33 = add i64 %25, 1
  %34 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !101
  br i1 %22, label %46, label %36

36:                                               ; preds = %23
  %37 = tail call i64 @llvm.umax.i64(i64 %35, i64 %24)
  %38 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !102
  %40 = add i64 %39, %26
  %41 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 67
  %42 = load ptr, ptr %41, align 8, !tbaa !99
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, i64 0, i64 %2
  %45 = add i64 %40, %44
  br label %56

46:                                               ; preds = %23
  %47 = add i64 %35, %24
  %48 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 67
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, i64 0, i64 %2
  %52 = add i64 %47, %51
  %53 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !102
  %55 = tail call i64 @llvm.umax.i64(i64 %54, i64 %26)
  br label %56

56:                                               ; preds = %46, %36
  %57 = phi i64 [ %45, %36 ], [ %55, %46 ]
  %58 = phi i64 [ %37, %36 ], [ %52, %46 ]
  %59 = tail call ptr @GetNextImageInList(ptr noundef nonnull %27) #22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %23, !llvm.loop !191

61:                                               ; preds = %56, %12
  %62 = phi i32 [ %14, %12 ], [ %32, %56 ]
  %63 = phi i64 [ %18, %12 ], [ %57, %56 ]
  %64 = phi i64 [ 1, %12 ], [ %33, %56 ]
  %65 = phi i64 [ %16, %12 ], [ %58, %56 ]
  %66 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %65, i64 noundef %63, i32 noundef 1, ptr noundef %3) #26
  %67 = icmp eq ptr %66, null
  br i1 %67, label %138, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %66, i32 noundef 1) #26
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %72) #22
  %73 = tail call ptr @DestroyImage(ptr noundef nonnull %66) #26
  br label %138

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 6
  store i32 %62, ptr %75, align 8, !tbaa !100
  %76 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %66) #26, !range !104
  %77 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %66, ptr noundef %3) #22
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
  call void @SetGeometry(ptr noundef nonnull %66, ptr noundef nonnull %5) #22
  %88 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !101
  %90 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !102
  %92 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 35
  %93 = load i32, ptr %92, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %89, i64 noundef %91, i32 noundef %93, ptr noundef nonnull %5) #22
  br i1 %80, label %97, label %94

94:                                               ; preds = %83
  %95 = load i64, ptr %81, align 8, !tbaa !105
  %96 = call fastcc i64 @SmushYGap(ptr noundef nonnull %66, ptr noundef nonnull %87, i64 noundef %2, ptr noundef %3) #26
  br label %100

97:                                               ; preds = %83
  %98 = call fastcc i64 @SmushXGap(ptr noundef nonnull %66, ptr noundef nonnull %87, i64 noundef %2, ptr noundef %3) #26
  %99 = load i64, ptr %82, align 8, !tbaa !106
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i64 [ %95, %94 ], [ %98, %97 ]
  %102 = phi i64 [ %96, %94 ], [ %99, %97 ]
  %103 = sub nsw i64 %84, %102
  %104 = sub nsw i64 %85, %101
  %105 = call i32 @CompositeImage(ptr noundef nonnull %66, i32 noundef 40, ptr noundef nonnull %87, i64 noundef %104, i64 noundef %103) #22
  %106 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %87, ptr noundef nonnull @.str.37, i64 noundef %86, i64 noundef %64) #26
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %100
  br i1 %80, label %109, label %112

109:                                              ; preds = %108
  %110 = load i64, ptr %88, align 8, !tbaa !101
  %111 = add nsw i64 %110, %104
  br label %115

112:                                              ; preds = %108
  %113 = load i64, ptr %90, align 8, !tbaa !102
  %114 = add nsw i64 %113, %103
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i64 [ %111, %109 ], [ 0, %112 ]
  %117 = phi i64 [ 0, %109 ], [ %114, %112 ]
  %118 = call ptr @GetNextImageInList(ptr noundef nonnull %87) #22
  %119 = add nuw nsw i64 %86, 1
  %120 = icmp eq i64 %119, %64
  br i1 %120, label %121, label %83, !llvm.loop !192

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
  store i64 %127, ptr %131, align 8, !tbaa !101
  br label %134

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 8
  store i64 %128, ptr %133, align 8, !tbaa !102
  br label %134

134:                                              ; preds = %132, %130
  %135 = call ptr @DestroyCacheView(ptr noundef %77) #22
  br i1 %126, label %136, label %138

136:                                              ; preds = %134
  %137 = call ptr @DestroyImage(ptr noundef nonnull %66) #26
  br label %138

138:                                              ; preds = %134, %136, %61, %71
  %139 = phi ptr [ null, %71 ], [ null, %61 ], [ %137, %136 ], [ %66, %134 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret ptr %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @SmushYGap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %4
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %5) #22
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %12, i64 noundef %14, i32 noundef %16, ptr noundef nonnull %5) #22
  %17 = load ptr, ptr %7, align 8, !tbaa !99
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #22
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 35
  %23 = load i32, ptr %22, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %19, i64 noundef %21, i32 noundef %23, ptr noundef nonnull %6) #22
  %24 = load i64, ptr %13, align 8, !tbaa !102
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef %17, ptr noundef %3) #22
  %26 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %3) #22
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !101
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  br label %33

33:                                               ; preds = %30, %80
  %34 = phi i64 [ %24, %30 ], [ %83, %80 ]
  %35 = phi i64 [ 0, %30 ], [ %84, %80 ]
  %36 = load i64, ptr %20, align 8, !tbaa !102
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %40, label %57

38:                                               ; preds = %49
  %39 = icmp sgt i64 %41, 2
  br i1 %39, label %40, label %57, !llvm.loop !193

40:                                               ; preds = %33, %38
  %41 = phi i64 [ %42, %38 ], [ %36, %33 ]
  %42 = add nsw i64 %41, -1
  %43 = load i64, ptr %31, align 8, !tbaa !105
  %44 = add nsw i64 %43, %35
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef %44, i64 noundef %42, i64 noundef 1, i64 noundef 1, ptr noundef %3) #28
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, ptr %20, align 8, !tbaa !102
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !127
  %52 = icmp eq i16 %51, -1
  %53 = load i64, ptr %20, align 8, !tbaa !102
  %54 = sub i64 %53, %41
  %55 = icmp ult i64 %54, %34
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %38, label %57, !llvm.loop !193

57:                                               ; preds = %38, %49, %33, %47
  %58 = phi i64 [ %41, %47 ], [ %36, %33 ], [ %41, %49 ], [ %42, %38 ]
  %59 = phi i64 [ %48, %47 ], [ %36, %33 ], [ %53, %49 ], [ %53, %38 ]
  %60 = sub i64 %59, %58
  %61 = load i64, ptr %13, align 8, !tbaa !102
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57, %76
  %64 = phi i64 [ %77, %76 ], [ 0, %57 ]
  %65 = load i64, ptr %32, align 8, !tbaa !105
  %66 = add nsw i64 %65, %35
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef %66, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef %3) #28
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !127
  %72 = icmp eq i16 %71, -1
  %73 = add nsw i64 %64, %60
  %74 = icmp slt i64 %73, %34
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = add nuw nsw i64 %64, 1
  %78 = load i64, ptr %13, align 8, !tbaa !102
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %63, label %80, !llvm.loop !194

80:                                               ; preds = %76, %69, %63, %57
  %81 = phi i64 [ 0, %57 ], [ %64, %63 ], [ %64, %69 ], [ %77, %76 ]
  %82 = add nsw i64 %81, %60
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 %34)
  %84 = add nuw nsw i64 %35, 1
  %85 = load i64, ptr %27, align 8, !tbaa !101
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %33, label %87, !llvm.loop !195

87:                                               ; preds = %80, %10
  %88 = phi i64 [ 0, %10 ], [ %84, %80 ]
  %89 = phi i64 [ %24, %10 ], [ %83, %80 ]
  %90 = call ptr @DestroyCacheView(ptr noundef %26) #22
  %91 = call ptr @DestroyCacheView(ptr noundef %25) #22
  %92 = load i64, ptr %27, align 8, !tbaa !101
  %93 = icmp slt i64 %88, %92
  %94 = sub nsw i64 %89, %2
  %95 = select i1 %93, i64 %2, i64 %94
  br label %96

96:                                               ; preds = %87, %4
  %97 = phi i64 [ 0, %4 ], [ %95, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret i64 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @SmushXGap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %4
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #22
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %12, i64 noundef %14, i32 noundef %16, ptr noundef nonnull %6) #22
  %17 = load ptr, ptr %7, align 8, !tbaa !99
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %5) #22
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 35
  %23 = load i32, ptr %22, align 4, !tbaa !78
  call void @GravityAdjustGeometry(i64 noundef %19, i64 noundef %21, i32 noundef %23, ptr noundef nonnull %5) #22
  %24 = load i64, ptr %11, align 8, !tbaa !101
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef %17, ptr noundef %3) #22
  %26 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %3) #22
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !102
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  br label %33

33:                                               ; preds = %30, %80
  %34 = phi i64 [ %24, %30 ], [ %83, %80 ]
  %35 = phi i64 [ 0, %30 ], [ %84, %80 ]
  %36 = load i64, ptr %18, align 8, !tbaa !101
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %40, label %57

38:                                               ; preds = %49
  %39 = icmp sgt i64 %41, 2
  br i1 %39, label %40, label %57, !llvm.loop !196

40:                                               ; preds = %33, %38
  %41 = phi i64 [ %42, %38 ], [ %36, %33 ]
  %42 = add nsw i64 %41, -1
  %43 = load i64, ptr %31, align 8, !tbaa !106
  %44 = add nsw i64 %43, %35
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef %42, i64 noundef %44, i64 noundef 1, i64 noundef 1, ptr noundef %3) #28
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, ptr %18, align 8, !tbaa !101
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !127
  %52 = icmp eq i16 %51, -1
  %53 = load i64, ptr %18, align 8, !tbaa !101
  %54 = sub i64 %53, %41
  %55 = icmp ult i64 %54, %34
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %38, label %57, !llvm.loop !196

57:                                               ; preds = %38, %49, %33, %47
  %58 = phi i64 [ %41, %47 ], [ %36, %33 ], [ %41, %49 ], [ %42, %38 ]
  %59 = phi i64 [ %48, %47 ], [ %36, %33 ], [ %53, %49 ], [ %53, %38 ]
  %60 = sub i64 %59, %58
  %61 = load i64, ptr %11, align 8, !tbaa !101
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57, %76
  %64 = phi i64 [ %77, %76 ], [ 0, %57 ]
  %65 = load i64, ptr %32, align 8, !tbaa !106
  %66 = add nsw i64 %65, %35
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef %64, i64 noundef %66, i64 noundef 1, i64 noundef 1, ptr noundef %3) #28
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !127
  %72 = icmp eq i16 %71, -1
  %73 = add nsw i64 %64, %60
  %74 = icmp slt i64 %73, %34
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = add nuw nsw i64 %64, 1
  %78 = load i64, ptr %11, align 8, !tbaa !101
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %63, label %80, !llvm.loop !197

80:                                               ; preds = %76, %69, %63, %57
  %81 = phi i64 [ 0, %57 ], [ %64, %63 ], [ %64, %69 ], [ %77, %76 ]
  %82 = add nsw i64 %81, %60
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 %34)
  %84 = add nuw nsw i64 %35, 1
  %85 = load i64, ptr %27, align 8, !tbaa !102
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %33, label %87, !llvm.loop !198

87:                                               ; preds = %80, %10
  %88 = phi i64 [ 0, %10 ], [ %84, %80 ]
  %89 = phi i64 [ %24, %10 ], [ %83, %80 ]
  %90 = call ptr @DestroyCacheView(ptr noundef %26) #22
  %91 = call ptr @DestroyCacheView(ptr noundef %25) #22
  %92 = load i64, ptr %27, align 8, !tbaa !102
  %93 = icmp slt i64 %88, %92
  %94 = sub nsw i64 %89, %2
  %95 = select i1 %93, i64 %2, i64 %94
  br label %96

96:                                               ; preds = %87, %4
  %97 = phi i64 [ 0, %4 ], [ %95, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret i64 %97
}

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @StripImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3360, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %5, %1
  tail call void @DestroyImageProfiles(ptr noundef nonnull %0) #22
  %8 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #22
  %9 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #22
  %10 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #22
  %11 = tail call i32 @SetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #22
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SyncImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %6) #9 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !102
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %103

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 %15, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  store i64 1, ptr %10, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !46
  %21 = load i64, ptr %8, align 8, !tbaa !46
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %102, label %23

23:                                               ; preds = %17, %94
  %24 = phi i64 [ %100, %94 ], [ %20, %17 ]
  %25 = phi i64 [ %98, %94 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %94, label %27

27:                                               ; preds = %23, %88
  %28 = phi i64 [ %89, %88 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %88, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = load ptr, ptr %2, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !101
  %36 = load ptr, ptr %5, align 8, !tbaa !67
  %37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #28
  %38 = icmp eq ptr %37, null
  br i1 %38, label %87, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !67
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #22
  %42 = load ptr, ptr %2, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !101
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  %47 = icmp eq ptr %41, null
  br label %48

48:                                               ; preds = %46, %74
  %49 = phi ptr [ %42, %46 ], [ %78, %74 ]
  %50 = phi i64 [ 0, %46 ], [ %77, %74 ]
  %51 = phi ptr [ %37, %46 ], [ %76, %74 ]
  br i1 %47, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i16, ptr %41, i64 %50
  %54 = load i16, ptr %53, align 2, !tbaa !122
  %55 = zext i16 %54 to i64
  br label %56

56:                                               ; preds = %48, %52
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ]
  %58 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %49, i64 noundef %57, ptr noundef nonnull %6) #26
  %59 = load ptr, ptr %2, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !100
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = zext i16 %58 to i64
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %65, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !126
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %65
  %69 = load <2 x i16>, ptr %68, align 2, !tbaa !122
  br i1 %62, label %74, label %70

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %65, i32 3
  %72 = load i16, ptr %71, align 2, !tbaa !127
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 3
  store i16 %72, ptr %73, align 2, !tbaa !127
  br label %74

74:                                               ; preds = %56, %70
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 2
  store i16 %67, ptr %75, align 2
  store <2 x i16> %69, ptr %51, align 2
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %77 = add nuw nsw i64 %50, 1
  %78 = load ptr, ptr %2, align 8, !tbaa !67
  %79 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 7
  %80 = load i64, ptr %79, align 8, !tbaa !101
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %48, label %82, !llvm.loop !199

82:                                               ; preds = %74, %39
  %83 = load ptr, ptr %4, align 8, !tbaa !67
  %84 = load ptr, ptr %5, align 8, !tbaa !67
  %85 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %83, ptr noundef %84) #28
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %88

88:                                               ; preds = %87, %82, %27
  %89 = add nsw i64 %28, 1
  %90 = load i64, ptr %9, align 8, !tbaa !46
  %91 = icmp slt i64 %28, %90
  br i1 %91, label %27, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %8, align 8, !tbaa !46
  br label %94

94:                                               ; preds = %92, %23
  %95 = phi i64 [ %25, %23 ], [ %93, %92 ]
  %96 = phi i64 [ %24, %23 ], [ %90, %92 ]
  %97 = load i64, ptr %10, align 8, !tbaa !46
  %98 = add nsw i64 %97, %95
  store i64 %98, ptr %8, align 8, !tbaa !46
  %99 = add nsw i64 %97, %96
  %100 = call i64 @llvm.smin.i64(i64 %99, i64 %15)
  store i64 %100, ptr %9, align 8, !tbaa !46
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %23

102:                                              ; preds = %94, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %103

103:                                              ; preds = %102, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i16 @PushColormapIndex(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i16
  br label %10

9:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !6
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i16 [ %8, %7 ], [ 0, %9 ]
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SyncImagesSettings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3514, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %2, %6
  br label %10

10:                                               ; preds = %9, %10
  %11 = phi ptr [ %13, %10 ], [ %1, %9 ]
  %12 = tail call i32 @SyncImageSettings(ptr noundef %0, ptr noundef nonnull %11) #26
  %13 = tail call ptr @GetNextImageInList(ptr noundef nonnull %11) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !200

15:                                               ; preds = %10
  %16 = tail call i32 @DeleteImageOption(ptr noundef %0, ptr noundef nonnull @.str.44) #22
  ret i32 1
}

; Function Attrs: optsize
declare i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDoubleInterval(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %2) #22
  %4 = load ptr, ptr %2, align 8, !tbaa !67
  %5 = load i8, ptr %4, align 1, !tbaa !152
  %6 = icmp eq i8 %5, 37
  %7 = fmul double %3, 6.553600e+02
  %8 = select i1 %6, double %7, double %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret double %8
}

; Function Attrs: optsize
declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize allocsize(0) }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize allocsize(0,1) }
attributes #28 = { hot nounwind optsize }
attributes #29 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !13, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104, !17, i64 112, !7, i64 208, !13, i64 216, !7, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !12, i64 256, !16, i64 264, !16, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !16, i64 376, !16, i64 384, !16, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !13, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !20, i64 480, !21, i64 504, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !12, i64 12904, !12, i64 12912, !23, i64 12920, !7, i64 12976, !12, i64 12984, !13, i64 12992, !24, i64 13000, !24, i64 13032, !13, i64 13064, !12, i64 13072, !12, i64 13080, !13, i64 13088, !13, i64 13096, !13, i64 13104, !7, i64 13112, !7, i64 13116, !14, i64 13120, !13, i64 13128, !19, i64 13136, !13, i64 13168, !13, i64 13176, !7, i64 13184, !7, i64 13188, !25, i64 13192, !7, i64 13200, !12, i64 13208, !12, i64 13216, !7, i64 13224, !12, i64 13232}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"_PixelPacket", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!15 = !{!"short", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_RectangleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!20 = !{!"_ErrorInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !7, i64 48, !12, i64 56}
!22 = !{!"_Timer", !16, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 40, !12, i64 48}
!24 = !{!"_ProfileInfo", !13, i64 0, !12, i64 8, !13, i64 16, !12, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!11, !12, i64 56}
!27 = !{!11, !7, i64 4}
!28 = !{!11, !7, i64 208}
!29 = !{!16, !16, i64 0}
!30 = !{!11, !16, i64 200}
!31 = !{!11, !7, i64 404}
!32 = !{!11, !12, i64 448}
!33 = !{!11, !7, i64 416}
!34 = !{!11, !16, i64 384}
!35 = !{!11, !7, i64 13200}
!36 = !{!11, !13, i64 584}
!37 = !{!11, !13, i64 608}
!38 = !{!11, !12, i64 13216}
!39 = !{!11, !7, i64 12976}
!40 = !{!11, !12, i64 12984}
!41 = !{!11, !13, i64 12992}
!42 = !{!11, !12, i64 13080}
!43 = !{!44, !13, i64 304}
!44 = !{!"_ImageInfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !12, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !16, i64 144, !16, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !7, i64 184, !7, i64 188, !12, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !12, i64 216, !7, i64 224, !7, i64 228, !13, i64 232, !13, i64 240, !7, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !12, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !7, i64 16712, !13, i64 16720, !12, i64 16728, !12, i64 16736, !14, i64 16744, !12, i64 16752, !7, i64 16760, !14, i64 16764, !13, i64 16776, !7, i64 16784}
!45 = !{!44, !13, i64 24}
!46 = !{!12, !12, i64 0}
!47 = !{!11, !12, i64 328}
!48 = !{!11, !12, i64 256}
!49 = !{!44, !13, i64 32}
!50 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46}
!51 = !{!44, !7, i64 0}
!52 = !{!11, !7, i64 8}
!53 = !{!44, !12, i64 96}
!54 = !{!11, !12, i64 16}
!55 = !{!44, !7, i64 88}
!56 = !{!11, !7, i64 224}
!57 = !{!44, !13, i64 136}
!58 = !{!59, !16, i64 0}
!59 = !{!"_GeometryInfo", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!60 = !{!11, !16, i64 264}
!61 = !{!59, !16, i64 8}
!62 = !{!44, !13, i64 40}
!63 = !{!44, !12, i64 72}
!64 = !{!44, !7, i64 184}
!65 = !{!11, !7, i64 13188}
!66 = !{!44, !7, i64 224}
!67 = !{!13, !13, i64 0}
!68 = !{!44, !13, i64 288}
!69 = !{!11, !12, i64 440}
!70 = !{!11, !7, i64 420}
!71 = !{!11, !16, i64 376}
!72 = !{!11, !7, i64 13116}
!73 = !{!11, !16, i64 160}
!74 = !{!11, !12, i64 64}
!75 = !{!11, !7, i64 408}
!76 = !{!11, !7, i64 400}
!77 = !{!11, !16, i64 392}
!78 = !{!11, !7, i64 412}
!79 = !{!11, !16, i64 136}
!80 = !{!11, !7, i64 13224}
!81 = !{!11, !7, i64 13112}
!82 = !{!11, !12, i64 456}
!83 = !{!11, !7, i64 24}
!84 = !{!11, !16, i64 112}
!85 = !{!11, !12, i64 432}
!86 = !{!11, !7, i64 28}
!87 = !{!11, !7, i64 13184}
!88 = !{!11, !16, i64 184}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!44, !7, i64 12}
!92 = !{!44, !7, i64 80}
!93 = !{!44, !7, i64 248}
!94 = !{!44, !7, i64 20}
!95 = !{!44, !7, i64 16784}
!96 = !{!44, !7, i64 16712}
!97 = !{!44, !12, i64 16752}
!98 = !{!11, !13, i64 13104}
!99 = !{!11, !13, i64 13088}
!100 = !{!11, !7, i64 32}
!101 = !{!11, !12, i64 40}
!102 = !{!11, !12, i64 48}
!103 = distinct !{!103, !90}
!104 = !{i32 0, i32 2}
!105 = !{!19, !12, i64 16}
!106 = !{!19, !12, i64 24}
!107 = distinct !{!107, !90}
!108 = !{!11, !12, i64 13208}
!109 = !{!11, !13, i64 72}
!110 = !{!11, !13, i64 600}
!111 = !{!11, !13, i64 13096}
!112 = !{!11, !13, i64 424}
!113 = !{!11, !13, i64 13128}
!114 = !{!11, !13, i64 232}
!115 = !{!11, !13, i64 240}
!116 = !{!11, !12, i64 296}
!117 = !{!11, !12, i64 13152}
!118 = !{!11, !12, i64 304}
!119 = !{!11, !12, i64 13160}
!120 = !{!11, !13, i64 248}
!121 = !{!11, !15, i64 86}
!122 = !{!15, !15, i64 0}
!123 = distinct !{!123, !90}
!124 = distinct !{!124, !90}
!125 = distinct !{!125, !90}
!126 = !{!14, !15, i64 4}
!127 = !{!14, !15, i64 6}
!128 = distinct !{!128, !90}
!129 = !{!130}
!130 = !{i64 2, i64 -1, i64 -1, i1 true}
!131 = !{!11, !13, i64 568}
!132 = !{!11, !13, i64 576}
!133 = !{!23, !7, i64 0}
!134 = !{!11, !7, i64 12920}
!135 = distinct !{!135, !90}
!136 = !{!44, !13, i64 48}
!137 = !{!44, !13, i64 104}
!138 = !{!44, !13, i64 112}
!139 = !{!44, !13, i64 120}
!140 = !{!44, !13, i64 128}
!141 = !{!44, !13, i64 232}
!142 = !{!44, !13, i64 240}
!143 = !{!44, !13, i64 16776}
!144 = !{!44, !12, i64 192}
!145 = !{!44, !7, i64 4}
!146 = !{!44, !7, i64 208}
!147 = !{!44, !12, i64 216}
!148 = !{!44, !13, i64 312}
!149 = !{!44, !12, i64 320}
!150 = !{!44, !13, i64 296}
!151 = !{!44, !7, i64 16760}
!152 = !{!8, !8, i64 0}
!153 = distinct !{!153, !90}
!154 = distinct !{!154, !90}
!155 = distinct !{!155, !90}
!156 = distinct !{!156, !90}
!157 = distinct !{!157, !90}
!158 = !{!159, !7, i64 4}
!159 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !12, i64 24, !160, i64 32, !160, i64 36, !160, i64 40, !160, i64 44, !160, i64 48}
!160 = !{!"float", !8, i64 0}
!161 = !{!159, !7, i64 8}
!162 = !{!159, !16, i64 16}
!163 = !{!159, !12, i64 24}
!164 = distinct !{!164, !90}
!165 = !{!159, !160, i64 32}
!166 = !{!159, !160, i64 36}
!167 = !{!14, !15, i64 2}
!168 = !{!159, !160, i64 40}
!169 = !{!14, !15, i64 0}
!170 = !{!159, !160, i64 44}
!171 = !{!159, !160, i64 48}
!172 = !{!19, !12, i64 0}
!173 = !{!11, !12, i64 280}
!174 = !{!11, !12, i64 288}
!175 = !{!160, !160, i64 0}
!176 = distinct !{!176, !90}
!177 = !{!44, !12, i64 56}
!178 = !{!44, !12, i64 64}
!179 = distinct !{!179, !90}
!180 = distinct !{!180, !90}
!181 = distinct !{!181, !90}
!182 = !{!44, !12, i64 16728}
!183 = !{!44, !12, i64 16736}
!184 = !{!44, !7, i64 16}
!185 = distinct !{!185, !90}
!186 = !{!187, !7, i64 100}
!187 = !{!"_MagickInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !13, i64 112, !13, i64 120, !12, i64 128, !13, i64 136, !13, i64 144}
!188 = !{!44, !7, i64 8}
!189 = !{!44, !7, i64 84}
!190 = distinct !{!190, !90}
!191 = distinct !{!191, !90}
!192 = distinct !{!192, !90}
!193 = distinct !{!193, !90}
!194 = distinct !{!194, !90}
!195 = distinct !{!195, !90}
!196 = distinct !{!196, !90}
!197 = distinct !{!197, !90}
!198 = distinct !{!198, !90}
!199 = distinct !{!199, !90}
!200 = distinct !{!200, !90}
