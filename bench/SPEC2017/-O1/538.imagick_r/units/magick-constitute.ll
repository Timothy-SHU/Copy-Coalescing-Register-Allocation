; ModuleID = 'magick/constitute.c'
source_filename = "magick/constitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._DelegateInfo = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr, ptr, i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"magick/constitute.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"NonZeroWidthAndHeightRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"NotAuthorized\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"NoDecodeDelegateForThisImageFormat\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"Coder (%s) generated an image despite an error (%d), notify the developers\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"SubimageSpecificationReturnsNoImages\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"AnErrorHasOccurredReadingFromFile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"tiff:Orientation\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"exif:Orientation\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"exif:XResolution\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"exif:YResolution\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"tiff:ResolutionUnit\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"exif:ResolutionUnit\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"caption\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"8bim\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"date:modify\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"date:create\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"dispose\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"CorruptImage\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"clipmask\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"NoClipPathDefined\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"delegate:bimodal\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"NoEncodeDelegateForThisImageFormat\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"AnErrorHasOccurredWritingToFile\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Write/Image\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ConstituteImage(i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 142, ptr noundef nonnull @.str.2, ptr noundef %2) #7
  %8 = tail call ptr @AcquireImage(ptr noundef null) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %0, 0
  %12 = icmp eq i64 %1, 0
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #7
  br label %26

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 7
  store i64 %0, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 8
  store i64 %1, ptr %19, align 8, !tbaa !53
  %20 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %8) #7
  %21 = tail call i32 @ImportImagePixels(ptr noundef nonnull %8, i64 noundef 0, i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %24) #7
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %8) #7
  br label %26

26:                                               ; preds = %17, %23, %6, %14
  %27 = phi ptr [ null, %14 ], [ null, %6 ], [ %25, %23 ], [ %8, %17 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

declare i32 @ImportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PingImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 221, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @CloneImageInfo(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 34
  store i32 1, ptr %11, align 8, !tbaa !56
  %12 = tail call ptr @ReadStream(ptr noundef %10, ptr noundef nonnull @PingStream, ptr noundef %1) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 46
  tail call void @ResetTimer(ptr noundef nonnull %15) #7
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 35
  %17 = load i32, ptr %16, align 4, !tbaa !57
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @stdout, align 8, !tbaa !58
  %21 = tail call i32 @IdentifyImage(ptr noundef nonnull %12, ptr noundef %20, i32 noundef 0) #7
  br label %22

22:                                               ; preds = %14, %19, %9
  %23 = tail call ptr @DestroyImageInfo(ptr noundef %10) #7
  ret ptr %12
}

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

declare ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @PingStream(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 noundef returned %2) #3 {
  ret i64 %2
}

declare void @ResetTimer(ptr noundef) local_unnamed_addr #2

declare i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PingImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 280, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !59
  %15 = trunc i64 %14 to i32
  %16 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %12, i32 noundef %15, ptr noundef nonnull %3) #7
  %17 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull %12) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = call ptr @CloneImageInfo(ptr noundef %0) #7
  %21 = call ptr @AcquireExceptionInfo() #7
  %22 = call i32 @SetImageInfo(ptr noundef %20, i32 noundef 0, ptr noundef %21) #7
  %23 = call ptr @DestroyExceptionInfo(ptr noundef %21) #7
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !60
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call ptr @DestroyImageInfo(ptr noundef %20) #7
  %29 = call ptr @PingImage(ptr noundef %0, ptr noundef %1)
  br label %54

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 51
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %31, i64 noundef 4096) #7
  %33 = call ptr @NewImageList() #7
  store ptr %33, ptr %4, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 10
  %35 = load i64, ptr %34, align 8, !tbaa !59
  %36 = load i64, ptr %24, align 8, !tbaa !60
  %37 = add i64 %36, %35
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %46
  %40 = phi i64 [ %47, %46 ], [ %35, %30 ]
  %41 = trunc i64 %40 to i32
  %42 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i32 noundef %41, ptr noundef nonnull %31) #7
  %43 = call ptr @PingImage(ptr noundef %20, ptr noundef %1)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %39, %45
  %47 = add i64 %40, 1
  %48 = icmp eq i64 %47, %37
  br i1 %48, label %49, label %39, !llvm.loop !61

49:                                               ; preds = %46, %30
  %50 = call ptr @DestroyImageInfo(ptr noundef %20) #7
  %51 = load ptr, ptr %4, align 8, !tbaa !58
  br label %54

52:                                               ; preds = %11
  %53 = call ptr @PingImage(ptr noundef %0, ptr noundef %1)
  br label %54

54:                                               ; preds = %27, %49, %52
  %55 = phi ptr [ %53, %52 ], [ %29, %27 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #7
  ret ptr %55
}

declare i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @NewImageList() local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct._RectangleInfo, align 8
  %11 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 399, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #7
  br label %18

18:                                               ; preds = %15, %2
  %19 = tail call ptr @CloneImageInfo(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 51
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %20, i64 noundef 4096) #7
  %22 = call i32 @SetImageInfo(ptr noundef %19, i32 noundef 0, ptr noundef %1) #7
  %23 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %20, i64 noundef 4096) #7
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 48
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %24, i64 noundef 4096) #7
  %26 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 1, ptr noundef nonnull %24) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = tail call ptr @__errno_location() #8
  store i32 1, ptr %29, align 4, !tbaa !64
  %30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 412, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #7
  %31 = call ptr @DestroyImageInfo(ptr noundef %19) #7
  br label %576

32:                                               ; preds = %18
  %33 = call ptr @AcquireExceptionInfo() #7
  %34 = call ptr @GetMagickInfo(ptr noundef nonnull %24, ptr noundef %33) #7
  %35 = call ptr @DestroyExceptionInfo(ptr noundef %33) #7
  %36 = icmp eq ptr %34, null
  br i1 %36, label %78, label %37

37:                                               ; preds = %32
  %38 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %34) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %42 = load i32, ptr %41, align 4, !tbaa !65
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @GetMagickRawSupport(ptr noundef nonnull %34) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ 0, %37 ], [ 1, %44 ]
  %49 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 14
  store i32 %48, ptr %49, align 4, !tbaa !65
  br label %50

50:                                               ; preds = %47, %40, %44
  %51 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %34) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %50
  %54 = call ptr @AcquireImage(ptr noundef %19) #7
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 53
  %56 = call i64 @CopyMagickString(ptr noundef nonnull %55, ptr noundef nonnull %20, i64 noundef 4096) #7
  %57 = call i32 @OpenBlob(ptr noundef %0, ptr noundef %54, i32 noundef 2, ptr noundef %1) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call ptr @DestroyImageInfo(ptr noundef %19) #7
  br label %74

61:                                               ; preds = %53
  %62 = call i32 @IsBlobSeekable(ptr noundef %54) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  store i8 0, ptr %20, align 8, !tbaa !66
  %65 = call i32 @ImageToFile(ptr noundef %54, ptr noundef nonnull %20, ptr noundef %1) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @CloseBlob(ptr noundef %54) #7
  %69 = call ptr @DestroyImageInfo(ptr noundef %19) #7
  br label %74

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 2
  store i32 1, ptr %71, align 8, !tbaa !67
  br label %72

72:                                               ; preds = %70, %61
  %73 = call i32 @CloseBlob(ptr noundef %54) #7
  br label %74

74:                                               ; preds = %72, %67, %59
  %75 = phi i1 [ false, %59 ], [ false, %67 ], [ true, %72 ]
  %76 = phi ptr [ %60, %59 ], [ %69, %67 ], [ %19, %72 ]
  %77 = call ptr @DestroyImage(ptr noundef %54) #7
  br i1 %75, label %78, label %576

78:                                               ; preds = %32, %74, %50
  %79 = phi ptr [ %76, %74 ], [ %19, %50 ], [ %19, %32 ]
  %80 = call ptr @NewImageList() #7
  br i1 %36, label %84, label %81

81:                                               ; preds = %78
  %82 = call ptr @GetImageDecoder(ptr noundef nonnull %34) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81, %78
  %85 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 48
  %86 = call ptr @GetDelegateInfo(ptr noundef nonnull %85, ptr noundef null, ptr noundef %1) #7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = call i32 @SetImageInfo(ptr noundef %79, i32 noundef 0, ptr noundef %1) #7
  %90 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %91 = call i64 @CopyMagickString(ptr noundef nonnull %90, ptr noundef nonnull %3, i64 noundef 4096) #7
  %92 = call ptr @GetMagickInfo(ptr noundef nonnull %85, ptr noundef %1) #7
  br label %93

93:                                               ; preds = %84, %88, %81
  %94 = phi ptr [ %92, %88 ], [ %34, %84 ], [ %34, %81 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = call ptr @GetImageDecoder(ptr noundef nonnull %94) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %94) #7
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct._MagickInfo, ptr %94, i64 0, i32 22
  %105 = load ptr, ptr %104, align 8, !tbaa !68
  call void @LockSemaphoreInfo(ptr noundef %105) #7
  br label %106

106:                                              ; preds = %103, %99
  %107 = call ptr @GetImageDecoder(ptr noundef nonnull %94) #7
  %108 = call ptr %107(ptr noundef %79, ptr noundef %1) #7
  br i1 %102, label %176, label %181

109:                                              ; preds = %96, %93
  %110 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 48
  %111 = call ptr @GetDelegateInfo(ptr noundef nonnull %110, ptr noundef null, ptr noundef %1) #7
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 501, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %110) #7
  %115 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !67
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %120 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %119) #7
  br label %121

121:                                              ; preds = %118, %113
  %122 = call ptr @DestroyImageInfo(ptr noundef %79) #7
  br label %576

123:                                              ; preds = %109
  %124 = call ptr @AcquireImage(ptr noundef %79) #7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call ptr @DestroyImageInfo(ptr noundef %79) #7
  br label %576

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 53
  %130 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %131 = call i64 @CopyMagickString(ptr noundef nonnull %129, ptr noundef nonnull %130, i64 noundef 4096) #7
  store i8 0, ptr %130, align 8, !tbaa !66
  %132 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %111) #7
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct._DelegateInfo, ptr %111, i64 0, i32 11
  %136 = load ptr, ptr %135, align 8, !tbaa !70
  call void @LockSemaphoreInfo(ptr noundef %136) #7
  br label %137

137:                                              ; preds = %134, %128
  %138 = call i32 @InvokeDelegate(ptr noundef %79, ptr noundef nonnull %124, ptr noundef nonnull %110, ptr noundef null, ptr noundef %1) #7
  %139 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %111) #7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct._DelegateInfo, ptr %111, i64 0, i32 11
  %143 = load ptr, ptr %142, align 8, !tbaa !70
  call void @UnlockSemaphoreInfo(ptr noundef %143) #7
  br label %144

144:                                              ; preds = %141, %137
  %145 = call ptr @DestroyImageList(ptr noundef nonnull %124) #7
  %146 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 2
  store i32 1, ptr %146, align 8, !tbaa !67
  %147 = call i32 @SetImageInfo(ptr noundef %79, i32 noundef 0, ptr noundef %1) #7
  %148 = call ptr @GetMagickInfo(ptr noundef nonnull %110, ptr noundef %1) #7
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = call ptr @GetImageDecoder(ptr noundef nonnull %148) #7
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %166

153:                                              ; preds = %150, %144
  %154 = call i32 @IsPathAccessible(ptr noundef nonnull %130) #7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 535, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %110) #7
  br label %164

158:                                              ; preds = %153
  %159 = tail call ptr @__errno_location() #8
  %160 = load i32, ptr %159, align 4, !tbaa !64
  %161 = call ptr @GetExceptionMessage(i32 noundef %160) #7
  %162 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 540, i32 noundef 430, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %130, ptr noundef %161) #7
  %163 = call ptr @DestroyString(ptr noundef %161) #7
  br label %164

164:                                              ; preds = %158, %156
  %165 = call ptr @DestroyImageInfo(ptr noundef %79) #7
  br label %576

166:                                              ; preds = %150
  %167 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %148) #7
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct._MagickInfo, ptr %148, i64 0, i32 22
  %172 = load ptr, ptr %171, align 8, !tbaa !68
  call void @LockSemaphoreInfo(ptr noundef %172) #7
  br label %173

173:                                              ; preds = %170, %166
  %174 = call ptr @GetImageDecoder(ptr noundef nonnull %148) #7
  %175 = call ptr %174(ptr noundef %79, ptr noundef %1) #7
  br i1 %169, label %176, label %181

176:                                              ; preds = %173, %106
  %177 = phi ptr [ %94, %106 ], [ %148, %173 ]
  %178 = phi ptr [ %108, %106 ], [ %175, %173 ]
  %179 = getelementptr inbounds %struct._MagickInfo, ptr %177, i64 0, i32 22
  %180 = load ptr, ptr %179, align 8, !tbaa !68
  call void @UnlockSemaphoreInfo(ptr noundef %180) #7
  br label %181

181:                                              ; preds = %176, %173, %106
  %182 = phi ptr [ %108, %106 ], [ %175, %173 ], [ %178, %176 ]
  %183 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !67
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %188 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %187) #7
  store i32 0, ptr %183, align 8, !tbaa !67
  %189 = icmp eq ptr %182, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 53
  %192 = call i64 @CopyMagickString(ptr noundef nonnull %191, ptr noundef nonnull %3, i64 noundef 4096) #7
  br label %193

193:                                              ; preds = %190, %181
  %194 = icmp eq ptr %182, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %186, %193
  %196 = call ptr @DestroyImageInfo(ptr noundef %79) #7
  br label %576

197:                                              ; preds = %193
  %198 = load i32, ptr %1, align 8, !tbaa !72
  %199 = icmp ugt i32 %198, 399
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 55
  %202 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 564, ptr noundef nonnull @.str.9, ptr noundef nonnull %201, i32 noundef %198) #7
  br label %203

203:                                              ; preds = %200, %197
  %204 = call i32 @IsBlobTemporary(ptr noundef nonnull %182) #7
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %208 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %207) #7
  br label %209

209:                                              ; preds = %206, %203
  %210 = call ptr @GetNextImageInList(ptr noundef nonnull %182) #7
  %211 = icmp eq ptr %210, null
  br i1 %211, label %227, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 9
  %214 = load ptr, ptr %213, align 8, !tbaa !73
  %215 = call i32 @IsSceneGeometry(ptr noundef %214, i32 noundef 0) #7
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %213, align 8, !tbaa !73
  %219 = call ptr @CloneImages(ptr noundef nonnull %182, ptr noundef %218, ptr noundef nonnull %1) #7
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %223 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 577, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %222) #7
  br label %227

224:                                              ; preds = %217
  %225 = call ptr @DestroyImageList(ptr noundef nonnull %182) #7
  %226 = call ptr @GetFirstImageInList(ptr noundef nonnull %219) #7
  br label %227

227:                                              ; preds = %221, %224, %212, %209
  %228 = phi ptr [ %182, %212 ], [ %182, %209 ], [ %182, %221 ], [ %226, %224 ]
  %229 = call i32 @GetBlobError(ptr noundef %228) #7
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %227
  %232 = tail call ptr @__errno_location() #8
  %233 = load i32, ptr %232, align 4, !tbaa !64
  %234 = call ptr @GetExceptionMessage(i32 noundef %233) #7
  %235 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 51
  %236 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 587, i32 noundef 430, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef nonnull %235, ptr noundef %234) #7
  %237 = call ptr @DestroyString(ptr noundef %234) #7
  br label %238

238:                                              ; preds = %231, %227
  store ptr %228, ptr %7, align 8, !tbaa !58
  %239 = icmp eq ptr %228, null
  br i1 %239, label %572, label %240

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %242 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %243 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 7
  %244 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 44
  %245 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %246 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %247 = getelementptr inbounds %struct._GeometryInfo, ptr %11, i64 0, i32 1
  %248 = getelementptr inbounds %struct._GeometryInfo, ptr %11, i64 0, i32 1
  %249 = getelementptr inbounds %struct._ImageInfo, ptr %79, i64 0, i32 35
  br label %250

250:                                              ; preds = %240, %568
  %251 = phi ptr [ %228, %240 ], [ %569, %568 ]
  %252 = phi ptr [ %228, %240 ], [ %570, %568 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #7
  %253 = getelementptr inbounds %struct._Image, ptr %252, i64 0, i32 5
  store i32 0, ptr %253, align 4, !tbaa !74
  call void @GetPathComponent(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %8) #7
  %254 = load i8, ptr %8, align 16, !tbaa !66
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load ptr, ptr %7, align 8, !tbaa !58
  %258 = getelementptr inbounds %struct._Image, ptr %257, i64 0, i32 55
  %259 = call i64 @CopyMagickString(ptr noundef nonnull %258, ptr noundef nonnull %4, i64 noundef 4096) #7
  br label %260

260:                                              ; preds = %256, %250
  %261 = load ptr, ptr %7, align 8, !tbaa !58
  %262 = getelementptr inbounds %struct._Image, ptr %261, i64 0, i32 54
  %263 = call i64 @CopyMagickString(ptr noundef nonnull %262, ptr noundef nonnull %5, i64 noundef 4096) #7
  %264 = call i32 @IsBlobTemporary(ptr noundef %251) #7
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %260
  %267 = load ptr, ptr %7, align 8, !tbaa !58
  %268 = getelementptr inbounds %struct._Image, ptr %267, i64 0, i32 53
  %269 = call i64 @CopyMagickString(ptr noundef nonnull %268, ptr noundef nonnull %3, i64 noundef 4096) #7
  br label %270

270:                                              ; preds = %266, %260
  %271 = load ptr, ptr %7, align 8, !tbaa !58
  %272 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 56
  %273 = load i64, ptr %272, align 8, !tbaa !75
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 7
  %277 = load i64, ptr %276, align 8, !tbaa !34
  store i64 %277, ptr %272, align 8, !tbaa !75
  br label %278

278:                                              ; preds = %275, %270
  %279 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 57
  %280 = load i64, ptr %279, align 8, !tbaa !76
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct._Image, ptr %271, i64 0, i32 8
  %284 = load i64, ptr %283, align 8, !tbaa !53
  store i64 %284, ptr %279, align 8, !tbaa !76
  br label %285

285:                                              ; preds = %282, %278
  %286 = call ptr @GetImageProperty(ptr noundef %271, ptr noundef nonnull @.str.12) #7
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load ptr, ptr %7, align 8, !tbaa !58
  %290 = call ptr @GetImageProperty(ptr noundef %289, ptr noundef nonnull @.str.13) #7
  br label %291

291:                                              ; preds = %288, %285
  %292 = phi ptr [ %290, %288 ], [ %286, %285 ]
  %293 = icmp eq ptr %292, null
  br i1 %293, label %302, label %294

294:                                              ; preds = %291
  %295 = call i64 @strtol(ptr nocapture noundef nonnull %292, ptr noundef null, i32 noundef 10) #7
  %296 = trunc i64 %295 to i32
  %297 = load ptr, ptr %7, align 8, !tbaa !58
  %298 = getelementptr inbounds %struct._Image, ptr %297, i64 0, i32 4
  store i32 %296, ptr %298, align 8, !tbaa !77
  %299 = call i32 @DeleteImageProperty(ptr noundef %297, ptr noundef nonnull @.str.12) #7
  %300 = load ptr, ptr %7, align 8, !tbaa !58
  %301 = call i32 @DeleteImageProperty(ptr noundef %300, ptr noundef nonnull @.str.13) #7
  br label %302

302:                                              ; preds = %294, %291
  %303 = load ptr, ptr %7, align 8, !tbaa !58
  %304 = call ptr @GetImageProperty(ptr noundef %303, ptr noundef nonnull @.str.14) #7
  %305 = icmp eq ptr %304, null
  br i1 %305, label %321, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %7, align 8, !tbaa !58
  %308 = getelementptr inbounds %struct._Image, ptr %307, i64 0, i32 24
  %309 = load double, ptr %308, align 8, !tbaa !78
  store double %309, ptr %6, align 8, !tbaa !79
  store double 1.000000e+00, ptr %241, align 8, !tbaa !81
  %310 = call i32 @ParseGeometry(ptr noundef nonnull %304, ptr noundef nonnull %6) #7
  %311 = load double, ptr %241, align 8, !tbaa !81
  %312 = fcmp une double %311, 0.000000e+00
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load double, ptr %6, align 8, !tbaa !79
  %315 = fdiv double %314, %311
  %316 = load ptr, ptr %7, align 8, !tbaa !58
  %317 = getelementptr inbounds %struct._Image, ptr %316, i64 0, i32 24
  store double %315, ptr %317, align 8, !tbaa !78
  br label %318

318:                                              ; preds = %313, %306
  %319 = load ptr, ptr %7, align 8, !tbaa !58
  %320 = call i32 @DeleteImageProperty(ptr noundef %319, ptr noundef nonnull @.str.14) #7
  br label %321

321:                                              ; preds = %318, %302
  %322 = load ptr, ptr %7, align 8, !tbaa !58
  %323 = call ptr @GetImageProperty(ptr noundef %322, ptr noundef nonnull @.str.15) #7
  %324 = icmp eq ptr %323, null
  br i1 %324, label %340, label %325

325:                                              ; preds = %321
  %326 = load ptr, ptr %7, align 8, !tbaa !58
  %327 = getelementptr inbounds %struct._Image, ptr %326, i64 0, i32 25
  %328 = load double, ptr %327, align 8, !tbaa !82
  store double %328, ptr %6, align 8, !tbaa !79
  store double 1.000000e+00, ptr %242, align 8, !tbaa !81
  %329 = call i32 @ParseGeometry(ptr noundef nonnull %323, ptr noundef nonnull %6) #7
  %330 = load double, ptr %242, align 8, !tbaa !81
  %331 = fcmp une double %330, 0.000000e+00
  br i1 %331, label %332, label %337

332:                                              ; preds = %325
  %333 = load double, ptr %6, align 8, !tbaa !79
  %334 = fdiv double %333, %330
  %335 = load ptr, ptr %7, align 8, !tbaa !58
  %336 = getelementptr inbounds %struct._Image, ptr %335, i64 0, i32 25
  store double %334, ptr %336, align 8, !tbaa !82
  br label %337

337:                                              ; preds = %332, %325
  %338 = load ptr, ptr %7, align 8, !tbaa !58
  %339 = call i32 @DeleteImageProperty(ptr noundef %338, ptr noundef nonnull @.str.15) #7
  br label %340

340:                                              ; preds = %337, %321
  %341 = load ptr, ptr %7, align 8, !tbaa !58
  %342 = call ptr @GetImageProperty(ptr noundef %341, ptr noundef nonnull @.str.16) #7
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = load ptr, ptr %7, align 8, !tbaa !58
  %346 = call ptr @GetImageProperty(ptr noundef %345, ptr noundef nonnull @.str.17) #7
  br label %347

347:                                              ; preds = %344, %340
  %348 = phi ptr [ %346, %344 ], [ %342, %340 ]
  %349 = icmp eq ptr %348, null
  br i1 %349, label %359, label %350

350:                                              ; preds = %347
  %351 = call i64 @strtol(ptr nocapture noundef nonnull %348, ptr noundef null, i32 noundef 10) #7
  %352 = trunc i64 %351 to i32
  %353 = add i32 %352, -1
  %354 = load ptr, ptr %7, align 8, !tbaa !58
  %355 = getelementptr inbounds %struct._Image, ptr %354, i64 0, i32 19
  store i32 %353, ptr %355, align 8, !tbaa !83
  %356 = call i32 @DeleteImageProperty(ptr noundef %354, ptr noundef nonnull @.str.17) #7
  %357 = load ptr, ptr %7, align 8, !tbaa !58
  %358 = call i32 @DeleteImageProperty(ptr noundef %357, ptr noundef nonnull @.str.16) #7
  br label %359

359:                                              ; preds = %350, %347
  %360 = load ptr, ptr %7, align 8, !tbaa !58
  %361 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 26
  %362 = load i64, ptr %361, align 8, !tbaa !84
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 7
  %366 = load i64, ptr %365, align 8, !tbaa !34
  store i64 %366, ptr %361, align 8, !tbaa !84
  br label %367

367:                                              ; preds = %364, %359
  %368 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 26, i32 1
  %369 = load i64, ptr %368, align 8, !tbaa !85
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 8
  %373 = load i64, ptr %372, align 8, !tbaa !53
  store i64 %373, ptr %368, align 8, !tbaa !85
  br label %374

374:                                              ; preds = %371, %367
  %375 = call ptr @GetImageOption(ptr noundef %79, ptr noundef nonnull @.str.18) #7
  %376 = icmp eq ptr %375, null
  br i1 %376, label %383, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %7, align 8, !tbaa !58
  %379 = call ptr @InterpretImageProperties(ptr noundef %79, ptr noundef %378, ptr noundef nonnull %375) #7
  %380 = load ptr, ptr %7, align 8, !tbaa !58
  %381 = call i32 @SetImageProperty(ptr noundef %380, ptr noundef nonnull @.str.18, ptr noundef %379) #7
  %382 = call ptr @DestroyString(ptr noundef %379) #7
  br label %383

383:                                              ; preds = %377, %374
  %384 = call ptr @GetImageOption(ptr noundef %79, ptr noundef nonnull @.str.19) #7
  %385 = icmp eq ptr %384, null
  br i1 %385, label %392, label %386

386:                                              ; preds = %383
  %387 = load ptr, ptr %7, align 8, !tbaa !58
  %388 = call ptr @InterpretImageProperties(ptr noundef %79, ptr noundef %387, ptr noundef nonnull %384) #7
  %389 = load ptr, ptr %7, align 8, !tbaa !58
  %390 = call i32 @SetImageProperty(ptr noundef %389, ptr noundef nonnull @.str.19, ptr noundef %388) #7
  %391 = call ptr @DestroyString(ptr noundef %388) #7
  br label %392

392:                                              ; preds = %386, %383
  %393 = call ptr @GetImageOption(ptr noundef %79, ptr noundef nonnull @.str.20) #7
  %394 = icmp eq ptr %393, null
  br i1 %394, label %401, label %395

395:                                              ; preds = %392
  %396 = load ptr, ptr %7, align 8, !tbaa !58
  %397 = call ptr @InterpretImageProperties(ptr noundef %79, ptr noundef %396, ptr noundef nonnull %393) #7
  %398 = load ptr, ptr %7, align 8, !tbaa !58
  %399 = call i32 @SetImageProperty(ptr noundef %398, ptr noundef nonnull @.str.20, ptr noundef %397) #7
  %400 = call ptr @DestroyString(ptr noundef %397) #7
  br label %401

401:                                              ; preds = %395, %392
  %402 = load ptr, ptr %7, align 8, !tbaa !58
  %403 = getelementptr inbounds %struct._Image, ptr %402, i64 0, i32 55
  %404 = call i32 @LocaleCompare(ptr noundef nonnull %403, ptr noundef nonnull @.str.21) #7
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load ptr, ptr %7, align 8, !tbaa !58
  %408 = getelementptr inbounds %struct._Image, ptr %407, i64 0, i32 26
  %409 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.22, ptr noundef nonnull %408) #7
  br label %410

410:                                              ; preds = %406, %401
  %411 = load ptr, ptr %243, align 8, !tbaa !86
  %412 = icmp eq ptr %411, null
  br i1 %412, label %452, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %244, align 8, !tbaa !87
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %452

416:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #7
  %417 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %411, ptr noundef nonnull %10) #7
  %418 = load ptr, ptr %7, align 8, !tbaa !58
  %419 = getelementptr inbounds %struct._Image, ptr %418, i64 0, i32 7
  %420 = load i64, ptr %419, align 8, !tbaa !34
  %421 = load i64, ptr %10, align 8, !tbaa !88
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %428

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct._Image, ptr %418, i64 0, i32 8
  %425 = load i64, ptr %424, align 8, !tbaa !53
  %426 = load i64, ptr %245, align 8, !tbaa !89
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %451, label %428

428:                                              ; preds = %423, %416
  %429 = and i32 %417, 3
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %428
  %432 = call ptr @CropImage(ptr noundef %418, ptr noundef nonnull %10, ptr noundef nonnull %1) #7
  %433 = icmp eq ptr %432, null
  br i1 %433, label %451, label %449

434:                                              ; preds = %428
  %435 = and i32 %417, 12
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %451, label %437

437:                                              ; preds = %434
  %438 = load ptr, ptr %243, align 8, !tbaa !86
  %439 = call i32 @ParseRegionGeometry(ptr noundef %418, ptr noundef %438, ptr noundef nonnull %10, ptr noundef nonnull %1) #7
  %440 = load ptr, ptr %7, align 8, !tbaa !58
  %441 = load i64, ptr %10, align 8, !tbaa !88
  %442 = load i64, ptr %246, align 8, !tbaa !89
  %443 = getelementptr inbounds %struct._Image, ptr %440, i64 0, i32 32
  %444 = load i32, ptr %443, align 8, !tbaa !90
  %445 = getelementptr inbounds %struct._Image, ptr %440, i64 0, i32 30
  %446 = load double, ptr %445, align 8, !tbaa !91
  %447 = call ptr @ResizeImage(ptr noundef %440, i64 noundef %441, i64 noundef %442, i32 noundef %444, double noundef %446, ptr noundef nonnull %1) #7
  %448 = icmp eq ptr %447, null
  br i1 %448, label %451, label %449

449:                                              ; preds = %437, %431
  %450 = phi ptr [ %432, %431 ], [ %447, %437 ]
  call void @ReplaceImageInList(ptr noundef nonnull %7, ptr noundef nonnull %450) #7
  br label %451

451:                                              ; preds = %449, %437, %434, %431, %423
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #7
  br label %452

452:                                              ; preds = %451, %413, %410
  %453 = load ptr, ptr %7, align 8, !tbaa !58
  %454 = call ptr @GetImageProfile(ptr noundef %453, ptr noundef nonnull @.str.23) #7
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = load ptr, ptr %7, align 8, !tbaa !58
  %458 = call ptr @GetImageProfile(ptr noundef %457, ptr noundef nonnull @.str.24) #7
  br label %459

459:                                              ; preds = %456, %452
  %460 = phi ptr [ %458, %456 ], [ %454, %452 ]
  %461 = icmp eq ptr %460, null
  br i1 %461, label %469, label %462

462:                                              ; preds = %459
  %463 = call i64 @GetStringInfoLength(ptr noundef nonnull %460) #7
  %464 = load ptr, ptr %7, align 8, !tbaa !58
  %465 = getelementptr inbounds %struct._Image, ptr %464, i64 0, i32 62, i32 1
  store i64 %463, ptr %465, align 8, !tbaa !92
  %466 = call ptr @GetStringInfoDatum(ptr noundef nonnull %460) #7
  %467 = load ptr, ptr %7, align 8, !tbaa !58
  %468 = getelementptr inbounds %struct._Image, ptr %467, i64 0, i32 62, i32 2
  store ptr %466, ptr %468, align 8, !tbaa !93
  br label %469

469:                                              ; preds = %462, %459
  %470 = load ptr, ptr %7, align 8, !tbaa !58
  %471 = call ptr @GetImageProfile(ptr noundef %470, ptr noundef nonnull @.str.25) #7
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %476

473:                                              ; preds = %469
  %474 = load ptr, ptr %7, align 8, !tbaa !58
  %475 = call ptr @GetImageProfile(ptr noundef %474, ptr noundef nonnull @.str.26) #7
  br label %476

476:                                              ; preds = %473, %469
  %477 = phi ptr [ %475, %473 ], [ %471, %469 ]
  %478 = icmp eq ptr %477, null
  br i1 %478, label %486, label %479

479:                                              ; preds = %476
  %480 = call i64 @GetStringInfoLength(ptr noundef nonnull %477) #7
  %481 = load ptr, ptr %7, align 8, !tbaa !58
  %482 = getelementptr inbounds %struct._Image, ptr %481, i64 0, i32 63, i32 1
  store i64 %480, ptr %482, align 8, !tbaa !94
  %483 = call ptr @GetStringInfoDatum(ptr noundef nonnull %477) #7
  %484 = load ptr, ptr %7, align 8, !tbaa !58
  %485 = getelementptr inbounds %struct._Image, ptr %484, i64 0, i32 63, i32 2
  store ptr %483, ptr %485, align 8, !tbaa !95
  br label %486

486:                                              ; preds = %479, %476
  %487 = load ptr, ptr %7, align 8, !tbaa !58
  %488 = call ptr @GetBlobProperties(ptr noundef %487) #7
  %489 = getelementptr inbounds %struct.stat, ptr %488, i64 0, i32 12
  %490 = load i64, ptr %489, align 8, !tbaa !96
  %491 = call i64 @FormatMagickTime(i64 noundef %490, i64 noundef 4096, ptr noundef nonnull %9) #7
  %492 = load ptr, ptr %7, align 8, !tbaa !58
  %493 = call i32 @SetImageProperty(ptr noundef %492, ptr noundef nonnull @.str.27, ptr noundef nonnull %9) #7
  %494 = load ptr, ptr %7, align 8, !tbaa !58
  %495 = call ptr @GetBlobProperties(ptr noundef %494) #7
  %496 = getelementptr inbounds %struct.stat, ptr %495, i64 0, i32 13
  %497 = load i64, ptr %496, align 8, !tbaa !99
  %498 = call i64 @FormatMagickTime(i64 noundef %497, i64 noundef 4096, ptr noundef nonnull %9) #7
  %499 = load ptr, ptr %7, align 8, !tbaa !58
  %500 = call i32 @SetImageProperty(ptr noundef %499, ptr noundef nonnull @.str.28, ptr noundef nonnull %9) #7
  %501 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.29) #7
  %502 = icmp eq ptr %501, null
  br i1 %502, label %553, label %503

503:                                              ; preds = %486
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7
  %504 = call i32 @ParseGeometry(ptr noundef nonnull %501, ptr noundef nonnull %11) #7
  %505 = and i32 %504, 32768
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %517, label %507

507:                                              ; preds = %503
  %508 = load ptr, ptr %7, align 8, !tbaa !58
  %509 = getelementptr inbounds %struct._Image, ptr %508, i64 0, i32 40
  %510 = load i64, ptr %509, align 8, !tbaa !100
  %511 = load double, ptr %11, align 8, !tbaa !79
  %512 = fadd double %511, 5.000000e-01
  %513 = call double @llvm.floor.f64(double %512)
  %514 = fptoui double %513 to i64
  %515 = icmp ugt i64 %510, %514
  br i1 %515, label %516, label %542

516:                                              ; preds = %507
  store i64 %514, ptr %509, align 8, !tbaa !100
  br label %542

517:                                              ; preds = %503
  %518 = and i32 %504, 16384
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %535, label %520

520:                                              ; preds = %517
  %521 = load ptr, ptr %7, align 8, !tbaa !58
  %522 = getelementptr inbounds %struct._Image, ptr %521, i64 0, i32 40
  %523 = load i64, ptr %522, align 8, !tbaa !100
  %524 = load double, ptr %11, align 8, !tbaa !79
  %525 = fadd double %524, 5.000000e-01
  %526 = call double @llvm.floor.f64(double %525)
  %527 = fptoui double %526 to i64
  %528 = icmp ult i64 %523, %527
  br i1 %528, label %529, label %542

529:                                              ; preds = %520
  %530 = load double, ptr %247, align 8, !tbaa !81
  %531 = fadd double %530, 5.000000e-01
  %532 = call double @llvm.floor.f64(double %531)
  %533 = fptosi double %532 to i64
  %534 = getelementptr inbounds %struct._Image, ptr %521, i64 0, i32 41
  store i64 %533, ptr %534, align 8, !tbaa !101
  br label %542

535:                                              ; preds = %517
  %536 = load double, ptr %11, align 8, !tbaa !79
  %537 = fadd double %536, 5.000000e-01
  %538 = call double @llvm.floor.f64(double %537)
  %539 = fptoui double %538 to i64
  %540 = load ptr, ptr %7, align 8, !tbaa !58
  %541 = getelementptr inbounds %struct._Image, ptr %540, i64 0, i32 40
  store i64 %539, ptr %541, align 8, !tbaa !100
  br label %542

542:                                              ; preds = %535, %529, %520, %507, %516
  %543 = and i32 %504, 8
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %552, label %545

545:                                              ; preds = %542
  %546 = load double, ptr %248, align 8, !tbaa !81
  %547 = fadd double %546, 5.000000e-01
  %548 = call double @llvm.floor.f64(double %547)
  %549 = fptosi double %548 to i64
  %550 = load ptr, ptr %7, align 8, !tbaa !58
  %551 = getelementptr inbounds %struct._Image, ptr %550, i64 0, i32 41
  store i64 %549, ptr %551, align 8, !tbaa !101
  br label %552

552:                                              ; preds = %545, %542
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7
  br label %553

553:                                              ; preds = %552, %486
  %554 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.30) #7
  %555 = icmp eq ptr %554, null
  br i1 %555, label %561, label %556

556:                                              ; preds = %553
  %557 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %554) #7
  %558 = trunc i64 %557 to i32
  %559 = load ptr, ptr %7, align 8, !tbaa !58
  %560 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 37
  store i32 %558, ptr %560, align 4, !tbaa !102
  br label %561

561:                                              ; preds = %556, %553
  %562 = load i32, ptr %249, align 4, !tbaa !57
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %568, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr %7, align 8, !tbaa !58
  %566 = load ptr, ptr @stderr, align 8, !tbaa !58
  %567 = call i32 @IdentifyImage(ptr noundef %565, ptr noundef %566, i32 noundef 0) #7
  br label %568

568:                                              ; preds = %564, %561
  %569 = load ptr, ptr %7, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #7
  %570 = call ptr @GetNextImageInList(ptr noundef %569) #7
  store ptr %570, ptr %7, align 8, !tbaa !58
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %250, !llvm.loop !103

572:                                              ; preds = %568, %238
  %573 = phi ptr [ %228, %238 ], [ %569, %568 ]
  %574 = call ptr @DestroyImageInfo(ptr noundef %79) #7
  %575 = call ptr @GetFirstImageInList(ptr noundef %573) #7
  br label %576

576:                                              ; preds = %74, %572, %195, %164, %126, %121, %28
  %577 = phi ptr [ null, %28 ], [ null, %195 ], [ %575, %572 ], [ null, %121 ], [ null, %126 ], [ null, %164 ], [ null, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #7
  ret ptr %577
}

declare i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickRawSupport(ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickSeekableStream(ptr noundef) local_unnamed_addr #2

declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #2

declare i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageDecoder(ptr noundef) local_unnamed_addr #2

declare ptr @GetDelegateInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetMagickThreadSupport(ptr noundef) local_unnamed_addr #2

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare i32 @GetDelegateThreadSupport(ptr noundef) local_unnamed_addr #2

declare i32 @InvokeDelegate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare i32 @IsBlobTemporary(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CloneImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

declare i32 @GetBlobError(ptr noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ReplaceImageInList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare i64 @FormatMagickTime(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetBlobProperties(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !59
  %15 = trunc i64 %14 to i32
  %16 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %12, i32 noundef %15, ptr noundef nonnull %3) #7
  %17 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull %12) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = call ptr @CloneImageInfo(ptr noundef %0) #7
  %21 = call ptr @AcquireExceptionInfo() #7
  %22 = call i32 @SetImageInfo(ptr noundef %20, i32 noundef 0, ptr noundef %21) #7
  %23 = call ptr @DestroyExceptionInfo(ptr noundef %21) #7
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !60
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call ptr @DestroyImageInfo(ptr noundef %20) #7
  %29 = call ptr @ReadImage(ptr noundef %0, ptr noundef %1)
  br label %54

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 51
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %31, i64 noundef 4096) #7
  %33 = call ptr @NewImageList() #7
  store ptr %33, ptr %4, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 10
  %35 = load i64, ptr %34, align 8, !tbaa !59
  %36 = load i64, ptr %24, align 8, !tbaa !60
  %37 = add i64 %36, %35
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %46
  %40 = phi i64 [ %47, %46 ], [ %35, %30 ]
  %41 = trunc i64 %40 to i32
  %42 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i32 noundef %41, ptr noundef nonnull %31) #7
  %43 = call ptr @ReadImage(ptr noundef %20, ptr noundef %1)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %39, %45
  %47 = add i64 %40, 1
  %48 = icmp eq i64 %47, %37
  br i1 %48, label %49, label %39, !llvm.loop !104

49:                                               ; preds = %46, %30
  %50 = call ptr @DestroyImageInfo(ptr noundef %20) #7
  %51 = load ptr, ptr %4, align 8, !tbaa !58
  br label %54

52:                                               ; preds = %11
  %53 = call ptr @ReadImage(ptr noundef %0, ptr noundef %1)
  br label %54

54:                                               ; preds = %27, %49, %52
  %55 = phi ptr [ %53, %52 ], [ %29, %27 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #7
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadInlineImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = tail call ptr @NewImageList() #7
  br label %6

6:                                                ; preds = %9, %3
  %7 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !66
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 44, label %18
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !105

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 910, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #7
  %14 = icmp eq ptr %5, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @CloseBlob(ptr noundef nonnull %5) #7
  %17 = tail call ptr @DestroyImageList(ptr noundef nonnull %5) #7
  br label %39

18:                                               ; preds = %6
  %19 = getelementptr inbounds i8, ptr %7, i64 1
  store i64 0, ptr %4, align 8, !tbaa !106
  %20 = call ptr @Base64Decode(ptr noundef nonnull %19, ptr noundef nonnull %4) #7
  %21 = load i64, ptr %4, align 8, !tbaa !106
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %25 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 915, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #7
  %26 = icmp eq ptr %5, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = call i32 @CloseBlob(ptr noundef nonnull %5) #7
  %29 = call ptr @DestroyImageList(ptr noundef nonnull %5) #7
  br label %39

30:                                               ; preds = %18
  %31 = call ptr @CloneImageInfo(ptr noundef %0) #7
  %32 = call ptr @SetImageInfoProgressMonitor(ptr noundef %31, ptr noundef null, ptr noundef null) #7
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %31, i64 0, i32 51
  store i8 0, ptr %33, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %31, i64 0, i32 48
  store i8 0, ptr %34, align 8, !tbaa !66
  %35 = load i64, ptr %4, align 8, !tbaa !106
  %36 = call ptr @BlobToImage(ptr noundef %31, ptr noundef %20, i64 noundef %35, ptr noundef %2) #7
  %37 = call ptr @RelinquishMagickMemory(ptr noundef %20) #7
  %38 = call ptr @DestroyImageInfo(ptr noundef %31) #7
  br label %39

39:                                               ; preds = %23, %27, %11, %15, %30
  %40 = phi ptr [ %36, %30 ], [ null, %15 ], [ null, %11 ], [ null, %27 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %40
}

declare ptr @Base64Decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetImageInfoProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call ptr @AcquireExceptionInfo() #7
  %14 = tail call ptr @CloneImageInfo(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 51
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %17 = tail call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef 4096) #7
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 48
  %19 = load i8, ptr %18, align 8, !tbaa !66
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %22, i64 noundef 4096) #7
  br label %24

24:                                               ; preds = %21, %12
  %25 = tail call i32 @SetImageInfo(ptr noundef %14, i32 noundef 1, ptr noundef %13) #7
  %26 = tail call i32 @LocaleCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.32) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 410, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #7
  %35 = tail call ptr @DestroyImageInfo(ptr noundef %14) #7
  br label %267

36:                                               ; preds = %28
  %37 = tail call i32 @SetImageInfo(ptr noundef %14, i32 noundef 1, ptr noundef %13) #7
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi ptr [ %30, %36 ], [ %1, %24 ]
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 53
  %41 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %40, i64 noundef 4096) #7
  %42 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %15, i64 noundef 4096) #7
  %43 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %18) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = call ptr @DestroyExceptionInfo(ptr noundef %13) #7
  %47 = call ptr @DestroyImageInfo(ptr noundef %14) #7
  %48 = tail call ptr @__errno_location() #8
  store i32 1, ptr %48, align 4, !tbaa !64
  %49 = icmp eq ptr %39, null
  br i1 %49, label %267, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %52 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #7
  br label %267

53:                                               ; preds = %38
  %54 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef %13) #7
  %55 = call ptr @DestroyExceptionInfo(ptr noundef %13) #7
  %56 = icmp eq ptr %54, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %54) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %62 = load i32, ptr %61, align 4, !tbaa !65
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = call i32 @GetMagickRawSupport(ptr noundef nonnull %54) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ 0, %57 ], [ 1, %64 ]
  %69 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 34
  store i32 %68, ptr %69, align 8, !tbaa !109
  br label %70

70:                                               ; preds = %67, %64, %60, %53
  %71 = call i32 @SyncImageProfiles(ptr noundef %39) #7
  %72 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.34) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %107, label %74

74:                                               ; preds = %70
  %75 = call i32 @IsMagickTrue(ptr noundef nonnull %72) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %107, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !110
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %77
  %82 = call ptr @GetPreviousImageInList(ptr noundef %39) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = call ptr @GetNextImageInList(ptr noundef %39) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = call i32 @IsTaintImage(ptr noundef %39) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %92 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %93 = call ptr @GetDelegateInfo(ptr noundef nonnull %91, ptr noundef nonnull %18, ptr noundef nonnull %92) #7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = call i64 @GetDelegateMode(ptr noundef nonnull %93) #7
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 54
  %100 = call i32 @IsPathAccessible(ptr noundef nonnull %99) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %99, i64 noundef 4096) #7
  %104 = call i32 @InvokeDelegate(ptr noundef %14, ptr noundef %39, ptr noundef nonnull %91, ptr noundef nonnull %18, ptr noundef nonnull %92) #7
  %105 = call ptr @DestroyImageInfo(ptr noundef %14) #7
  %106 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #7
  br label %267

107:                                              ; preds = %90, %95, %98, %87, %84, %81, %77, %74, %70
  br i1 %56, label %129, label %108

108:                                              ; preds = %107
  %109 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %54) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #7
  %112 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %40, i64 noundef 4096) #7
  %113 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %114 = call i32 @OpenBlob(ptr noundef %0, ptr noundef %39, i32 noundef 4, ptr noundef nonnull %113) #7
  %115 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %4, i64 noundef 4096) #7
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = call i32 @IsBlobSeekable(ptr noundef %39) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 3
  store i32 1, ptr %121, align 4, !tbaa !111
  %122 = call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %40, i64 noundef 4096) #7
  %123 = call i32 @AcquireUniqueFilename(ptr noundef nonnull %40) #7
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i32 [ 1, %120 ], [ 0, %117 ]
  %126 = call i32 @CloseBlob(ptr noundef %39) #7
  br label %127

127:                                              ; preds = %124, %111
  %128 = phi i32 [ %125, %124 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #7
  br label %129

129:                                              ; preds = %127, %108, %107
  %130 = phi i32 [ %114, %127 ], [ 0, %108 ], [ 0, %107 ]
  %131 = phi i32 [ %128, %127 ], [ 0, %108 ], [ 0, %107 ]
  br i1 %56, label %148, label %132

132:                                              ; preds = %129
  %133 = call ptr @GetImageEncoder(ptr noundef nonnull %54) #7
  %134 = icmp eq ptr %133, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %132
  %136 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %54) #7
  %137 = and i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct._MagickInfo, ptr %54, i64 0, i32 22
  %141 = load ptr, ptr %140, align 8, !tbaa !68
  call void @LockSemaphoreInfo(ptr noundef %141) #7
  br label %142

142:                                              ; preds = %139, %135
  %143 = call ptr @GetImageEncoder(ptr noundef nonnull %54) #7
  %144 = call i32 %143(ptr noundef %14, ptr noundef %39) #7
  br i1 %138, label %145, label %229

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct._MagickInfo, ptr %54, i64 0, i32 22
  %147 = load ptr, ptr %146, align 8, !tbaa !68
  call void @UnlockSemaphoreInfo(ptr noundef %147) #7
  br label %229

148:                                              ; preds = %132, %129
  %149 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %150 = call ptr @GetDelegateInfo(ptr noundef null, ptr noundef nonnull %18, ptr noundef nonnull %149) #7
  %151 = icmp eq ptr %150, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %148
  store i8 0, ptr %15, align 8, !tbaa !66
  %153 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %150) #7
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct._DelegateInfo, ptr %150, i64 0, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !70
  call void @LockSemaphoreInfo(ptr noundef %157) #7
  br label %158

158:                                              ; preds = %155, %152
  %159 = call i32 @InvokeDelegate(ptr noundef %14, ptr noundef %39, ptr noundef null, ptr noundef nonnull %18, ptr noundef nonnull %149) #7
  %160 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %150) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct._DelegateInfo, ptr %150, i64 0, i32 11
  %164 = load ptr, ptr %163, align 8, !tbaa !70
  call void @UnlockSemaphoreInfo(ptr noundef %164) #7
  br label %165

165:                                              ; preds = %162, %158
  %166 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #7
  br label %229

167:                                              ; preds = %148
  %168 = call ptr @AcquireExceptionInfo() #7
  %169 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef %168) #7
  %170 = call ptr @DestroyExceptionInfo(ptr noundef %168) #7
  %171 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !112
  %173 = icmp eq i32 %172, 0
  %174 = icmp eq ptr %169, null
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %178 = call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %177, i64 noundef 4096) #7
  %179 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef nonnull %149) #7
  br label %180

180:                                              ; preds = %176, %167
  %181 = phi ptr [ %179, %176 ], [ %169, %167 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = call ptr @GetImageEncoder(ptr noundef nonnull %181) #7
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183, %180
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  call void @GetPathComponent(ptr noundef nonnull %40, i32 noundef 6, ptr noundef nonnull %5) #7
  %187 = load i8, ptr %5, align 16, !tbaa !66
  %188 = icmp eq i8 %187, 0
  %189 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %190 = select i1 %188, ptr %189, ptr %5
  %191 = call ptr @GetMagickInfo(ptr noundef nonnull %190, ptr noundef nonnull %149) #7
  %192 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  br label %193

193:                                              ; preds = %186, %183
  %194 = phi ptr [ %191, %186 ], [ %181, %183 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call ptr @GetImageEncoder(ptr noundef nonnull %194) #7
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %196, %193
  %200 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %201 = call ptr @GetMagickInfo(ptr noundef nonnull %200, ptr noundef nonnull %149) #7
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = call ptr @GetImageEncoder(ptr noundef nonnull %201) #7
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203, %199
  %207 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %149, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, i32 noundef 420, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #7
  br label %210

208:                                              ; preds = %203
  %209 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %149, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1168, i32 noundef 320, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #7
  br label %210

210:                                              ; preds = %206, %208, %196
  %211 = phi ptr [ %201, %206 ], [ %201, %208 ], [ %194, %196 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %229, label %213

213:                                              ; preds = %210
  %214 = call ptr @GetImageEncoder(ptr noundef nonnull %211) #7
  %215 = icmp eq ptr %214, null
  br i1 %215, label %229, label %216

216:                                              ; preds = %213
  %217 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %211) #7
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct._MagickInfo, ptr %211, i64 0, i32 22
  %222 = load ptr, ptr %221, align 8, !tbaa !68
  call void @LockSemaphoreInfo(ptr noundef %222) #7
  br label %223

223:                                              ; preds = %220, %216
  %224 = call ptr @GetImageEncoder(ptr noundef nonnull %211) #7
  %225 = call i32 %224(ptr noundef %14, ptr noundef %39) #7
  br i1 %219, label %226, label %229

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct._MagickInfo, ptr %211, i64 0, i32 22
  %228 = load ptr, ptr %227, align 8, !tbaa !68
  call void @UnlockSemaphoreInfo(ptr noundef %228) #7
  br label %229

229:                                              ; preds = %165, %223, %226, %213, %210, %142, %145
  %230 = phi i32 [ %144, %145 ], [ %144, %142 ], [ %159, %165 ], [ %225, %226 ], [ %225, %223 ], [ %130, %213 ], [ %130, %210 ]
  %231 = call i32 @GetBlobError(ptr noundef %39) #7
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %229
  %234 = tail call ptr @__errno_location() #8
  %235 = load i32, ptr %234, align 4, !tbaa !64
  %236 = call ptr @GetExceptionMessage(i32 noundef %235) #7
  %237 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %238 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %237, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1189, i32 noundef 430, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, ptr noundef nonnull %40, ptr noundef %236) #7
  %239 = call ptr @DestroyString(ptr noundef %236) #7
  br label %240

240:                                              ; preds = %233, %229
  %241 = icmp eq i32 %131, 0
  br i1 %241, label %254, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %244 = call i32 @OpenBlob(ptr noundef %14, ptr noundef %39, i32 noundef 2, ptr noundef nonnull %243) #7
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %15) #7
  %248 = call i32 @ImageToFile(ptr noundef %39, ptr noundef nonnull %15, ptr noundef nonnull %243) #7
  br label %249

249:                                              ; preds = %246, %242
  %250 = phi i32 [ %248, %246 ], [ 0, %242 ]
  %251 = call i32 @CloseBlob(ptr noundef %39) #7
  %252 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %40) #7
  %253 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %15, i64 noundef 4096) #7
  br label %254

254:                                              ; preds = %249, %240
  %255 = phi i32 [ %250, %249 ], [ %230, %240 ]
  %256 = call i32 @LocaleCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.37) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 35
  %260 = load i32, ptr %259, align 4, !tbaa !57
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr @stderr, align 8, !tbaa !58
  %264 = call i32 @IdentifyImage(ptr noundef %39, ptr noundef %263, i32 noundef 0) #7
  br label %265

265:                                              ; preds = %262, %258, %254
  %266 = call ptr @DestroyImageInfo(ptr noundef %14) #7
  br label %267

267:                                              ; preds = %45, %50, %265, %102, %32
  %268 = phi i32 [ 0, %32 ], [ %104, %102 ], [ %255, %265 ], [ 0, %50 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #7
  ret i32 %268
}

declare i32 @SyncImageProfiles(ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

declare i32 @IsTaintImage(ptr noundef) local_unnamed_addr #2

declare i64 @GetDelegateMode(ptr noundef) local_unnamed_addr #2

declare i32 @AcquireUniqueFilename(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageEncoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteImages(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1286, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  br label %12

12:                                               ; preds = %9, %4
  %13 = tail call ptr @CloneImageInfo(ptr noundef %0) #7
  %14 = tail call ptr @GetFirstImageInList(ptr noundef %1) #7
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = tail call ptr @CloneBlobInfo(ptr noundef %16) #7
  tail call void @DestroyBlob(ptr noundef %14) #7
  store ptr %17, ptr %15, align 8, !tbaa !113
  %18 = icmp eq ptr %2, null
  %19 = icmp eq ptr %14, null
  %20 = or i1 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %25, %21 ], [ %14, %12 ]
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 53
  %24 = tail call i64 @CopyMagickString(ptr noundef nonnull %23, ptr noundef nonnull %2, i64 noundef 4096) #7
  %25 = tail call ptr @GetNextImageInList(ptr noundef nonnull %22) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21, !llvm.loop !114

27:                                               ; preds = %21, %12
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 51
  %29 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 53
  %30 = tail call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %29, i64 noundef 4096) #7
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 48
  %32 = load i8, ptr %31, align 8, !tbaa !66
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 55
  %36 = tail call i64 @CopyMagickString(ptr noundef nonnull %31, ptr noundef nonnull %35, i64 noundef 4096) #7
  br label %37

37:                                               ; preds = %34, %27
  %38 = tail call ptr @AcquireExceptionInfo() #7
  %39 = tail call i64 @GetImageListLength(ptr noundef %14) #7
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @SetImageInfo(ptr noundef %13, i32 noundef %40, ptr noundef %38) #7
  %42 = tail call ptr @DestroyExceptionInfo(ptr noundef %38) #7
  %43 = tail call ptr @GetNextImageInList(ptr noundef %14) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %37, %65
  %46 = phi ptr [ %66, %65 ], [ %14, %37 ]
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 39
  %48 = load i64, ptr %47, align 8, !tbaa !115
  %49 = tail call ptr @GetNextImageInList(ptr noundef %46) #7
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 39
  %51 = load i64, ptr %50, align 8, !tbaa !115
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  %54 = icmp eq ptr %14, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 39
  %57 = load i64, ptr %56, align 8, !tbaa !115
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %61, %58 ], [ %57, %55 ]
  %60 = phi ptr [ %63, %58 ], [ %14, %55 ]
  %61 = add nsw i64 %59, 1
  %62 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 39
  store i64 %59, ptr %62, align 8, !tbaa !115
  %63 = tail call ptr @GetNextImageInList(ptr noundef nonnull %60) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %58, !llvm.loop !116

65:                                               ; preds = %45
  %66 = tail call ptr @GetNextImageInList(ptr noundef %46) #7
  %67 = tail call ptr @GetNextImageInList(ptr noundef %66) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %45, !llvm.loop !117

69:                                               ; preds = %65, %58, %37, %53
  %70 = tail call i64 @GetImageListLength(ptr noundef %14) #7
  %71 = icmp eq ptr %14, null
  br i1 %71, label %118, label %72

72:                                               ; preds = %69
  %73 = icmp eq i64 %70, 1
  %74 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 3
  br label %75

75:                                               ; preds = %72, %111
  %76 = phi ptr [ %14, %72 ], [ %113, %111 ]
  %77 = phi i32 [ 1, %72 ], [ %87, %111 ]
  %78 = phi ptr [ null, %72 ], [ %85, %111 ]
  %79 = phi i64 [ 0, %72 ], [ %112, %111 ]
  br i1 %73, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 48
  %82 = load ptr, ptr %81, align 8, !tbaa !118
  %83 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %76, ptr noundef null, ptr noundef %82) #7
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi ptr [ %83, %80 ], [ %78, %75 ]
  %86 = call i32 @WriteImage(ptr noundef %13, ptr noundef nonnull %76)
  %87 = and i32 %86, %77
  call void @GetImageException(ptr noundef nonnull %76, ptr noundef %3) #7
  br i1 %73, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 48
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %76, ptr noundef %85, ptr noundef %90) #7
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %74, align 4, !tbaa !111
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  br i1 %73, label %111, label %96

96:                                               ; preds = %95
  %97 = add nsw i64 %79, 1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  %98 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 47
  %99 = load ptr, ptr %98, align 8, !tbaa !119
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 53
  %103 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef nonnull %102) #7
  %104 = load ptr, ptr %98, align 8, !tbaa !119
  %105 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 48
  %106 = load ptr, ptr %105, align 8, !tbaa !118
  %107 = call i32 %104(ptr noundef nonnull %5, i64 noundef %79, i64 noundef %70, ptr noundef %106) #7
  br label %108

108:                                              ; preds = %96, %101
  %109 = phi i32 [ %107, %101 ], [ 1, %96 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %95, %108
  %112 = phi i64 [ %97, %108 ], [ %79, %95 ]
  %113 = call ptr @GetNextImageInList(ptr noundef nonnull %76) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %75, !llvm.loop !120

115:                                              ; preds = %108, %92, %111
  %116 = icmp ne i32 %87, 0
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %115, %69
  %119 = phi i32 [ 1, %69 ], [ %117, %115 ]
  %120 = call ptr @DestroyImageInfo(ptr noundef %13) #7
  ret i32 %119
}

declare ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetImageException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !39, i64 40}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !39, i64 48}
!54 = !{!55, !36, i64 16712}
!55 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!56 = !{!55, !36, i64 224}
!57 = !{!55, !36, i64 228}
!58 = !{!40, !40, i64 0}
!59 = !{!55, !39, i64 56}
!60 = !{!55, !39, i64 64}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!36, !36, i64 0}
!65 = !{!55, !36, i64 84}
!66 = !{!37, !37, i64 0}
!67 = !{!55, !36, i64 8}
!68 = !{!69, !40, i64 144}
!69 = !{!"_MagickInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !40, i64 112, !40, i64 120, !39, i64 128, !40, i64 136, !40, i64 144}
!70 = !{!71, !40, i64 80}
!71 = !{!"_DelegateInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !40, i64 56, !40, i64 64, !39, i64 72, !40, i64 80}
!72 = !{!50, !36, i64 0}
!73 = !{!55, !40, i64 48}
!74 = !{!35, !36, i64 28}
!75 = !{!35, !39, i64 12904}
!76 = !{!35, !39, i64 12912}
!77 = !{!35, !36, i64 24}
!78 = !{!35, !43, i64 264}
!79 = !{!80, !43, i64 0}
!80 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!81 = !{!80, !43, i64 8}
!82 = !{!35, !43, i64 272}
!83 = !{!35, !36, i64 224}
!84 = !{!35, !39, i64 280}
!85 = !{!35, !39, i64 288}
!86 = !{!55, !40, i64 32}
!87 = !{!55, !40, i64 296}
!88 = !{!46, !39, i64 0}
!89 = !{!46, !39, i64 8}
!90 = !{!35, !36, i64 400}
!91 = !{!35, !43, i64 384}
!92 = !{!35, !39, i64 13008}
!93 = !{!35, !40, i64 13016}
!94 = !{!35, !39, i64 13040}
!95 = !{!35, !40, i64 13048}
!96 = !{!97, !39, i64 88}
!97 = !{!"stat", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !98, i64 72, !98, i64 88, !98, i64 104, !37, i64 120}
!98 = !{!"timespec", !39, i64 0, !39, i64 8}
!99 = !{!97, !39, i64 104}
!100 = !{!35, !39, i64 440}
!101 = !{!35, !39, i64 448}
!102 = !{!35, !36, i64 420}
!103 = distinct !{!103, !62, !63}
!104 = distinct !{!104, !62, !63}
!105 = distinct !{!105, !62, !63}
!106 = !{!39, !39, i64 0}
!107 = !{!35, !36, i64 12976}
!108 = !{!35, !40, i64 424}
!109 = !{!35, !36, i64 408}
!110 = !{!55, !40, i64 40}
!111 = !{!55, !36, i64 12}
!112 = !{!55, !36, i64 16}
!113 = !{!35, !40, i64 608}
!114 = distinct !{!114, !62, !63}
!115 = !{!35, !39, i64 432}
!116 = distinct !{!116, !62, !63}
!117 = distinct !{!117, !62, !63}
!118 = !{!35, !40, i64 576}
!119 = !{!35, !40, i64 568}
!120 = distinct !{!120, !62, !63}
