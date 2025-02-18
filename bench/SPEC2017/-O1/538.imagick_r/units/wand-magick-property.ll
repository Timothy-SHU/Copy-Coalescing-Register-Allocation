; ModuleID = 'wand/magick-property.c'
source_filename = "wand/magick-property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }

@.str = private unnamed_addr constant [23 x i8] c"wand/magick-property.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"exif:*\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%gx%g\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%g,\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%.20gx%.20g\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"%.20gx%.20g%+.20g\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 86, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 89, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #8
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @DeleteImageArtifact(ptr noundef nonnull %11, ptr noundef %1) #8
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 127, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 130, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #8
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %11, ptr noundef %1) #8
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = tail call i32 @DeleteImageOption(ptr noundef %11, ptr noundef %1) #8
  ret i32 %12
}

declare i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetAntialias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 200, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !44
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @MagickGetBackgroundColor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @NewPixelWand() #8
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 24
  tail call void @PixelSetQuantumColor(ptr noundef %9, ptr noundef nonnull %12) #8
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @NewPixelWand() local_unnamed_addr #1

declare void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetColorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !49
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetCompression(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load i32, ptr %10, align 8, !tbaa !50
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetCompressionQuality(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 329, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 16
  %12 = load i64, ptr %11, align 8, !tbaa !51
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetCopyright() local_unnamed_addr #0 {
  %1 = tail call ptr @GetMagickCopyright() #8
  ret ptr %1
}

declare ptr @GetMagickCopyright() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 384, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 51
  %12 = tail call ptr @AcquireString(ptr noundef nonnull %11) #8
  ret ptr %12
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFont(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 415, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @AcquireString(ptr noundef nonnull %12) #8
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFormat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 448, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 48
  %12 = tail call ptr @AcquireString(ptr noundef nonnull %11) #8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetGravity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 485, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @GetImageOption(ptr noundef %10, ptr noundef nonnull @.str.5) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %11) #8
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %8 ]
  ret i32 %17
}

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetHomeURL() local_unnamed_addr #0 {
  %1 = tail call ptr @GetMagickHomeURL() #8
  ret ptr %1
}

declare ptr @GetMagickHomeURL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 550, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 553, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #8
  br label %23

18:                                               ; preds = %9
  %19 = tail call ptr @GetImageArtifact(ptr noundef nonnull %11, ptr noundef %1) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @ConstantString(ptr noundef nonnull %19) #8
  br label %23

23:                                               ; preds = %18, %21, %13
  %24 = phi ptr [ null, %13 ], [ %22, %21 ], [ null, %18 ]
  ret ptr %24
}

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageArtifacts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 611, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 614, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %66

19:                                               ; preds = %10
  %20 = tail call ptr @GetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.6) #8
  %21 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void @ResetImagePropertyIterator(ptr noundef %24) #8
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = tail call ptr @GetNextImageProperty(ptr noundef %25) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %23, %55
  %29 = phi i64 [ %58, %55 ], [ 1024, %23 ]
  %30 = phi i64 [ %57, %55 ], [ 0, %23 ]
  %31 = phi ptr [ %60, %55 ], [ %26, %23 ]
  %32 = phi ptr [ %56, %55 ], [ %21, %23 ]
  %33 = load i8, ptr %31, align 1, !tbaa !53
  %34 = icmp eq i8 %33, 91
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @GlobExpression(ptr noundef nonnull %31, ptr noundef %1, i32 noundef 0) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = add nsw i64 %30, 1
  %40 = icmp slt i64 %39, %29
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = shl i64 %29, 1
  %43 = tail call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %42, i64 noundef 8) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 637, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #8
  br label %66

50:                                               ; preds = %41, %38
  %51 = phi ptr [ %43, %41 ], [ %32, %38 ]
  %52 = phi i64 [ %42, %41 ], [ %29, %38 ]
  %53 = tail call ptr @ConstantString(ptr noundef nonnull %31) #8
  %54 = getelementptr inbounds ptr, ptr %51, i64 %30
  store ptr %53, ptr %54, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %50, %35, %28
  %56 = phi ptr [ %51, %50 ], [ %32, %35 ], [ %32, %28 ]
  %57 = phi i64 [ %39, %50 ], [ %30, %35 ], [ %30, %28 ]
  %58 = phi i64 [ %52, %50 ], [ %29, %35 ], [ %29, %28 ]
  %59 = load ptr, ptr %11, align 8, !tbaa !41
  %60 = tail call ptr @GetNextImageProperty(ptr noundef %59) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %28, !llvm.loop !55

62:                                               ; preds = %55, %23
  %63 = phi ptr [ %21, %23 ], [ %56, %55 ]
  %64 = phi i64 [ 0, %23 ], [ %57, %55 ]
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr null, ptr %65, align 8, !tbaa !54
  store i64 %64, ptr %2, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %19, %62, %45, %14
  %67 = phi ptr [ null, %14 ], [ null, %45 ], [ %63, %62 ], [ null, %19 ]
  ret ptr %67
}

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProfile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 692, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 695, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %35

19:                                               ; preds = %10
  store i64 0, ptr %2, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @GetImageProfile(ptr noundef nonnull %12, ptr noundef %1) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %24) #8
  %28 = tail call ptr @AcquireQuantumMemory(i64 noundef %27, i64 noundef 1) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %24) #8
  %32 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %24) #8
  %33 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %28, ptr noundef %31, i64 noundef %32) #8
  %34 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %24) #8
  store i64 %34, ptr %2, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %26, %23, %19, %30, %14
  %36 = phi ptr [ null, %14 ], [ %28, %30 ], [ null, %19 ], [ null, %23 ], [ null, %26 ]
  ret ptr %36
}

declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #1

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProfiles(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 763, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 766, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %66

19:                                               ; preds = %10
  %20 = tail call ptr @GetImageProfile(ptr noundef nonnull %12, ptr noundef nonnull @.str.6) #8
  %21 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void @ResetImageProfileIterator(ptr noundef %24) #8
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = tail call ptr @GetNextImageProfile(ptr noundef %25) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %23, %55
  %29 = phi i64 [ %58, %55 ], [ 1024, %23 ]
  %30 = phi i64 [ %57, %55 ], [ 0, %23 ]
  %31 = phi ptr [ %60, %55 ], [ %26, %23 ]
  %32 = phi ptr [ %56, %55 ], [ %21, %23 ]
  %33 = load i8, ptr %31, align 1, !tbaa !53
  %34 = icmp eq i8 %33, 91
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @GlobExpression(ptr noundef nonnull %31, ptr noundef %1, i32 noundef 0) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = add nsw i64 %30, 1
  %40 = icmp slt i64 %39, %29
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = shl i64 %29, 1
  %43 = tail call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %42, i64 noundef 8) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 789, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #8
  br label %66

50:                                               ; preds = %41, %38
  %51 = phi ptr [ %43, %41 ], [ %32, %38 ]
  %52 = phi i64 [ %42, %41 ], [ %29, %38 ]
  %53 = tail call ptr @ConstantString(ptr noundef nonnull %31) #8
  %54 = getelementptr inbounds ptr, ptr %51, i64 %30
  store ptr %53, ptr %54, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %50, %35, %28
  %56 = phi ptr [ %51, %50 ], [ %32, %35 ], [ %32, %28 ]
  %57 = phi i64 [ %39, %50 ], [ %30, %35 ], [ %30, %28 ]
  %58 = phi i64 [ %52, %50 ], [ %29, %35 ], [ %29, %28 ]
  %59 = load ptr, ptr %11, align 8, !tbaa !41
  %60 = tail call ptr @GetNextImageProfile(ptr noundef %59) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %28, !llvm.loop !70

62:                                               ; preds = %55, %23
  %63 = phi ptr [ %21, %23 ], [ %56, %55 ]
  %64 = phi i64 [ 0, %23 ], [ %57, %55 ]
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr null, ptr %65, align 8, !tbaa !54
  store i64 %64, ptr %2, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %19, %62, %45, %14
  %67 = phi ptr [ null, %14 ], [ null, %45 ], [ %63, %62 ], [ null, %19 ]
  ret ptr %67
}

declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 839, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #8
  br label %23

18:                                               ; preds = %9
  %19 = tail call ptr @GetImageProperty(ptr noundef nonnull %11, ptr noundef %1) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @ConstantString(ptr noundef nonnull %19) #8
  br label %23

23:                                               ; preds = %18, %21, %13
  %24 = phi ptr [ null, %13 ], [ %22, %21 ], [ null, %18 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProperties(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 900, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 903, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %66

19:                                               ; preds = %10
  %20 = tail call ptr @GetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.6) #8
  %21 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void @ResetImagePropertyIterator(ptr noundef %24) #8
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = tail call ptr @GetNextImageProperty(ptr noundef %25) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %23, %55
  %29 = phi i64 [ %58, %55 ], [ 1024, %23 ]
  %30 = phi i64 [ %57, %55 ], [ 0, %23 ]
  %31 = phi ptr [ %60, %55 ], [ %26, %23 ]
  %32 = phi ptr [ %56, %55 ], [ %21, %23 ]
  %33 = load i8, ptr %31, align 1, !tbaa !53
  %34 = icmp eq i8 %33, 91
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @GlobExpression(ptr noundef nonnull %31, ptr noundef %1, i32 noundef 0) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = add nsw i64 %30, 1
  %40 = icmp slt i64 %39, %29
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = shl i64 %29, 1
  %43 = tail call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %42, i64 noundef 8) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 926, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #8
  br label %66

50:                                               ; preds = %41, %38
  %51 = phi ptr [ %43, %41 ], [ %32, %38 ]
  %52 = phi i64 [ %42, %41 ], [ %29, %38 ]
  %53 = tail call ptr @ConstantString(ptr noundef nonnull %31) #8
  %54 = getelementptr inbounds ptr, ptr %51, i64 %30
  store ptr %53, ptr %54, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %50, %35, %28
  %56 = phi ptr [ %51, %50 ], [ %32, %35 ], [ %32, %28 ]
  %57 = phi i64 [ %39, %50 ], [ %30, %35 ], [ %30, %28 ]
  %58 = phi i64 [ %52, %50 ], [ %29, %35 ], [ %29, %28 ]
  %59 = load ptr, ptr %11, align 8, !tbaa !41
  %60 = tail call ptr @GetNextImageProperty(ptr noundef %59) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %28, !llvm.loop !71

62:                                               ; preds = %55, %23
  %63 = phi ptr [ %21, %23 ], [ %56, %55 ]
  %64 = phi i64 [ 0, %23 ], [ %57, %55 ]
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr null, ptr %65, align 8, !tbaa !54
  store i64 %64, ptr %2, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %19, %62, %45, %14
  %67 = phi ptr [ null, %14 ], [ null, %45 ], [ %63, %62 ], [ null, %19 ]
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetInterlaceScheme(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 969, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !72
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetInterpolateMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1006, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @GetImageOption(ptr noundef %10, ptr noundef nonnull @.str.8) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %11) #8
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetOption(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1049, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = tail call ptr @GetImageOption(ptr noundef %11, ptr noundef %1) #8
  %13 = tail call ptr @ConstantString(ptr noundef %12) #8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetOptions(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1102, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1105, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %66

19:                                               ; preds = %10
  %20 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %66, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  tail call void @ResetImageOptionIterator(ptr noundef %24) #8
  %25 = load ptr, ptr %23, align 8, !tbaa !43
  %26 = tail call ptr @GetNextImageOption(ptr noundef %25) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %22, %55
  %29 = phi i64 [ %58, %55 ], [ 1024, %22 ]
  %30 = phi i64 [ %57, %55 ], [ 0, %22 ]
  %31 = phi ptr [ %60, %55 ], [ %26, %22 ]
  %32 = phi ptr [ %56, %55 ], [ %20, %22 ]
  %33 = load i8, ptr %31, align 1, !tbaa !53
  %34 = icmp eq i8 %33, 91
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @GlobExpression(ptr noundef nonnull %31, ptr noundef %1, i32 noundef 0) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = add nsw i64 %30, 1
  %40 = icmp slt i64 %39, %29
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = shl i64 %29, 1
  %43 = tail call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %42, i64 noundef 8) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1127, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #8
  br label %66

50:                                               ; preds = %41, %38
  %51 = phi ptr [ %43, %41 ], [ %32, %38 ]
  %52 = phi i64 [ %42, %41 ], [ %29, %38 ]
  %53 = tail call ptr @ConstantString(ptr noundef nonnull %31) #8
  %54 = getelementptr inbounds ptr, ptr %51, i64 %30
  store ptr %53, ptr %54, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %50, %35, %28
  %56 = phi ptr [ %51, %50 ], [ %32, %35 ], [ %32, %28 ]
  %57 = phi i64 [ %39, %50 ], [ %30, %35 ], [ %30, %28 ]
  %58 = phi i64 [ %52, %50 ], [ %29, %35 ], [ %29, %28 ]
  %59 = load ptr, ptr %23, align 8, !tbaa !43
  %60 = tail call ptr @GetNextImageOption(ptr noundef %59) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %28, !llvm.loop !73

62:                                               ; preds = %55, %22
  %63 = phi ptr [ %20, %22 ], [ %56, %55 ]
  %64 = phi i64 [ 0, %22 ], [ %57, %55 ]
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr null, ptr %65, align 8, !tbaa !54
  store i64 %64, ptr %2, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %19, %62, %45, %14
  %67 = phi ptr [ null, %14 ], [ null, %45 ], [ %63, %62 ], [ null, %19 ]
  ret ptr %67
}

declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1170, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetPackageName() local_unnamed_addr #0 {
  %1 = tail call ptr @GetMagickPackageName() #8
  ret ptr %1
}

declare ptr @GetMagickPackageName() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickGetPage(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1239, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %5
  %14 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 32) #8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = call i32 @ParseAbsoluteGeometry(ptr noundef %18, ptr noundef nonnull %6) #8
  %20 = load i64, ptr %6, align 8, !tbaa !76
  store i64 %20, ptr %1, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !77
  store i64 %22, ptr %2, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !78
  store i64 %24, ptr %3, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !79
  store i64 %26, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  ret i32 1
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @MagickGetPointsize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1277, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 22
  %12 = load double, ptr %11, align 8, !tbaa !80
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetQuantumDepth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetMagickQuantumDepth(ptr noundef %0) #8
  ret ptr %2
}

declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetQuantumRange(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetMagickQuantumRange(ptr noundef %0) #8
  ret ptr %2
}

declare ptr @GetMagickQuantumRange(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetReleaseDate() local_unnamed_addr #0 {
  %1 = tail call ptr @GetMagickReleaseDate() #8
  ret ptr %1
}

declare ptr @GetMagickReleaseDate() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickGetResolution(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1394, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  store double 7.200000e+01, ptr %1, align 8, !tbaa !81
  store double 7.200000e+01, ptr %2, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %18 = call i32 @ParseGeometry(ptr noundef nonnull %15, ptr noundef nonnull %4) #8
  %19 = load double, ptr %4, align 8, !tbaa !83
  store double %19, ptr %1, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !85
  store double %21, ptr %2, align 8, !tbaa !81
  %22 = and i32 %18, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load double, ptr %1, align 8, !tbaa !81
  store double %25, ptr %2, align 8, !tbaa !81
  br label %26

26:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  br label %27

27:                                               ; preds = %26, %11
  ret i32 1
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetResource(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResource(i32 noundef %0) #8
  ret i64 %2
}

declare i64 @GetMagickResource(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetResourceLimit(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef %0) #8
  ret i64 %2
}

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetSamplingFactors(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1508, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %2
  store i64 0, ptr %1, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %10, %38
  %17 = phi i64 [ %40, %38 ], [ 0, %10 ]
  %18 = phi ptr [ %41, %38 ], [ %14, %10 ]
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @__ctype_b_loc() #11
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  br label %24

24:                                               ; preds = %21, %34
  %25 = phi i8 [ %19, %21 ], [ %36, %34 ]
  %26 = phi ptr [ %18, %21 ], [ %35, %34 ]
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds i16, ptr %23, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !87
  %30 = and i16 %29, 8192
  %31 = icmp ne i16 %30, 0
  %32 = icmp eq i8 %25, 44
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds i8, ptr %26, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !53
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %24, !llvm.loop !88

38:                                               ; preds = %34, %24, %16
  %39 = phi ptr [ %18, %16 ], [ %35, %34 ], [ %26, %24 ]
  %40 = add nuw nsw i64 %17, 1
  %41 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %39, i32 noundef 44) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !89

43:                                               ; preds = %38
  %44 = add nuw i64 %17, 2
  %45 = tail call ptr @AcquireQuantumMemory(i64 noundef %44, i64 noundef 8) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #8
  call void @GetExceptionInfo(ptr noundef nonnull %3) #8
  %48 = load ptr, ptr %11, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct._ImageInfo, ptr %48, i64 0, i32 51
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1525, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %49) #8
  call void @CatchException(ptr noundef nonnull %3) #8
  %51 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #8
  call void @MagickWandTerminus() #8
  call void @_exit(i32 noundef 1) #13
  unreachable

52:                                               ; preds = %43
  %53 = load ptr, ptr %11, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct._ImageInfo, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %52, %79
  %58 = phi i64 [ %83, %79 ], [ 0, %52 ]
  %59 = phi ptr [ %84, %79 ], [ %55, %52 ]
  %60 = load i8, ptr %59, align 1, !tbaa !53
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @__ctype_b_loc() #11
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  br label %65

65:                                               ; preds = %62, %75
  %66 = phi i8 [ %60, %62 ], [ %77, %75 ]
  %67 = phi ptr [ %59, %62 ], [ %76, %75 ]
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds i16, ptr %64, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !87
  %71 = and i16 %70, 8192
  %72 = icmp ne i16 %71, 0
  %73 = icmp eq i8 %66, 44
  %74 = or i1 %73, %72
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = getelementptr inbounds i8, ptr %67, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !53
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %65, !llvm.loop !90

79:                                               ; preds = %75, %65, %57
  %80 = phi ptr [ %59, %57 ], [ %76, %75 ], [ %67, %65 ]
  %81 = tail call double @InterpretLocaleValue(ptr noundef nonnull %80, ptr noundef null) #8
  %82 = getelementptr inbounds double, ptr %45, i64 %58
  store double %81, ptr %82, align 8, !tbaa !81
  %83 = add nuw nsw i64 %58, 1
  %84 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %80, i32 noundef 44) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %57, !llvm.loop !91

86:                                               ; preds = %79, %52
  %87 = phi i64 [ 0, %52 ], [ %83, %79 ]
  store i64 %87, ptr %1, align 8, !tbaa !58
  br label %88

88:                                               ; preds = %10, %86
  %89 = phi ptr [ %45, %86 ], [ null, %10 ]
  ret ptr %89
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickGetSize(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1575, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 32) #8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = call i32 @ParseAbsoluteGeometry(ptr noundef %16, ptr noundef nonnull %4) #8
  %18 = load i64, ptr %4, align 8, !tbaa !76
  store i64 %18, ptr %1, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !77
  store i64 %20, ptr %2, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickGetSizeOffset(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1618, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 32) #8
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = call i32 @ParseAbsoluteGeometry(ptr noundef %15, ptr noundef nonnull %3) #8
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !78
  store i64 %18, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1652, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !93
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetVersion(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetMagickVersion(ptr noundef %0) #8
  ret ptr %2
}

declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickProfileImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1725, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1727, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #8
  br label %28

20:                                               ; preds = %11
  %21 = tail call i32 @ProfileImage(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = load ptr, ptr %12, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %25, ptr noundef nonnull %27) #8
  br label %28

28:                                               ; preds = %20, %23, %15
  %29 = phi i32 [ 0, %15 ], [ %21, %23 ], [ %21, %20 ]
  ret i32 %29
}

declare i32 @ProfileImage(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickRemoveImageProfile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1773, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1776, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %32

19:                                               ; preds = %10
  store i64 0, ptr %2, align 8, !tbaa !58
  %20 = tail call ptr @RemoveImageProfile(ptr noundef nonnull %12, ptr noundef %1) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %20) #8
  %24 = tail call ptr @AcquireQuantumMemory(i64 noundef %23, i64 noundef 1) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %20) #8
  %28 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %20) #8
  %29 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %24, ptr noundef %27, i64 noundef %28) #8
  %30 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %20) #8
  store i64 %30, ptr %2, align 8, !tbaa !58
  %31 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %20) #8
  br label %32

32:                                               ; preds = %22, %19, %26, %14
  %33 = phi ptr [ null, %14 ], [ %24, %26 ], [ null, %19 ], [ null, %22 ]
  ret ptr %33
}

declare ptr @RemoveImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetAntialias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1826, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 5
  store i32 %1, ptr %12, align 4, !tbaa !44
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetBackgroundColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1862, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 24
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %12) #8
  ret i32 1
}

declare void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetColorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1898, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 30
  store i32 %1, ptr %12, align 8, !tbaa !49
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetCompression(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1934, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  store i32 %1, ptr %11, align 8, !tbaa !50
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetCompressionQuality(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1970, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 16
  store i64 %1, ptr %12, align 8, !tbaa !51
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetDepth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2006, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 12
  store i64 %1, ptr %12, align 8, !tbaa !94
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetExtract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2044, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = tail call i64 @CopyMagickString(ptr noundef %15, ptr noundef nonnull %1, i64 noundef 4096) #8
  br label %17

17:                                               ; preds = %11, %9
  ret i32 1
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetFilename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2081, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 51
  %15 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef nonnull %1, i64 noundef 4096) #8
  br label %16

16:                                               ; preds = %11, %9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetFont(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2118, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #8
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %16, i64 0, i32 19
  %18 = tail call ptr @CloneString(ptr noundef nonnull %17, ptr noundef nonnull %1) #8
  br label %19

19:                                               ; preds = %2, %4, %14
  %20 = phi i32 [ 1, %14 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %20
}

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetFormat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2156, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load i8, ptr %1, align 1, !tbaa !53
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %16, i64 0, i32 48
  store i8 0, ptr %17, align 8, !tbaa !53
  br label %29

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = tail call ptr @GetMagickInfo(ptr noundef nonnull %1, ptr noundef %20) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8, !tbaa !42
  tail call void @ClearMagickException(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %26, i64 0, i32 48
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %27, ptr noundef nonnull %1, i64 noundef 4096) #8
  br label %29

29:                                               ; preds = %18, %23, %14
  %30 = phi i32 [ 1, %14 ], [ 1, %23 ], [ 0, %18 ]
  ret i32 %30
}

declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetGravity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2204, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = zext i32 %1 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %12) #8
  %14 = tail call i32 @SetImageOption(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %13) #8
  ret i32 %14
}

declare i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageArtifact(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2246, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2248, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @SetImageArtifact(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #8
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ %20, %22 ], [ %20, %19 ]
  ret i32 %28
}

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageProfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2299, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2301, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #8
  br label %31

20:                                               ; preds = %11
  %21 = tail call ptr @AcquireStringInfo(i64 noundef %3) #8
  tail call void @SetStringInfoDatum(ptr noundef %21, ptr noundef %2) #8
  %22 = load ptr, ptr %12, align 8, !tbaa !41
  %23 = tail call i32 @SetImageProfile(ptr noundef %22, ptr noundef %1, ptr noundef %21) #8
  %24 = tail call ptr @DestroyStringInfo(ptr noundef %21) #8
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = load ptr, ptr %12, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %28, ptr noundef nonnull %30) #8
  br label %31

31:                                               ; preds = %20, %26, %15
  %32 = phi i32 [ 0, %15 ], [ %23, %26 ], [ %23, %20 ]
  ret i32 %32
}

declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #1

declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SetImageProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2347, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2349, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #8
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #8
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ %20, %22 ], [ %20, %19 ]
  ret i32 %28
}

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetInterlaceScheme(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2388, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 13
  store i32 %1, ptr %12, align 8, !tbaa !72
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetInterpolateMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2427, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = zext i32 %1 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 33, i64 noundef %12) #8
  %14 = tail call i32 @SetImageOption(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef %13) #8
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetOption(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2467, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call i32 @SetImageOption(ptr noundef %12, ptr noundef %1, ptr noundef %2) #8
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetOrientation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2502, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 1
  store i32 %1, ptr %12, align 4, !tbaa !74
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetPage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2549, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %5
  %14 = uitofp i64 %1 to double
  %15 = uitofp i64 %2 to double
  %16 = sitofp i64 %3 to double
  %17 = sitofp i64 %4 to double
  %18 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %14, double noundef %15, double noundef %16, double noundef %17) #8
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %20, i64 0, i32 8
  %22 = call ptr @CloneString(ptr noundef nonnull %21, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  ret i32 1
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetPassphrase(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2587, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 37
  %13 = tail call ptr @CloneString(ptr noundef nonnull %12, ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetPointsize(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2623, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 22
  store double %1, ptr %12, align 8, !tbaa !80
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickSetProgressMonitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2674, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call ptr @SetImageInfoProgressMonitor(ptr noundef %12, ptr noundef %1, ptr noundef %2) #8
  ret ptr %13
}

declare ptr @SetImageInfoProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetResourceLimit(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SetMagickResourceLimit(i32 noundef %0, i64 noundef %1) #8
  ret i32 %3
}

declare i32 @SetMagickResourceLimit(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetResolution(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2749, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %1, double noundef %2) #8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 21
  %16 = call ptr @CloneString(ptr noundef nonnull %15, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetSamplingFactors(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2796, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #8
  %19 = load ptr, ptr %12, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 17
  store ptr %18, ptr %20, align 8, !tbaa !86
  br label %21

21:                                               ; preds = %17, %11
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %21
  %24 = add i64 %1, -1
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ 0, %23 ]
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !81
  %30 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.11, double noundef %29) #8
  %31 = load ptr, ptr %12, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct._ImageInfo, ptr %31, i64 0, i32 17
  %33 = call i32 @ConcatenateString(ptr noundef nonnull %32, ptr noundef nonnull %4) #8
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, %24
  br i1 %35, label %36, label %26, !llvm.loop !96

36:                                               ; preds = %26, %23
  %37 = phi i64 [ 0, %23 ], [ %34, %26 ]
  %38 = getelementptr inbounds double, ptr %2, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !81
  %40 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %39) #8
  %41 = load ptr, ptr %12, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %41, i64 0, i32 17
  %43 = call i32 @ConcatenateString(ptr noundef nonnull %42, ptr noundef nonnull %4) #8
  br label %44

44:                                               ; preds = %21, %36
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret i32 1
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetSize(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2852, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = uitofp i64 %1 to double
  %13 = uitofp i64 %2 to double
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.13, double noundef %12, double noundef %13) #8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %16, i64 0, i32 6
  %18 = call ptr @CloneString(ptr noundef nonnull %17, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetSizeOffset(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2899, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %4
  %13 = uitofp i64 %1 to double
  %14 = uitofp i64 %2 to double
  %15 = sitofp i64 %3 to double
  %16 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, double noundef %13, double noundef %14, double noundef %15) #8
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct._ImageInfo, ptr %18, i64 0, i32 6
  %20 = call ptr @CloneString(ptr noundef nonnull %19, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagickSetType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2940, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 31
  store i32 %1, ptr %12, align 4, !tbaa !93
  ret i32 1
}

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind allocsize(1,2) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

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
!34 = !{!35, !40, i64 4144}
!35 = !{!"_MagickWand", !36, i64 0, !37, i64 8, !39, i64 4104, !39, i64 4112, !39, i64 4120, !39, i64 4128, !40, i64 4136, !40, i64 4140, !40, i64 4144, !36, i64 4152}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!35, !39, i64 4128}
!42 = !{!35, !39, i64 4104}
!43 = !{!35, !39, i64 4112}
!44 = !{!45, !40, i64 20}
!45 = !{!"_ImageInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !46, i64 144, !46, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !40, i64 200, !40, i64 204, !40, i64 208, !36, i64 216, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 240, !40, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !36, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !40, i64 16712, !39, i64 16720, !36, i64 16728, !36, i64 16736, !47, i64 16744, !36, i64 16752, !40, i64 16760, !47, i64 16764, !39, i64 16776, !40, i64 16784}
!46 = !{!"double", !37, i64 0}
!47 = !{!"_PixelPacket", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6}
!48 = !{!"short", !37, i64 0}
!49 = !{!45, !40, i64 200}
!50 = !{!45, !40, i64 0}
!51 = !{!45, !36, i64 96}
!52 = !{!45, !39, i64 120}
!53 = !{!37, !37, i64 0}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !39, i64 216}
!60 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !46, i64 104, !61, i64 112, !40, i64 208, !39, i64 216, !40, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !36, i64 256, !46, i64 264, !46, i64 272, !63, i64 280, !63, i64 312, !63, i64 344, !46, i64 376, !46, i64 384, !46, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !64, i64 480, !65, i64 504, !39, i64 568, !39, i64 576, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !36, i64 12904, !36, i64 12912, !67, i64 12920, !40, i64 12976, !36, i64 12984, !39, i64 12992, !68, i64 13000, !68, i64 13032, !39, i64 13064, !36, i64 13072, !36, i64 13080, !39, i64 13088, !39, i64 13096, !39, i64 13104, !40, i64 13112, !40, i64 13116, !47, i64 13120, !39, i64 13128, !63, i64 13136, !39, i64 13168, !39, i64 13176, !40, i64 13184, !40, i64 13188, !69, i64 13192, !40, i64 13200, !36, i64 13208, !36, i64 13216, !40, i64 13224, !36, i64 13232}
!61 = !{!"_ChromaticityInfo", !62, i64 0, !62, i64 24, !62, i64 48, !62, i64 72}
!62 = !{!"_PrimaryInfo", !46, i64 0, !46, i64 8, !46, i64 16}
!63 = !{!"_RectangleInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!64 = !{!"_ErrorInfo", !46, i64 0, !46, i64 8, !46, i64 16}
!65 = !{!"_TimerInfo", !66, i64 0, !66, i64 24, !40, i64 48, !36, i64 56}
!66 = !{!"_Timer", !46, i64 0, !46, i64 8, !46, i64 16}
!67 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !39, i64 40, !36, i64 48}
!68 = !{!"_ProfileInfo", !39, i64 0, !36, i64 8, !39, i64 16, !36, i64 24}
!69 = !{!"long long", !37, i64 0}
!70 = distinct !{!70, !56, !57}
!71 = distinct !{!71, !56, !57}
!72 = !{!45, !40, i64 80}
!73 = distinct !{!73, !56, !57}
!74 = !{!45, !40, i64 4}
!75 = !{!45, !39, i64 40}
!76 = !{!63, !36, i64 0}
!77 = !{!63, !36, i64 8}
!78 = !{!63, !36, i64 16}
!79 = !{!63, !36, i64 24}
!80 = !{!45, !46, i64 144}
!81 = !{!46, !46, i64 0}
!82 = !{!45, !39, i64 136}
!83 = !{!84, !46, i64 0}
!84 = !{!"_GeometryInfo", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!85 = !{!84, !46, i64 8}
!86 = !{!45, !39, i64 104}
!87 = !{!48, !48, i64 0}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = distinct !{!91, !56, !57}
!92 = !{!45, !39, i64 24}
!93 = !{!45, !40, i64 204}
!94 = !{!45, !36, i64 72}
!95 = !{!45, !39, i64 32}
!96 = distinct !{!96, !56, !57}
