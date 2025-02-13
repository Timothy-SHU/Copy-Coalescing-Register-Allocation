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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConstituteImage(i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 142, ptr noundef nonnull @.str.2, ptr noundef %2) #8
  %8 = tail call ptr @AcquireImage(ptr noundef null) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %0, 0
  %12 = icmp eq i64 %1, 0
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #8
  br label %26

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 7
  store i64 %0, ptr %18, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 8
  store i64 %1, ptr %19, align 8, !tbaa !25
  %20 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %8) #8
  %21 = tail call i32 @ImportImagePixels(ptr noundef nonnull %8, i64 noundef 0, i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %24) #8
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %8) #8
  br label %26

26:                                               ; preds = %17, %23, %6, %14
  %27 = phi ptr [ null, %14 ], [ null, %6 ], [ %25, %23 ], [ %8, %17 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ImportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PingImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 221, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #8
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 34
  store i32 1, ptr %11, align 8, !tbaa !28
  %12 = tail call ptr @ReadStream(ptr noundef %10, ptr noundef nonnull @PingStream, ptr noundef %1) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 46
  tail call void @ResetTimer(ptr noundef nonnull %15) #8
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 35
  %17 = load i32, ptr %16, align 4, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @stdout, align 8, !tbaa !30
  %21 = tail call i32 @IdentifyImage(ptr noundef nonnull %12, ptr noundef %20, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %14, %19, %9
  %23 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %10) #8
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @PingStream(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 noundef returned %2) #3 {
  ret i64 %2
}

; Function Attrs: optsize
declare void @ResetTimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PingImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 280, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !31
  %15 = trunc i64 %14 to i32
  %16 = call i64 @InterpretImageFilename(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %12, i32 noundef %15, ptr noundef nonnull %3) #8
  %17 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull %12) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = call ptr @CloneImageInfo(ptr noundef nonnull %0) #8
  %21 = call ptr @AcquireExceptionInfo() #8
  %22 = call i32 @SetImageInfo(ptr noundef %20, i32 noundef 0, ptr noundef %21) #8
  %23 = call ptr @DestroyExceptionInfo(ptr noundef %21) #8
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !32
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call ptr @DestroyImageInfo(ptr noundef nonnull %20) #8
  %29 = call ptr @PingImage(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %54

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 51
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %31, i64 noundef 4096) #8
  %33 = call ptr @NewImageList() #8
  store ptr %33, ptr %4, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 10
  %35 = load i64, ptr %34, align 8, !tbaa !31
  %36 = load i64, ptr %24, align 8, !tbaa !32
  %37 = add i64 %36, %35
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %46
  %40 = phi i64 [ %47, %46 ], [ %35, %30 ]
  %41 = trunc i64 %40 to i32
  %42 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i32 noundef %41, ptr noundef nonnull %31) #8
  %43 = call ptr @PingImage(ptr noundef %20, ptr noundef %1) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %43) #8
  br label %46

46:                                               ; preds = %39, %45
  %47 = add i64 %40, 1
  %48 = icmp eq i64 %47, %37
  br i1 %48, label %49, label %39, !llvm.loop !33

49:                                               ; preds = %46, %30
  %50 = call ptr @DestroyImageInfo(ptr noundef %20) #8
  %51 = load ptr, ptr %4, align 8, !tbaa !30
  br label %54

52:                                               ; preds = %11
  %53 = call ptr @PingImage(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %54

54:                                               ; preds = %27, %49, %52
  %55 = phi ptr [ %53, %52 ], [ %29, %27 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret ptr %55
}

; Function Attrs: optsize
declare i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 399, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #8
  br label %18

18:                                               ; preds = %15, %2
  %19 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #8
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 51
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %20, i64 noundef 4096) #8
  %22 = call i32 @SetImageInfo(ptr noundef %19, i32 noundef 0, ptr noundef %1) #8
  %23 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %20, i64 noundef 4096) #8
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 48
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %24, i64 noundef 4096) #8
  %26 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 1, ptr noundef nonnull %24) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = tail call ptr @__errno_location() #11
  store i32 1, ptr %29, align 4, !tbaa !35
  %30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 412, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #8
  %31 = call ptr @DestroyImageInfo(ptr noundef %19) #8
  br label %565

32:                                               ; preds = %18
  %33 = call ptr @AcquireExceptionInfo() #8
  %34 = call ptr @GetMagickInfo(ptr noundef nonnull %24, ptr noundef %33) #8
  %35 = call ptr @DestroyExceptionInfo(ptr noundef %33) #8
  %36 = icmp eq ptr %34, null
  br i1 %36, label %77, label %37

37:                                               ; preds = %32
  %38 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %34) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %42 = load i32, ptr %41, align 4, !tbaa !36
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @GetMagickRawSupport(ptr noundef nonnull %34) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ 0, %37 ], [ 1, %44 ]
  %49 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 14
  store i32 %48, ptr %49, align 4, !tbaa !36
  br label %50

50:                                               ; preds = %47, %40, %44
  %51 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %34) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %50
  %54 = call ptr @AcquireImage(ptr noundef %19) #8
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 53
  %56 = call i64 @CopyMagickString(ptr noundef nonnull %55, ptr noundef nonnull %20, i64 noundef 4096) #8
  %57 = call i32 @OpenBlob(ptr noundef nonnull %0, ptr noundef %54, i32 noundef 2, ptr noundef %1) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call ptr @DestroyImageInfo(ptr noundef %19) #8
  %61 = call ptr @DestroyImage(ptr noundef %54) #8
  br label %565

62:                                               ; preds = %53
  %63 = call i32 @IsBlobSeekable(ptr noundef %54) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  store i8 0, ptr %20, align 8, !tbaa !37
  %66 = call i32 @ImageToFile(ptr noundef %54, ptr noundef nonnull %20, ptr noundef %1) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i32 @CloseBlob(ptr noundef %54) #8
  %70 = call ptr @DestroyImageInfo(ptr noundef nonnull %19) #8
  %71 = call ptr @DestroyImage(ptr noundef %54) #8
  br label %565

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 2
  store i32 1, ptr %73, align 8, !tbaa !38
  br label %74

74:                                               ; preds = %62, %72
  %75 = call i32 @CloseBlob(ptr noundef %54) #8
  %76 = call ptr @DestroyImage(ptr noundef %54) #8
  br label %79

77:                                               ; preds = %32
  %78 = call ptr @NewImageList() #8
  br label %83

79:                                               ; preds = %74, %50
  %80 = call ptr @NewImageList() #8
  %81 = call ptr @GetImageDecoder(ptr noundef nonnull %34) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %77, %79
  %84 = call ptr @GetDelegateInfo(ptr noundef nonnull %24, ptr noundef null, ptr noundef %1) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 @SetImageInfo(ptr noundef %19, i32 noundef 0, ptr noundef %1) #8
  %88 = call i64 @CopyMagickString(ptr noundef nonnull %20, ptr noundef nonnull %3, i64 noundef 4096) #8
  %89 = call ptr @GetMagickInfo(ptr noundef nonnull %24, ptr noundef %1) #8
  br label %90

90:                                               ; preds = %83, %86
  %91 = phi ptr [ %89, %86 ], [ %34, %83 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %107, label %93

93:                                               ; preds = %79, %90
  %94 = phi ptr [ %91, %90 ], [ %34, %79 ]
  %95 = call ptr @GetImageDecoder(ptr noundef nonnull %94) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %94) #8
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._MagickInfo, ptr %94, i64 0, i32 22
  %103 = load ptr, ptr %102, align 8, !tbaa !39
  call void @LockSemaphoreInfo(ptr noundef %103) #8
  br label %104

104:                                              ; preds = %101, %97
  %105 = call ptr @GetImageDecoder(ptr noundef nonnull %94) #8
  %106 = call ptr %105(ptr noundef %19, ptr noundef %1) #8
  br i1 %100, label %171, label %176

107:                                              ; preds = %93, %90
  %108 = call ptr @GetDelegateInfo(ptr noundef nonnull %24, ptr noundef null, ptr noundef %1) #8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 501, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #8
  %112 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !38
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %20) #8
  br label %117

117:                                              ; preds = %115, %110
  %118 = call ptr @DestroyImageInfo(ptr noundef nonnull %19) #8
  br label %565

119:                                              ; preds = %107
  %120 = call ptr @AcquireImage(ptr noundef %19) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call ptr @DestroyImageInfo(ptr noundef %19) #8
  br label %565

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 53
  %126 = call i64 @CopyMagickString(ptr noundef nonnull %125, ptr noundef nonnull %20, i64 noundef 4096) #8
  store i8 0, ptr %20, align 8, !tbaa !37
  %127 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %108) #8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._DelegateInfo, ptr %108, i64 0, i32 11
  %131 = load ptr, ptr %130, align 8, !tbaa !41
  call void @LockSemaphoreInfo(ptr noundef %131) #8
  br label %132

132:                                              ; preds = %129, %124
  %133 = call i32 @InvokeDelegate(ptr noundef nonnull %19, ptr noundef nonnull %120, ptr noundef nonnull %24, ptr noundef null, ptr noundef %1) #8
  %134 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %108) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._DelegateInfo, ptr %108, i64 0, i32 11
  %138 = load ptr, ptr %137, align 8, !tbaa !41
  call void @UnlockSemaphoreInfo(ptr noundef %138) #8
  br label %139

139:                                              ; preds = %136, %132
  %140 = call ptr @DestroyImageList(ptr noundef nonnull %120) #8
  %141 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 2
  store i32 1, ptr %141, align 8, !tbaa !38
  %142 = call i32 @SetImageInfo(ptr noundef nonnull %19, i32 noundef 0, ptr noundef %1) #8
  %143 = call ptr @GetMagickInfo(ptr noundef nonnull %24, ptr noundef %1) #8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = call ptr @GetImageDecoder(ptr noundef nonnull %143) #8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %145, %139
  %149 = call i32 @IsPathAccessible(ptr noundef nonnull %20) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 535, i32 noundef 420, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #8
  br label %159

153:                                              ; preds = %148
  %154 = tail call ptr @__errno_location() #11
  %155 = load i32, ptr %154, align 4, !tbaa !35
  %156 = call ptr @GetExceptionMessage(i32 noundef %155) #8
  %157 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 540, i32 noundef 430, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %20, ptr noundef %156) #8
  %158 = call ptr @DestroyString(ptr noundef %156) #8
  br label %159

159:                                              ; preds = %153, %151
  %160 = call ptr @DestroyImageInfo(ptr noundef nonnull %19) #8
  br label %565

161:                                              ; preds = %145
  %162 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %143) #8
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct._MagickInfo, ptr %143, i64 0, i32 22
  %167 = load ptr, ptr %166, align 8, !tbaa !39
  call void @LockSemaphoreInfo(ptr noundef %167) #8
  br label %168

168:                                              ; preds = %165, %161
  %169 = call ptr @GetImageDecoder(ptr noundef nonnull %143) #8
  %170 = call ptr %169(ptr noundef nonnull %19, ptr noundef %1) #8
  br i1 %164, label %171, label %176

171:                                              ; preds = %168, %104
  %172 = phi ptr [ %94, %104 ], [ %143, %168 ]
  %173 = phi ptr [ %106, %104 ], [ %170, %168 ]
  %174 = getelementptr inbounds %struct._MagickInfo, ptr %172, i64 0, i32 22
  %175 = load ptr, ptr %174, align 8, !tbaa !39
  call void @UnlockSemaphoreInfo(ptr noundef %175) #8
  br label %176

176:                                              ; preds = %171, %168, %104
  %177 = phi ptr [ %106, %104 ], [ %170, %168 ], [ %173, %171 ]
  %178 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !38
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %20) #8
  store i32 0, ptr %178, align 8, !tbaa !38
  %183 = icmp eq ptr %177, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct._Image, ptr %177, i64 0, i32 53
  %186 = call i64 @CopyMagickString(ptr noundef nonnull %185, ptr noundef nonnull %3, i64 noundef 4096) #8
  br label %191

187:                                              ; preds = %176
  %188 = icmp eq ptr %177, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %181, %187
  %190 = call ptr @DestroyImageInfo(ptr noundef nonnull %19) #8
  br label %565

191:                                              ; preds = %184, %187
  %192 = load i32, ptr %1, align 8, !tbaa !43
  %193 = icmp ugt i32 %192, 399
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct._Image, ptr %177, i64 0, i32 55
  %196 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 564, ptr noundef nonnull @.str.9, ptr noundef nonnull %195, i32 noundef %192) #8
  br label %197

197:                                              ; preds = %194, %191
  %198 = call i32 @IsBlobTemporary(ptr noundef nonnull %177) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %20) #8
  br label %202

202:                                              ; preds = %200, %197
  %203 = call ptr @GetNextImageInList(ptr noundef nonnull %177) #8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %219, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !44
  %208 = call i32 @IsSceneGeometry(ptr noundef %207, i32 noundef 0) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %206, align 8, !tbaa !44
  %212 = call ptr @CloneImages(ptr noundef nonnull %177, ptr noundef %211, ptr noundef nonnull %1) #8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 577, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #8
  br label %219

216:                                              ; preds = %210
  %217 = call ptr @DestroyImageList(ptr noundef nonnull %177) #8
  %218 = call ptr @GetFirstImageInList(ptr noundef nonnull %212) #8
  br label %219

219:                                              ; preds = %214, %216, %205, %202
  %220 = phi ptr [ %177, %205 ], [ %177, %202 ], [ %177, %214 ], [ %218, %216 ]
  %221 = call i32 @GetBlobError(ptr noundef %220) #8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %219
  %224 = tail call ptr @__errno_location() #11
  %225 = load i32, ptr %224, align 4, !tbaa !35
  %226 = call ptr @GetExceptionMessage(i32 noundef %225) #8
  %227 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 587, i32 noundef 430, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef nonnull %20, ptr noundef %226) #8
  %228 = call ptr @DestroyString(ptr noundef %226) #8
  br label %229

229:                                              ; preds = %223, %219
  store ptr %220, ptr %7, align 8, !tbaa !30
  %230 = icmp eq ptr %220, null
  br i1 %230, label %561, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %233 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 7
  %234 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 44
  %235 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %236 = getelementptr inbounds %struct._GeometryInfo, ptr %11, i64 0, i32 1
  %237 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 35
  br label %238

238:                                              ; preds = %231, %557
  %239 = phi ptr [ %220, %231 ], [ %558, %557 ]
  %240 = phi ptr [ %220, %231 ], [ %559, %557 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #9
  %241 = getelementptr inbounds %struct._Image, ptr %240, i64 0, i32 5
  store i32 0, ptr %241, align 4, !tbaa !45
  call void @GetPathComponent(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %8) #8
  %242 = load i8, ptr %8, align 16, !tbaa !37
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load ptr, ptr %7, align 8, !tbaa !30
  %246 = getelementptr inbounds %struct._Image, ptr %245, i64 0, i32 55
  %247 = call i64 @CopyMagickString(ptr noundef nonnull %246, ptr noundef nonnull %4, i64 noundef 4096) #8
  br label %248

248:                                              ; preds = %244, %238
  %249 = load ptr, ptr %7, align 8, !tbaa !30
  %250 = getelementptr inbounds %struct._Image, ptr %249, i64 0, i32 54
  %251 = call i64 @CopyMagickString(ptr noundef nonnull %250, ptr noundef nonnull %5, i64 noundef 4096) #8
  %252 = call i32 @IsBlobTemporary(ptr noundef %239) #8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %248
  %255 = load ptr, ptr %7, align 8, !tbaa !30
  %256 = getelementptr inbounds %struct._Image, ptr %255, i64 0, i32 53
  %257 = call i64 @CopyMagickString(ptr noundef nonnull %256, ptr noundef nonnull %3, i64 noundef 4096) #8
  br label %258

258:                                              ; preds = %254, %248
  %259 = load ptr, ptr %7, align 8, !tbaa !30
  %260 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 56
  %261 = load i64, ptr %260, align 8, !tbaa !46
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 7
  %265 = load i64, ptr %264, align 8, !tbaa !6
  store i64 %265, ptr %260, align 8, !tbaa !46
  br label %266

266:                                              ; preds = %263, %258
  %267 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 57
  %268 = load i64, ptr %267, align 8, !tbaa !47
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 8
  %272 = load i64, ptr %271, align 8, !tbaa !25
  store i64 %272, ptr %267, align 8, !tbaa !47
  br label %273

273:                                              ; preds = %270, %266
  %274 = call ptr @GetImageProperty(ptr noundef nonnull %259, ptr noundef nonnull @.str.12) #8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = load ptr, ptr %7, align 8, !tbaa !30
  %278 = call ptr @GetImageProperty(ptr noundef %277, ptr noundef nonnull @.str.13) #8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %289, label %280

280:                                              ; preds = %273, %276
  %281 = phi ptr [ %278, %276 ], [ %274, %273 ]
  %282 = call fastcc i64 @StringToLong(ptr noundef nonnull %281) #10
  %283 = trunc i64 %282 to i32
  %284 = load ptr, ptr %7, align 8, !tbaa !30
  %285 = getelementptr inbounds %struct._Image, ptr %284, i64 0, i32 4
  store i32 %283, ptr %285, align 8, !tbaa !48
  %286 = call i32 @DeleteImageProperty(ptr noundef %284, ptr noundef nonnull @.str.12) #8
  %287 = load ptr, ptr %7, align 8, !tbaa !30
  %288 = call i32 @DeleteImageProperty(ptr noundef %287, ptr noundef nonnull @.str.13) #8
  br label %289

289:                                              ; preds = %280, %276
  %290 = load ptr, ptr %7, align 8, !tbaa !30
  %291 = call ptr @GetImageProperty(ptr noundef %290, ptr noundef nonnull @.str.14) #8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %307, label %293

293:                                              ; preds = %289
  %294 = load ptr, ptr %7, align 8, !tbaa !30
  %295 = getelementptr inbounds %struct._Image, ptr %294, i64 0, i32 24
  %296 = load double, ptr %295, align 8, !tbaa !49
  store double %296, ptr %6, align 8, !tbaa !50
  store double 1.000000e+00, ptr %232, align 8, !tbaa !52
  %297 = call i32 @ParseGeometry(ptr noundef nonnull %291, ptr noundef nonnull %6) #8
  %298 = load double, ptr %232, align 8, !tbaa !52
  %299 = fcmp une double %298, 0.000000e+00
  %300 = load ptr, ptr %7, align 8, !tbaa !30
  br i1 %299, label %301, label %305

301:                                              ; preds = %293
  %302 = load double, ptr %6, align 8, !tbaa !50
  %303 = fdiv double %302, %298
  %304 = getelementptr inbounds %struct._Image, ptr %300, i64 0, i32 24
  store double %303, ptr %304, align 8, !tbaa !49
  br label %305

305:                                              ; preds = %301, %293
  %306 = call i32 @DeleteImageProperty(ptr noundef %300, ptr noundef nonnull @.str.14) #8
  br label %307

307:                                              ; preds = %305, %289
  %308 = load ptr, ptr %7, align 8, !tbaa !30
  %309 = call ptr @GetImageProperty(ptr noundef %308, ptr noundef nonnull @.str.15) #8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %325, label %311

311:                                              ; preds = %307
  %312 = load ptr, ptr %7, align 8, !tbaa !30
  %313 = getelementptr inbounds %struct._Image, ptr %312, i64 0, i32 25
  %314 = load double, ptr %313, align 8, !tbaa !53
  store double %314, ptr %6, align 8, !tbaa !50
  store double 1.000000e+00, ptr %232, align 8, !tbaa !52
  %315 = call i32 @ParseGeometry(ptr noundef nonnull %309, ptr noundef nonnull %6) #8
  %316 = load double, ptr %232, align 8, !tbaa !52
  %317 = fcmp une double %316, 0.000000e+00
  %318 = load ptr, ptr %7, align 8, !tbaa !30
  br i1 %317, label %319, label %323

319:                                              ; preds = %311
  %320 = load double, ptr %6, align 8, !tbaa !50
  %321 = fdiv double %320, %316
  %322 = getelementptr inbounds %struct._Image, ptr %318, i64 0, i32 25
  store double %321, ptr %322, align 8, !tbaa !53
  br label %323

323:                                              ; preds = %319, %311
  %324 = call i32 @DeleteImageProperty(ptr noundef %318, ptr noundef nonnull @.str.15) #8
  br label %325

325:                                              ; preds = %323, %307
  %326 = load ptr, ptr %7, align 8, !tbaa !30
  %327 = call ptr @GetImageProperty(ptr noundef %326, ptr noundef nonnull @.str.16) #8
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = load ptr, ptr %7, align 8, !tbaa !30
  %331 = call ptr @GetImageProperty(ptr noundef %330, ptr noundef nonnull @.str.17) #8
  %332 = icmp eq ptr %331, null
  br i1 %332, label %343, label %333

333:                                              ; preds = %325, %329
  %334 = phi ptr [ %331, %329 ], [ %327, %325 ]
  %335 = call fastcc i64 @StringToLong(ptr noundef nonnull %334) #10
  %336 = trunc i64 %335 to i32
  %337 = add i32 %336, -1
  %338 = load ptr, ptr %7, align 8, !tbaa !30
  %339 = getelementptr inbounds %struct._Image, ptr %338, i64 0, i32 19
  store i32 %337, ptr %339, align 8, !tbaa !54
  %340 = call i32 @DeleteImageProperty(ptr noundef %338, ptr noundef nonnull @.str.17) #8
  %341 = load ptr, ptr %7, align 8, !tbaa !30
  %342 = call i32 @DeleteImageProperty(ptr noundef %341, ptr noundef nonnull @.str.16) #8
  br label %343

343:                                              ; preds = %333, %329
  %344 = load ptr, ptr %7, align 8, !tbaa !30
  %345 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 26
  %346 = load i64, ptr %345, align 8, !tbaa !55
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 7
  %350 = load i64, ptr %349, align 8, !tbaa !6
  store i64 %350, ptr %345, align 8, !tbaa !55
  br label %351

351:                                              ; preds = %348, %343
  %352 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 26, i32 1
  %353 = load i64, ptr %352, align 8, !tbaa !56
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 8
  %357 = load i64, ptr %356, align 8, !tbaa !25
  store i64 %357, ptr %352, align 8, !tbaa !56
  br label %358

358:                                              ; preds = %355, %351
  %359 = call ptr @GetImageOption(ptr noundef nonnull %19, ptr noundef nonnull @.str.18) #8
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %358
  %362 = load ptr, ptr %7, align 8, !tbaa !30
  %363 = call ptr @InterpretImageProperties(ptr noundef %19, ptr noundef %362, ptr noundef nonnull %359) #8
  %364 = load ptr, ptr %7, align 8, !tbaa !30
  %365 = call i32 @SetImageProperty(ptr noundef %364, ptr noundef nonnull @.str.18, ptr noundef %363) #8
  %366 = call ptr @DestroyString(ptr noundef %363) #8
  br label %367

367:                                              ; preds = %361, %358
  %368 = call ptr @GetImageOption(ptr noundef %19, ptr noundef nonnull @.str.19) #8
  %369 = icmp eq ptr %368, null
  br i1 %369, label %376, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %7, align 8, !tbaa !30
  %372 = call ptr @InterpretImageProperties(ptr noundef %19, ptr noundef %371, ptr noundef nonnull %368) #8
  %373 = load ptr, ptr %7, align 8, !tbaa !30
  %374 = call i32 @SetImageProperty(ptr noundef %373, ptr noundef nonnull @.str.19, ptr noundef %372) #8
  %375 = call ptr @DestroyString(ptr noundef %372) #8
  br label %376

376:                                              ; preds = %370, %367
  %377 = call ptr @GetImageOption(ptr noundef %19, ptr noundef nonnull @.str.20) #8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %385, label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr %7, align 8, !tbaa !30
  %381 = call ptr @InterpretImageProperties(ptr noundef %19, ptr noundef %380, ptr noundef nonnull %377) #8
  %382 = load ptr, ptr %7, align 8, !tbaa !30
  %383 = call i32 @SetImageProperty(ptr noundef %382, ptr noundef nonnull @.str.20, ptr noundef %381) #8
  %384 = call ptr @DestroyString(ptr noundef %381) #8
  br label %385

385:                                              ; preds = %379, %376
  %386 = load ptr, ptr %7, align 8, !tbaa !30
  %387 = getelementptr inbounds %struct._Image, ptr %386, i64 0, i32 55
  %388 = call i32 @LocaleCompare(ptr noundef nonnull %387, ptr noundef nonnull @.str.21) #8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = load ptr, ptr %7, align 8, !tbaa !30
  %392 = getelementptr inbounds %struct._Image, ptr %391, i64 0, i32 26
  %393 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.22, ptr noundef nonnull %392) #8
  br label %394

394:                                              ; preds = %390, %385
  %395 = load ptr, ptr %233, align 8, !tbaa !57
  %396 = icmp eq ptr %395, null
  br i1 %396, label %436, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr %234, align 8, !tbaa !58
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %436

400:                                              ; preds = %397
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  %401 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %395, ptr noundef nonnull %10) #8
  %402 = load ptr, ptr %7, align 8, !tbaa !30
  %403 = getelementptr inbounds %struct._Image, ptr %402, i64 0, i32 7
  %404 = load i64, ptr %403, align 8, !tbaa !6
  %405 = load i64, ptr %10, align 8, !tbaa !59
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct._Image, ptr %402, i64 0, i32 8
  %409 = load i64, ptr %408, align 8, !tbaa !25
  %410 = load i64, ptr %235, align 8, !tbaa !60
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %435, label %412

412:                                              ; preds = %407, %400
  %413 = and i32 %401, 3
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %412
  %416 = call ptr @CropImage(ptr noundef nonnull %402, ptr noundef nonnull %10, ptr noundef nonnull %1) #8
  %417 = icmp eq ptr %416, null
  br i1 %417, label %435, label %433

418:                                              ; preds = %412
  %419 = and i32 %401, 12
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %435, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr %233, align 8, !tbaa !57
  %423 = call i32 @ParseRegionGeometry(ptr noundef nonnull %402, ptr noundef %422, ptr noundef nonnull %10, ptr noundef nonnull %1) #8
  %424 = load ptr, ptr %7, align 8, !tbaa !30
  %425 = load i64, ptr %10, align 8, !tbaa !59
  %426 = load i64, ptr %235, align 8, !tbaa !60
  %427 = getelementptr inbounds %struct._Image, ptr %424, i64 0, i32 32
  %428 = load i32, ptr %427, align 8, !tbaa !61
  %429 = getelementptr inbounds %struct._Image, ptr %424, i64 0, i32 30
  %430 = load double, ptr %429, align 8, !tbaa !62
  %431 = call ptr @ResizeImage(ptr noundef %424, i64 noundef %425, i64 noundef %426, i32 noundef %428, double noundef %430, ptr noundef nonnull %1) #8
  %432 = icmp eq ptr %431, null
  br i1 %432, label %435, label %433

433:                                              ; preds = %421, %415
  %434 = phi ptr [ %416, %415 ], [ %431, %421 ]
  call void @ReplaceImageInList(ptr noundef nonnull %7, ptr noundef nonnull %434) #8
  br label %435

435:                                              ; preds = %433, %421, %418, %415, %407
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br label %436

436:                                              ; preds = %435, %397, %394
  %437 = load ptr, ptr %7, align 8, !tbaa !30
  %438 = call ptr @GetImageProfile(ptr noundef %437, ptr noundef nonnull @.str.23) #8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load ptr, ptr %7, align 8, !tbaa !30
  %442 = call ptr @GetImageProfile(ptr noundef %441, ptr noundef nonnull @.str.24) #8
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %446

444:                                              ; preds = %440
  %445 = load ptr, ptr %7, align 8, !tbaa !30
  br label %454

446:                                              ; preds = %436, %440
  %447 = phi ptr [ %442, %440 ], [ %438, %436 ]
  %448 = call i64 @GetStringInfoLength(ptr noundef nonnull %447) #8
  %449 = load ptr, ptr %7, align 8, !tbaa !30
  %450 = getelementptr inbounds %struct._Image, ptr %449, i64 0, i32 62, i32 1
  store i64 %448, ptr %450, align 8, !tbaa !63
  %451 = call ptr @GetStringInfoDatum(ptr noundef nonnull %447) #8
  %452 = load ptr, ptr %7, align 8, !tbaa !30
  %453 = getelementptr inbounds %struct._Image, ptr %452, i64 0, i32 62, i32 2
  store ptr %451, ptr %453, align 8, !tbaa !64
  br label %454

454:                                              ; preds = %444, %446
  %455 = phi ptr [ %445, %444 ], [ %452, %446 ]
  %456 = call ptr @GetImageProfile(ptr noundef %455, ptr noundef nonnull @.str.25) #8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %464

458:                                              ; preds = %454
  %459 = load ptr, ptr %7, align 8, !tbaa !30
  %460 = call ptr @GetImageProfile(ptr noundef %459, ptr noundef nonnull @.str.26) #8
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %464

462:                                              ; preds = %458
  %463 = load ptr, ptr %7, align 8, !tbaa !30
  br label %472

464:                                              ; preds = %454, %458
  %465 = phi ptr [ %460, %458 ], [ %456, %454 ]
  %466 = call i64 @GetStringInfoLength(ptr noundef nonnull %465) #8
  %467 = load ptr, ptr %7, align 8, !tbaa !30
  %468 = getelementptr inbounds %struct._Image, ptr %467, i64 0, i32 63, i32 1
  store i64 %466, ptr %468, align 8, !tbaa !65
  %469 = call ptr @GetStringInfoDatum(ptr noundef nonnull %465) #8
  %470 = load ptr, ptr %7, align 8, !tbaa !30
  %471 = getelementptr inbounds %struct._Image, ptr %470, i64 0, i32 63, i32 2
  store ptr %469, ptr %471, align 8, !tbaa !66
  br label %472

472:                                              ; preds = %462, %464
  %473 = phi ptr [ %463, %462 ], [ %470, %464 ]
  %474 = call ptr @GetBlobProperties(ptr noundef %473) #8
  %475 = getelementptr inbounds %struct.stat, ptr %474, i64 0, i32 12
  %476 = load i64, ptr %475, align 8, !tbaa !67
  %477 = call i64 @FormatMagickTime(i64 noundef %476, i64 noundef 4096, ptr noundef nonnull %9) #8
  %478 = load ptr, ptr %7, align 8, !tbaa !30
  %479 = call i32 @SetImageProperty(ptr noundef %478, ptr noundef nonnull @.str.27, ptr noundef nonnull %9) #8
  %480 = load ptr, ptr %7, align 8, !tbaa !30
  %481 = call ptr @GetBlobProperties(ptr noundef %480) #8
  %482 = getelementptr inbounds %struct.stat, ptr %481, i64 0, i32 13
  %483 = load i64, ptr %482, align 8, !tbaa !70
  %484 = call i64 @FormatMagickTime(i64 noundef %483, i64 noundef 4096, ptr noundef nonnull %9) #8
  %485 = load ptr, ptr %7, align 8, !tbaa !30
  %486 = call i32 @SetImageProperty(ptr noundef %485, ptr noundef nonnull @.str.28, ptr noundef nonnull %9) #8
  %487 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.29) #8
  %488 = icmp eq ptr %487, null
  br i1 %488, label %539, label %489

489:                                              ; preds = %472
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #9
  %490 = call i32 @ParseGeometry(ptr noundef nonnull %487, ptr noundef nonnull %11) #8
  %491 = and i32 %490, 32768
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %503, label %493

493:                                              ; preds = %489
  %494 = load ptr, ptr %7, align 8, !tbaa !30
  %495 = getelementptr inbounds %struct._Image, ptr %494, i64 0, i32 40
  %496 = load i64, ptr %495, align 8, !tbaa !71
  %497 = load double, ptr %11, align 8, !tbaa !50
  %498 = fadd double %497, 5.000000e-01
  %499 = call double @llvm.floor.f64(double %498)
  %500 = fptoui double %499 to i64
  %501 = icmp ugt i64 %496, %500
  br i1 %501, label %502, label %528

502:                                              ; preds = %493
  store i64 %500, ptr %495, align 8, !tbaa !71
  br label %528

503:                                              ; preds = %489
  %504 = and i32 %490, 16384
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %521, label %506

506:                                              ; preds = %503
  %507 = load ptr, ptr %7, align 8, !tbaa !30
  %508 = getelementptr inbounds %struct._Image, ptr %507, i64 0, i32 40
  %509 = load i64, ptr %508, align 8, !tbaa !71
  %510 = load double, ptr %11, align 8, !tbaa !50
  %511 = fadd double %510, 5.000000e-01
  %512 = call double @llvm.floor.f64(double %511)
  %513 = fptoui double %512 to i64
  %514 = icmp ult i64 %509, %513
  br i1 %514, label %515, label %528

515:                                              ; preds = %506
  %516 = load double, ptr %236, align 8, !tbaa !52
  %517 = fadd double %516, 5.000000e-01
  %518 = call double @llvm.floor.f64(double %517)
  %519 = fptosi double %518 to i64
  %520 = getelementptr inbounds %struct._Image, ptr %507, i64 0, i32 41
  store i64 %519, ptr %520, align 8, !tbaa !72
  br label %528

521:                                              ; preds = %503
  %522 = load double, ptr %11, align 8, !tbaa !50
  %523 = fadd double %522, 5.000000e-01
  %524 = call double @llvm.floor.f64(double %523)
  %525 = fptoui double %524 to i64
  %526 = load ptr, ptr %7, align 8, !tbaa !30
  %527 = getelementptr inbounds %struct._Image, ptr %526, i64 0, i32 40
  store i64 %525, ptr %527, align 8, !tbaa !71
  br label %528

528:                                              ; preds = %521, %515, %506, %493, %502
  %529 = phi ptr [ %526, %521 ], [ %507, %515 ], [ %507, %506 ], [ %494, %493 ], [ %494, %502 ]
  %530 = and i32 %490, 8
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %538, label %532

532:                                              ; preds = %528
  %533 = load double, ptr %236, align 8, !tbaa !52
  %534 = fadd double %533, 5.000000e-01
  %535 = call double @llvm.floor.f64(double %534)
  %536 = fptosi double %535 to i64
  %537 = getelementptr inbounds %struct._Image, ptr %529, i64 0, i32 41
  store i64 %536, ptr %537, align 8, !tbaa !72
  br label %538

538:                                              ; preds = %532, %528
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #9
  br label %539

539:                                              ; preds = %538, %472
  %540 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.30) #8
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  %543 = load ptr, ptr %7, align 8, !tbaa !30
  br label %549

544:                                              ; preds = %539
  %545 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %540) #8
  %546 = trunc i64 %545 to i32
  %547 = load ptr, ptr %7, align 8, !tbaa !30
  %548 = getelementptr inbounds %struct._Image, ptr %547, i64 0, i32 37
  store i32 %546, ptr %548, align 4, !tbaa !73
  br label %549

549:                                              ; preds = %542, %544
  %550 = phi ptr [ %543, %542 ], [ %547, %544 ]
  %551 = load i32, ptr %237, align 4, !tbaa !29
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %557, label %553

553:                                              ; preds = %549
  %554 = load ptr, ptr @stderr, align 8, !tbaa !30
  %555 = call i32 @IdentifyImage(ptr noundef %550, ptr noundef %554, i32 noundef 0) #8
  %556 = load ptr, ptr %7, align 8, !tbaa !30
  br label %557

557:                                              ; preds = %553, %549
  %558 = phi ptr [ %556, %553 ], [ %550, %549 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #9
  %559 = call ptr @GetNextImageInList(ptr noundef %558) #8
  store ptr %559, ptr %7, align 8, !tbaa !30
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %238, !llvm.loop !74

561:                                              ; preds = %557, %229
  %562 = phi ptr [ null, %229 ], [ %558, %557 ]
  %563 = call ptr @DestroyImageInfo(ptr noundef nonnull %19) #8
  %564 = call ptr @GetFirstImageInList(ptr noundef %562) #8
  br label %565

565:                                              ; preds = %68, %59, %561, %189, %159, %122, %117, %28
  %566 = phi ptr [ null, %28 ], [ null, %189 ], [ %564, %561 ], [ null, %117 ], [ null, %122 ], [ null, %159 ], [ null, %59 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret ptr %566
}

; Function Attrs: optsize
declare i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickEndianSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickRawSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickSeekableStream(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsBlobSeekable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ImageToFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetDelegateInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickThreadSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetDelegateThreadSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @InvokeDelegate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsBlobTemporary(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetBlobError(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #8
  ret i64 %2
}

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ReplaceImageInList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatMagickTime(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetBlobProperties(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ReadImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !31
  %15 = trunc i64 %14 to i32
  %16 = call i64 @InterpretImageFilename(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %12, i32 noundef %15, ptr noundef nonnull %3) #8
  %17 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull %12) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = call ptr @CloneImageInfo(ptr noundef nonnull %0) #8
  %21 = call ptr @AcquireExceptionInfo() #8
  %22 = call i32 @SetImageInfo(ptr noundef %20, i32 noundef 0, ptr noundef %21) #8
  %23 = call ptr @DestroyExceptionInfo(ptr noundef %21) #8
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !32
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call ptr @DestroyImageInfo(ptr noundef nonnull %20) #8
  %29 = call ptr @ReadImage(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %54

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 51
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %31, i64 noundef 4096) #8
  %33 = call ptr @NewImageList() #8
  store ptr %33, ptr %4, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 10
  %35 = load i64, ptr %34, align 8, !tbaa !31
  %36 = load i64, ptr %24, align 8, !tbaa !32
  %37 = add i64 %36, %35
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %46
  %40 = phi i64 [ %47, %46 ], [ %35, %30 ]
  %41 = trunc i64 %40 to i32
  %42 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i32 noundef %41, ptr noundef nonnull %31) #8
  %43 = call ptr @ReadImage(ptr noundef %20, ptr noundef %1) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %43) #8
  br label %46

46:                                               ; preds = %39, %45
  %47 = add i64 %40, 1
  %48 = icmp eq i64 %47, %37
  br i1 %48, label %49, label %39, !llvm.loop !75

49:                                               ; preds = %46, %30
  %50 = call ptr @DestroyImageInfo(ptr noundef %20) #8
  %51 = load ptr, ptr %4, align 8, !tbaa !30
  br label %54

52:                                               ; preds = %11
  %53 = call ptr @ReadImage(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %54

54:                                               ; preds = %27, %49, %52
  %55 = phi ptr [ %53, %52 ], [ %29, %27 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ReadInlineImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = tail call ptr @NewImageList() #8
  br label %6

6:                                                ; preds = %9, %3
  %7 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !37
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 44, label %18
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !76

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 910, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #8
  %14 = icmp eq ptr %5, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @CloseBlob(ptr noundef nonnull %5) #8
  %17 = tail call ptr @DestroyImageList(ptr noundef nonnull %5) #8
  br label %39

18:                                               ; preds = %6
  %19 = getelementptr inbounds i8, ptr %7, i64 1
  store i64 0, ptr %4, align 8, !tbaa !77
  %20 = call ptr @Base64Decode(ptr noundef nonnull %19, ptr noundef nonnull %4) #8
  %21 = load i64, ptr %4, align 8, !tbaa !77
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %25 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 915, i32 noundef 425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #8
  %26 = icmp eq ptr %5, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = call i32 @CloseBlob(ptr noundef nonnull %5) #8
  %29 = call ptr @DestroyImageList(ptr noundef nonnull %5) #8
  br label %39

30:                                               ; preds = %18
  %31 = call ptr @CloneImageInfo(ptr noundef %0) #8
  %32 = call ptr @SetImageInfoProgressMonitor(ptr noundef %31, ptr noundef null, ptr noundef null) #8
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %31, i64 0, i32 51
  store i8 0, ptr %33, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %31, i64 0, i32 48
  store i8 0, ptr %34, align 8, !tbaa !37
  %35 = load i64, ptr %4, align 8, !tbaa !77
  %36 = call ptr @BlobToImage(ptr noundef %31, ptr noundef %20, i64 noundef %35, ptr noundef %2) #8
  %37 = call ptr @RelinquishMagickMemory(ptr noundef %20) #8
  %38 = call ptr @DestroyImageInfo(ptr noundef %31) #8
  br label %39

39:                                               ; preds = %23, %27, %11, %15, %30
  %40 = phi ptr [ %36, %30 ], [ null, %15 ], [ null, %11 ], [ null, %27 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @Base64Decode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @SetImageInfoProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WriteImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call ptr @AcquireExceptionInfo() #8
  %14 = tail call ptr @CloneImageInfo(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 51
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %17 = tail call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef 4096) #8
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 48
  %19 = load i8, ptr %18, align 8, !tbaa !37
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %22, i64 noundef 4096) #8
  br label %24

24:                                               ; preds = %21, %12
  %25 = tail call i32 @SetImageInfo(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %13) #8
  %26 = tail call i32 @LocaleCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.32) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 410, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #8
  %35 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %14) #8
  br label %266

36:                                               ; preds = %28
  %37 = tail call i32 @SetImageInfo(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %13) #8
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi ptr [ %30, %36 ], [ %1, %24 ]
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 53
  %41 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %40, i64 noundef 4096) #8
  %42 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %15, i64 noundef 4096) #8
  %43 = call i32 @IsRightsAuthorized(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %18) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = call ptr @DestroyExceptionInfo(ptr noundef %13) #8
  %47 = call ptr @DestroyImageInfo(ptr noundef nonnull %14) #8
  %48 = tail call ptr @__errno_location() #11
  store i32 1, ptr %48, align 4, !tbaa !35
  %49 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, i32 noundef 499, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #8
  br label %266

51:                                               ; preds = %38
  %52 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef %13) #8
  %53 = call ptr @DestroyExceptionInfo(ptr noundef %13) #8
  %54 = icmp eq ptr %52, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = call i32 @GetMagickEndianSupport(ptr noundef nonnull %52) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %60 = load i32, ptr %59, align 4, !tbaa !36
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = call i32 @GetMagickRawSupport(ptr noundef nonnull %52) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62, %55
  %66 = phi i32 [ 0, %55 ], [ 1, %62 ]
  %67 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 34
  store i32 %66, ptr %67, align 8, !tbaa !80
  br label %68

68:                                               ; preds = %65, %62, %58, %51
  %69 = call i32 @SyncImageProfiles(ptr noundef nonnull %39) #8
  %70 = call ptr @GetImageOption(ptr noundef %0, ptr noundef nonnull @.str.34) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %105, label %72

72:                                               ; preds = %68
  %73 = call i32 @IsMagickTrue(ptr noundef nonnull %70) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !81
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = call ptr @GetPreviousImageInList(ptr noundef nonnull %39) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = call ptr @GetNextImageInList(ptr noundef nonnull %39) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = call i32 @IsTaintImage(ptr noundef nonnull %39) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %90 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %91 = call ptr @GetDelegateInfo(ptr noundef nonnull %89, ptr noundef nonnull %18, ptr noundef nonnull %90) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = call i64 @GetDelegateMode(ptr noundef nonnull %91) #8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 54
  %98 = call i32 @IsPathAccessible(ptr noundef nonnull %97) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %97, i64 noundef 4096) #8
  %102 = call i32 @InvokeDelegate(ptr noundef nonnull %14, ptr noundef nonnull %39, ptr noundef nonnull %89, ptr noundef nonnull %18, ptr noundef nonnull %90) #8
  %103 = call ptr @DestroyImageInfo(ptr noundef nonnull %14) #8
  %104 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #8
  br label %266

105:                                              ; preds = %88, %93, %96, %85, %82, %79, %75, %72, %68
  br i1 %54, label %145, label %106

106:                                              ; preds = %105
  %107 = call i32 @GetMagickSeekableStream(ptr noundef nonnull %52) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %110 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %40, i64 noundef 4096) #8
  %111 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %112 = call i32 @OpenBlob(ptr noundef %0, ptr noundef nonnull %39, i32 noundef 4, ptr noundef nonnull %111) #8
  %113 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %4, i64 noundef 4096) #8
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %109
  %116 = call i32 @IsBlobSeekable(ptr noundef nonnull %39) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 3
  store i32 1, ptr %119, align 4, !tbaa !82
  %120 = call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %40, i64 noundef 4096) #8
  %121 = call i32 @AcquireUniqueFilename(ptr noundef nonnull %40) #8
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i32 [ 1, %118 ], [ 0, %115 ]
  %124 = call i32 @CloseBlob(ptr noundef nonnull %39) #8
  br label %125

125:                                              ; preds = %122, %109
  %126 = phi i32 [ %123, %122 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  br label %127

127:                                              ; preds = %125, %106
  %128 = phi i32 [ 0, %106 ], [ %112, %125 ]
  %129 = phi i32 [ 0, %106 ], [ %126, %125 ]
  %130 = call ptr @GetImageEncoder(ptr noundef nonnull %52) #8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %52) #8
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._MagickInfo, ptr %52, i64 0, i32 22
  %138 = load ptr, ptr %137, align 8, !tbaa !39
  call void @LockSemaphoreInfo(ptr noundef %138) #8
  br label %139

139:                                              ; preds = %136, %132
  %140 = call ptr @GetImageEncoder(ptr noundef nonnull %52) #8
  %141 = call i32 %140(ptr noundef nonnull %14, ptr noundef nonnull %39) #8
  br i1 %135, label %142, label %227

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct._MagickInfo, ptr %52, i64 0, i32 22
  %144 = load ptr, ptr %143, align 8, !tbaa !39
  call void @UnlockSemaphoreInfo(ptr noundef %144) #8
  br label %227

145:                                              ; preds = %105, %127
  %146 = phi i32 [ %129, %127 ], [ 0, %105 ]
  %147 = phi i32 [ %128, %127 ], [ 0, %105 ]
  %148 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %149 = call ptr @GetDelegateInfo(ptr noundef null, ptr noundef nonnull %18, ptr noundef nonnull %148) #8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %145
  store i8 0, ptr %15, align 8, !tbaa !37
  %152 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %149) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._DelegateInfo, ptr %149, i64 0, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !41
  call void @LockSemaphoreInfo(ptr noundef %156) #8
  br label %157

157:                                              ; preds = %154, %151
  %158 = call i32 @InvokeDelegate(ptr noundef nonnull %14, ptr noundef nonnull %39, ptr noundef null, ptr noundef nonnull %18, ptr noundef nonnull %148) #8
  %159 = call i32 @GetDelegateThreadSupport(ptr noundef nonnull %149) #8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct._DelegateInfo, ptr %149, i64 0, i32 11
  %163 = load ptr, ptr %162, align 8, !tbaa !41
  call void @UnlockSemaphoreInfo(ptr noundef %163) #8
  br label %164

164:                                              ; preds = %161, %157
  %165 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #8
  br label %227

166:                                              ; preds = %145
  %167 = call ptr @AcquireExceptionInfo() #8
  %168 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef %167) #8
  %169 = call ptr @DestroyExceptionInfo(ptr noundef %167) #8
  %170 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !83
  %172 = icmp eq i32 %171, 0
  %173 = icmp eq ptr %168, null
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %177 = call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %176, i64 noundef 4096) #8
  %178 = call ptr @GetMagickInfo(ptr noundef nonnull %18, ptr noundef nonnull %148) #8
  br label %179

179:                                              ; preds = %175, %166
  %180 = phi ptr [ %178, %175 ], [ %168, %166 ]
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = call ptr @GetImageEncoder(ptr noundef nonnull %180) #8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182, %179
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  call void @GetPathComponent(ptr noundef nonnull %40, i32 noundef 6, ptr noundef nonnull %5) #8
  %186 = load i8, ptr %5, align 16, !tbaa !37
  %187 = icmp eq i8 %186, 0
  %188 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %189 = select i1 %187, ptr %188, ptr %5
  %190 = call ptr @GetMagickInfo(ptr noundef nonnull %189, ptr noundef nonnull %148) #8
  %191 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %3, i64 noundef 4096) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  %192 = icmp eq ptr %190, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %182, %185
  %194 = phi ptr [ %190, %185 ], [ %180, %182 ]
  %195 = call ptr @GetImageEncoder(ptr noundef nonnull %194) #8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %193, %185
  %198 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 55
  %199 = call ptr @GetMagickInfo(ptr noundef nonnull %198, ptr noundef nonnull %148) #8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %148, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, i32 noundef 420, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #8
  br label %227

203:                                              ; preds = %197
  %204 = call ptr @GetImageEncoder(ptr noundef nonnull %199) #8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %148, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1168, i32 noundef 320, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #8
  br label %210

208:                                              ; preds = %203
  %209 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %148, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, i32 noundef 420, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #8
  br label %210

210:                                              ; preds = %193, %206, %208
  %211 = phi ptr [ %199, %208 ], [ %194, %193 ], [ %199, %206 ]
  %212 = call ptr @GetImageEncoder(ptr noundef nonnull %211) #8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %227, label %214

214:                                              ; preds = %210
  %215 = call i32 @GetMagickThreadSupport(ptr noundef nonnull %211) #8
  %216 = and i32 %215, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct._MagickInfo, ptr %211, i64 0, i32 22
  %220 = load ptr, ptr %219, align 8, !tbaa !39
  call void @LockSemaphoreInfo(ptr noundef %220) #8
  br label %221

221:                                              ; preds = %218, %214
  %222 = call ptr @GetImageEncoder(ptr noundef nonnull %211) #8
  %223 = call i32 %222(ptr noundef nonnull %14, ptr noundef nonnull %39) #8
  br i1 %217, label %224, label %227

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct._MagickInfo, ptr %211, i64 0, i32 22
  %226 = load ptr, ptr %225, align 8, !tbaa !39
  call void @UnlockSemaphoreInfo(ptr noundef %226) #8
  br label %227

227:                                              ; preds = %201, %164, %221, %224, %210, %139, %142
  %228 = phi i32 [ %129, %142 ], [ %129, %139 ], [ %146, %164 ], [ %146, %224 ], [ %146, %221 ], [ %146, %210 ], [ %146, %201 ]
  %229 = phi i32 [ %141, %142 ], [ %141, %139 ], [ %158, %164 ], [ %223, %224 ], [ %223, %221 ], [ %147, %210 ], [ %147, %201 ]
  %230 = call i32 @GetBlobError(ptr noundef nonnull %39) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %227
  %233 = tail call ptr @__errno_location() #11
  %234 = load i32, ptr %233, align 4, !tbaa !35
  %235 = call ptr @GetExceptionMessage(i32 noundef %234) #8
  %236 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %237 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %236, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1189, i32 noundef 430, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, ptr noundef nonnull %40, ptr noundef %235) #8
  %238 = call ptr @DestroyString(ptr noundef %235) #8
  br label %239

239:                                              ; preds = %232, %227
  %240 = icmp eq i32 %228, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  %243 = call i32 @OpenBlob(ptr noundef nonnull %14, ptr noundef nonnull %39, i32 noundef 2, ptr noundef nonnull %242) #8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %15) #8
  %247 = call i32 @ImageToFile(ptr noundef nonnull %39, ptr noundef nonnull %15, ptr noundef nonnull %242) #8
  br label %248

248:                                              ; preds = %245, %241
  %249 = phi i32 [ %247, %245 ], [ 0, %241 ]
  %250 = call i32 @CloseBlob(ptr noundef nonnull %39) #8
  %251 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %40) #8
  %252 = call i64 @CopyMagickString(ptr noundef nonnull %40, ptr noundef nonnull %15, i64 noundef 4096) #8
  br label %253

253:                                              ; preds = %248, %239
  %254 = phi i32 [ %249, %248 ], [ %229, %239 ]
  %255 = call i32 @LocaleCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.37) #8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 35
  %259 = load i32, ptr %258, align 4, !tbaa !29
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = load ptr, ptr @stderr, align 8, !tbaa !30
  %263 = call i32 @IdentifyImage(ptr noundef nonnull %39, ptr noundef %262, i32 noundef 0) #8
  br label %264

264:                                              ; preds = %261, %257, %253
  %265 = call ptr @DestroyImageInfo(ptr noundef nonnull %14) #8
  br label %266

266:                                              ; preds = %45, %264, %100, %32
  %267 = phi i32 [ 0, %32 ], [ %102, %100 ], [ %254, %264 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret i32 %267
}

; Function Attrs: optsize
declare i32 @SyncImageProfiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsTaintImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetDelegateMode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AcquireUniqueFilename(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageEncoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WriteImages(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1286, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @CloneImageInfo(ptr noundef %0) #8
  %13 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %1) #8
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = tail call ptr @CloneBlobInfo(ptr noundef %15) #8
  tail call void @DestroyBlob(ptr noundef %13) #8
  store ptr %16, ptr %14, align 8, !tbaa !84
  %17 = icmp eq ptr %2, null
  %18 = icmp eq ptr %13, null
  %19 = or i1 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %11, %20
  %21 = phi ptr [ %24, %20 ], [ %13, %11 ]
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %2, i64 noundef 4096) #8
  %24 = tail call ptr @GetNextImageInList(ptr noundef nonnull %21) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %20, !llvm.loop !85

26:                                               ; preds = %20, %11
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 51
  %28 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 53
  %29 = tail call i64 @CopyMagickString(ptr noundef nonnull %27, ptr noundef nonnull %28, i64 noundef 4096) #8
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 48
  %31 = load i8, ptr %30, align 8, !tbaa !37
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 55
  %35 = tail call i64 @CopyMagickString(ptr noundef nonnull %30, ptr noundef nonnull %34, i64 noundef 4096) #8
  br label %36

36:                                               ; preds = %33, %26
  %37 = tail call ptr @AcquireExceptionInfo() #8
  %38 = tail call i64 @GetImageListLength(ptr noundef %13) #8
  %39 = trunc i64 %38 to i32
  %40 = tail call i32 @SetImageInfo(ptr noundef nonnull %12, i32 noundef %39, ptr noundef %37) #8
  %41 = tail call ptr @DestroyExceptionInfo(ptr noundef %37) #8
  %42 = tail call ptr @GetNextImageInList(ptr noundef %13) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %69, label %44

44:                                               ; preds = %36, %65
  %45 = phi ptr [ %66, %65 ], [ %13, %36 ]
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 39
  %47 = load i64, ptr %46, align 8, !tbaa !86
  %48 = tail call ptr @GetNextImageInList(ptr noundef %45) #8
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 39
  %50 = load i64, ptr %49, align 8, !tbaa !86
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %65, label %52

52:                                               ; preds = %44
  br i1 %18, label %53, label %55

53:                                               ; preds = %52
  %54 = tail call i64 @GetImageListLength(ptr noundef %13) #8
  br label %107

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 39
  %57 = load i64, ptr %56, align 8, !tbaa !86
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %61, %58 ], [ %57, %55 ]
  %60 = phi ptr [ %63, %58 ], [ %13, %55 ]
  %61 = add nsw i64 %59, 1
  %62 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 39
  store i64 %59, ptr %62, align 8, !tbaa !86
  %63 = tail call ptr @GetNextImageInList(ptr noundef nonnull %60) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %58, !llvm.loop !87

65:                                               ; preds = %44
  %66 = tail call ptr @GetNextImageInList(ptr noundef nonnull %45) #8
  %67 = tail call ptr @GetNextImageInList(ptr noundef %66) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %44, !llvm.loop !88

69:                                               ; preds = %65, %58, %36
  %70 = tail call i64 @GetImageListLength(ptr noundef %13) #8
  %71 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 3
  br i1 %18, label %107, label %72

72:                                               ; preds = %69
  %73 = icmp eq i64 %70, 1
  br label %74

74:                                               ; preds = %72, %100
  %75 = phi ptr [ %13, %72 ], [ %102, %100 ]
  %76 = phi i32 [ 1, %72 ], [ %86, %100 ]
  %77 = phi ptr [ null, %72 ], [ %84, %100 ]
  %78 = phi i64 [ 0, %72 ], [ %101, %100 ]
  br i1 %73, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 48
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %75, ptr noundef null, ptr noundef %81) #8
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi ptr [ %82, %79 ], [ %77, %74 ]
  %85 = tail call i32 @WriteImage(ptr noundef %12, ptr noundef nonnull %75) #10
  %86 = and i32 %85, %76
  tail call void @GetImageException(ptr noundef nonnull %75, ptr noundef %3) #8
  br i1 %73, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, ptr %71, align 4, !tbaa !82
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %104

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 48
  %92 = load ptr, ptr %91, align 8, !tbaa !89
  %93 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %75, ptr noundef %84, ptr noundef %92) #8
  %94 = load i32, ptr %71, align 4, !tbaa !82
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = add nsw i64 %78, 1
  %98 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %75, i64 noundef %78, i64 noundef %70) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %87, %96
  %101 = phi i64 [ %97, %96 ], [ %78, %87 ]
  %102 = tail call ptr @GetNextImageInList(ptr noundef nonnull %75) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %74, !llvm.loop !90

104:                                              ; preds = %90, %96, %87, %100
  %105 = icmp ne i32 %86, 0
  %106 = zext i1 %105 to i32
  br label %107

107:                                              ; preds = %53, %104, %69
  %108 = phi i32 [ 1, %69 ], [ %106, %104 ], [ 1, %53 ]
  %109 = tail call ptr @DestroyImageInfo(ptr noundef %12) #8
  ret i32 %108
}

; Function Attrs: optsize
declare ptr @CloneBlobInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetImageException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef nonnull %9) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #8
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  ret i32 %16
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 40}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!7, !11, i64 48}
!26 = !{!27, !8, i64 16712}
!27 = !{!"_ImageInfo", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !15, i64 144, !15, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !8, i64 184, !8, i64 188, !11, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !11, i64 216, !8, i64 224, !8, i64 228, !12, i64 232, !12, i64 240, !8, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !11, i64 320, !9, i64 328, !9, i64 4424, !9, i64 8520, !9, i64 12616, !8, i64 16712, !12, i64 16720, !11, i64 16728, !11, i64 16736, !13, i64 16744, !11, i64 16752, !8, i64 16760, !13, i64 16764, !12, i64 16776, !8, i64 16784}
!28 = !{!27, !8, i64 224}
!29 = !{!27, !8, i64 228}
!30 = !{!12, !12, i64 0}
!31 = !{!27, !11, i64 56}
!32 = !{!27, !11, i64 64}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = !{!27, !8, i64 84}
!37 = !{!9, !9, i64 0}
!38 = !{!27, !8, i64 8}
!39 = !{!40, !12, i64 144}
!40 = !{!"_MagickInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !12, i64 112, !12, i64 120, !11, i64 128, !12, i64 136, !12, i64 144}
!41 = !{!42, !12, i64 80}
!42 = !{!"_DelegateInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !12, i64 80}
!43 = !{!22, !8, i64 0}
!44 = !{!27, !12, i64 48}
!45 = !{!7, !8, i64 28}
!46 = !{!7, !11, i64 12904}
!47 = !{!7, !11, i64 12912}
!48 = !{!7, !8, i64 24}
!49 = !{!7, !15, i64 264}
!50 = !{!51, !15, i64 0}
!51 = !{!"_GeometryInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!52 = !{!51, !15, i64 8}
!53 = !{!7, !15, i64 272}
!54 = !{!7, !8, i64 224}
!55 = !{!7, !11, i64 280}
!56 = !{!7, !11, i64 288}
!57 = !{!27, !12, i64 32}
!58 = !{!27, !12, i64 296}
!59 = !{!18, !11, i64 0}
!60 = !{!18, !11, i64 8}
!61 = !{!7, !8, i64 400}
!62 = !{!7, !15, i64 384}
!63 = !{!7, !11, i64 13008}
!64 = !{!7, !12, i64 13016}
!65 = !{!7, !11, i64 13040}
!66 = !{!7, !12, i64 13048}
!67 = !{!68, !11, i64 88}
!68 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !69, i64 72, !69, i64 88, !69, i64 104, !9, i64 120}
!69 = !{!"timespec", !11, i64 0, !11, i64 8}
!70 = !{!68, !11, i64 104}
!71 = !{!7, !11, i64 440}
!72 = !{!7, !11, i64 448}
!73 = !{!7, !8, i64 420}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !34}
!77 = !{!11, !11, i64 0}
!78 = !{!7, !8, i64 12976}
!79 = !{!7, !12, i64 424}
!80 = !{!7, !8, i64 408}
!81 = !{!27, !12, i64 40}
!82 = !{!27, !8, i64 12}
!83 = !{!27, !8, i64 16}
!84 = !{!7, !12, i64 608}
!85 = distinct !{!85, !34}
!86 = !{!7, !11, i64 432}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = !{!7, !12, i64 576}
!90 = distinct !{!90, !34}
!91 = !{!7, !12, i64 568}
